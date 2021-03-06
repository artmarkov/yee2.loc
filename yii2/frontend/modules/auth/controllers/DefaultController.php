<?php

namespace frontend\modules\auth\controllers;


use yeesoft\auth\assets\AvatarAsset;
use yeesoft\auth\AuthModule;
use yeesoft\auth\helpers\AvatarHelper;
use yeesoft\auth\models\Auth;
use yeesoft\auth\models\forms\ConfirmEmailForm;
use frontend\modules\auth\models\forms\FindingForm;
use frontend\modules\auth\models\forms\ProfileForm;
use frontend\modules\auth\models\forms\ResetPasswordForm;
use frontend\modules\auth\models\forms\UpdatePasswordForm;
use frontend\modules\auth\models\forms\SignupForm;
use yeesoft\auth\models\forms\LoginForm;
use yeesoft\auth\models\forms\SignupFindForm;
use yeesoft\auth\models\forms\SetEmailForm;
use yeesoft\auth\models\forms\SetPasswordForm;
use yeesoft\auth\models\forms\SetUsernameForm;
use common\models\user\User;
use yeesoft\components\AuthEvent;
use common\widgets\ActiveForm;
use Yii;
use yii\base\DynamicModel;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\web\ForbiddenHttpException;
use yii\web\NotFoundHttpException;
use yii\web\Response;
use yii\web\UploadedFile;


class DefaultController extends \yeesoft\controllers\BaseController
{
    /**
     * @var array
     */
    public $freeAccessActions = ['login', 'logout', 'captcha', 'oauth', 'signup','finding',
        'confirm-email', 'confirm-registration-email', 'confirm-email-receive',
        'reset-password', 'reset-password-request', 'update-password', 'set-email',
        'set-username', 'set-password', 'profile', 'upload-avatar', 'remove-avatar',
        'unlink-oauth'];

    /**
     * @return array
     */
    public function actions()
    {
        return [
            'captcha' => Yii::$app->yee->captchaAction,
            'oauth' => [
                'class' => 'yeesoft\auth\AuthAction',
                'successCallback' => [$this, 'onAuthSuccess'],
            ],
        ];
    }

    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(), [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                    'upload-avatar' => ['post'],
                    'remove-avatar' => ['post'],
                ],
            ],
        ]);
    }

    public function onAuthSuccess($client)
    {
        $source = $client->getId();
        $userAttributes = $client->getUserAttributes();

        if(!isset($this->module->attributeParsers[$source])){
            throw \yii\base\InvalidConfigException("There are no settings for '{$source}' in the AuthModule::attributeParsers.");
        }
             
        $attributes = $this->module->attributeParsers[$source]($userAttributes);
        Yii::$app->session->set(AuthModule::PARAMS_SESSION_ID, $attributes);

        /* @var $auth Auth */
        $auth = Auth::find()->where([
            'source' => $attributes['source'],
            'source_id' => $attributes['source_id'],
        ])->one();

        if (Yii::$app->user->isGuest) {
            if ($auth) { // login
                $user = $auth->user;
                Yii::$app->user->login($user);
            } else { // signup
                if (isset($attributes['email']) && $attributes['email'] && User::find()->where(['email' => $attributes['email']])->exists()) {
                    Yii::$app->getSession()->setFlash('error', [
                        Yii::t('yee/auth', "User with the same email as in {client} account already exists but isn't linked to it. Login using email first to link it.", ['client' => $client->getTitle()]),
                    ]);
                    Yii::$app->getResponse()->redirect(['auth/default/login']);
                } else {
                    return $this->createUser($attributes);
                }
            }
        } else { // user already logged in
            if (!$auth) { // add auth provider
                $auth = new Auth([
                    'user_id' => Yii::$app->user->id,
                    'source' => $attributes['source'],
                    'source_id' => $attributes['source_id'],
                ]);
                $auth->save();
            }
        }
    }

    /**
     * @return string|\yii\web\Response
     */
    public function actionSetEmail()
    {
        $attributes = Yii::$app->session->get(AuthModule::PARAMS_SESSION_ID);

        if (!Yii::$app->user->isGuest || !$attributes || !is_array($attributes)) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $model = new SetEmailForm();

        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }

        if ($model->load(Yii::$app->request->post()) AND $model->validate()) {
            $attributes['email'] = $model->email;
            Yii::$app->session->set(AuthModule::PARAMS_SESSION_ID, $attributes);
            return $this->createUser($attributes);
        }

        return $this->renderIsAjax('set-email', compact('model'));
    }

    /**
     * @return string|\yii\web\Response
     */
    public function actionSetUsername()
    {
        $attributes = Yii::$app->session->get(AuthModule::PARAMS_SESSION_ID);

        if (!Yii::$app->user->isGuest || !$attributes || !is_array($attributes)) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $model = new SetUsernameForm();

        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }

        if ($model->load(Yii::$app->request->post()) AND $model->validate()) {
            $attributes['username'] = $model->username;
            Yii::$app->session->set(AuthModule::PARAMS_SESSION_ID, $attributes);
            return $this->createUser($attributes);
        }

        return $this->renderIsAjax('set-username', compact('model'));
    }

    /**
     * @return string|\yii\web\Response
     */
    public function actionSetPassword()
    {
        $attributes = Yii::$app->session->get(AuthModule::PARAMS_SESSION_ID);

        if (!Yii::$app->user->isGuest || !$attributes || !is_array($attributes)) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $model = new SetPasswordForm();

        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }

        if ($model->load(Yii::$app->request->post()) AND $model->validate()) {
            $attributes['password'] = $model->password;
            Yii::$app->session->set(AuthModule::PARAMS_SESSION_ID, $attributes);
            return $this->createUser($attributes);
        }

        return $this->renderIsAjax('set-password', compact('model'));
    }

    protected function createUser($attributes)
    {
        $auth = [
            'source' => (string) $attributes['source'],
            'source_id' => (string) $attributes['source_id'],
        ];
        
        unset($attributes['source']);
        unset($attributes['source_id']);
        
        $attributes['repeat_password'] = isset($attributes['password']) ? $attributes['password'] : NULL;
        
        $user = new User($attributes);

        $user->setScenario(User::SCENARIO_NEW_USER);
        $user->generateAuthKey();
        //$user->generatePasswordResetToken();

        $transaction = $user->getDb()->beginTransaction();

        if ($user->save()) {

            $auth = new Auth([
                'user_id' => $user->id,
                'source' => $auth['source'],
                'source_id' => $auth['source_id'],
            ]);

            if ($auth->save()) {
                $transaction->commit();
                Yii::$app->user->login($user);
            } else {
                Yii::$app->session->setFlash('error', 'Error 901: ' . Yii::t('yee/auth', "Authentication error occurred."));
                return Yii::$app->response->redirect(Url::to(['/auth/default/login']));
            }
        } else {

            $errors = $user->getErrors();
            $fields = ['username', 'email', 'password'];

            foreach ($fields as $field) {
                if (isset($errors[$field])) {
                    Yii::$app->session->setFlash('error', $user->getFirstError($field));
                    return Yii::$app->response->redirect(Url::to(['/auth/default/set-' . $field]));
                }
            }

            Yii::$app->session->setFlash('error', 'Error 902: ' . Yii::t('yee/auth', "Authentication error occurred."));
            return Yii::$app->response->redirect(Url::to(['/auth/default/login']));
        }

        Yii::$app->session->remove(AuthModule::PARAMS_SESSION_ID);
        return Yii::$app->response->redirect(Url::to(['/']));
    }

    /**
     * Login form
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $model = new LoginForm();

        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }

        if ($model->load(Yii::$app->request->post()) AND $model->login()) {
            return $this->goBack();
        }

        return $this->renderIsAjax('login', compact('model'));
    }

    /**
     * Logout and redirect to home page
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->redirect(Yii::$app->homeUrl);
    }

  
    /**
     * Finding page before registration
     *
     * @return string
     */

    public function actionFinding()
    {
        if (!Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yee', 'Page not found.'));
        }
        $model = new FindingForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $d_in = explode("-", $model->birth_date);
            $model->birth_timestamp = mktime(0, 0, 0, $d_in[1], $d_in[0], $d_in[2]);
            $user = FindingForm::findByFio(
                $model->last_name,
                $model->first_name,
                $model->middle_name,
                $model->birth_timestamp,
                User::STATUS_INACTIVE
            );
            if ($user) {
                return $this->redirect(['signup', 'auth_key' => $user->auth_key]);
            } else {
                Yii::$app->session->setFlash('error', Yii::t('yee/auth', "User not found or blocked in the system."));
            }
        }
        return $this->render('finding', compact('model'));
    }

    /**
     * Signup page after finding user params
     *
     * @return string
     */

    public function actionSignup($auth_key)
    {
        if (!Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yee', 'Page not found.'));
        }
        $user = User::findByAuthKey($auth_key);
        if (!$user) {
            Yii::$app->session->setFlash('error', Yii::t('yee/auth', "Token not found. It may be expired"));
            return $this->goHome();
        }
        $model = new SignupForm();

        if (empty($user->username)) {
            $username = FindingForm::generateUsername($user->last_name, $user->first_name, $user->middle_name);
        } else {
            $username = $user->username;
        }
        $model->setAttributes(
            [
                'username' => $username,
                'id' => $user->id,
            ]
        );
        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return $model->validate();
        }

        if ($model->load(Yii::$app->request->post()) AND $model->validate()) {
            // Trigger event "before registration" and checks if it's valid
            if ($this->triggerModuleEvent(AuthEvent::BEFORE_REGISTRATION, ['model' => $model])) {

                $user = $model->signup(false,$model);

                // Trigger event "after registration" and checks if it's valid
                if ($user && $this->triggerModuleEvent(AuthEvent::AFTER_REGISTRATION, ['model' => $model, 'user' => $user])) {

                    if (Yii::$app->yee->emailConfirmationRequired) {
                        Yii::$app->session->setFlash('info', Yii::t('yee/auth', 'Check your e-mail {email} for instructions to activate account', ['email' => '<b>' . $user->email . '</b>']));
                       //return $this->renderIsAjax('signup-confirmation', compact('user'));
                    } else {
                        $user->assignRoles(Yii::$app->yee->defaultRoles);

                        Yii::$app->user->login($user);

                        return $this->redirect(Yii::$app->user->returnUrl);
                    }
                }
            }
        }

        return $this->renderIsAjax('signup', compact('model'));
    }

    /**
     * Receive token after registration, find user by it and confirm email
     *
     * @param string $token
     *
     * @throws \yii\web\NotFoundHttpException
     * @return string|\yii\web\Response
     */
    public function actionConfirmRegistrationEmail($token)
    {
        if (Yii::$app->yee->emailConfirmationRequired) {

            $model = new SignupForm();
            $user = $model->checkConfirmationToken($token);

            if ($user) {
                return $this->renderIsAjax('confirm-email-success', compact('user'));
            }

            throw new NotFoundHttpException(Yii::t('yee/auth', 'Token not found. It may be expired'));
        }
    }

    /**
     * Change your own password
     *
     * @throws \yii\web\ForbiddenHttpException
     * @return string|\yii\web\Response
     */
    public function actionUpdatePassword()
    {
        if (Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $user = User::getCurrentUser();

        if ($user->status != User::STATUS_ACTIVE) {
            throw new ForbiddenHttpException();
        }

        $model = new UpdatePasswordForm(compact('user'));

        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }

        if ($model->load(Yii::$app->request->post()) AND $model->updatePassword(false)) {
            Yii::$app->user->logout();
            return $this->renderIsAjax('update-password-success');
        }

        return $this->renderIsAjax('update-password', compact('model'));
    }

    /**
     * Action to reset password
     *
     * @return string|\yii\web\Response
     */
    public function actionResetPassword()
    {
        if (!Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $model = new ResetPasswordForm();

        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return $model->validate();
        }

        if ($model->load(Yii::$app->request->post()) AND $model->validate()) {
            if ($this->triggerModuleEvent(AuthEvent::BEFORE_PASSWORD_RECOVERY_REQUEST, ['model' => $model])) {
                if ($model->sendEmail(false)) {
                    if ($this->triggerModuleEvent(AuthEvent::AFTER_PASSWORD_RECOVERY_REQUEST, ['model' => $model])) {
                        return $this->renderIsAjax('reset-password-success');
                    }
                } else {
                    Yii::$app->session->setFlash('error', Yii::t('yee/auth', "Unable to send message for email provided"));
                }
            }
        }

        return $this->renderIsAjax('reset-password', compact('model'));
    }

    /**
     * Receive token, find user by it and show form to change password
     *
     * @param string $token
     *
     * @throws \yii\web\NotFoundHttpException
     * @return string|\yii\web\Response
     */
    public function actionResetPasswordRequest($token)
    {
        if (!Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $user = User::findByConfirmationToken($token);

        if (!$user) {
            throw new NotFoundHttpException(Yii::t('yee/auth', 'Token not found. It may be expired. Try reset password once more'));
        }

        $model = new UpdatePasswordForm([
            'scenario' => 'restoreViaEmail',
            'user' => $user,
        ]);

        if ($model->load(Yii::$app->request->post()) AND $model->validate()) {
            if ($this->triggerModuleEvent(AuthEvent::BEFORE_PASSWORD_RECOVERY_COMPLETE, ['model' => $model])) {
                $model->updatePassword(false);
                if ($this->triggerModuleEvent(AuthEvent::AFTER_PASSWORD_RECOVERY_COMPLETE, ['model' => $model])) {
                    return $this->renderIsAjax('update-password-success');
                }
            }
        }

        return $this->renderIsAjax('update-password', compact('model'));
    }

    /**
     * @return string|\yii\web\Response
     */
    public function actionConfirmEmail()
    {
        if (Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $user = User::getCurrentUser();

        if ($user->email_confirmed == 1) {
            return $this->renderIsAjax('confirmEmailSuccess', compact('user'));
        }

        $model = new ConfirmEmailForm([
            'email' => $user->email,
            'user' => $user,
        ]);

        if (Yii::$app->request->isAjax AND $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }

        if ($model->load(Yii::$app->request->post()) AND $model->validate()) {
            if ($this->triggerModuleEvent(AuthEvent::BEFORE_EMAIL_CONFIRMATION_REQUEST, ['model' => $model])) {
                if ($model->sendEmail(false)) {
                    if ($this->triggerModuleEvent(AuthEvent::AFTER_EMAIL_CONFIRMATION_REQUEST, ['model' => $model])) {
                        return $this->refresh();
                    }
                } else {
                    Yii::$app->session->setFlash('error', Yii::t('yee/auth', "Unable to send message for email provided"));
                }
            }
        }

        return $this->renderIsAjax('confirm-email', compact('model'));
    }

    /**
     * Receive token, find user by it and confirm email
     *
     * @param string $token
     *
     * @throws \yii\web\NotFoundHttpException
     * @return string|\yii\web\Response
     */
    public function actionConfirmEmailReceive($token)
    {
        $user = User::findByConfirmationToken($token);

        if (!$user) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $user->email_confirmed = 1;
        $user->removeConfirmationToken();
        $user->save();

        return $this->renderIsAjax('confirm-email-success', compact('user'));
    }

    /**
     * Universal method for triggering events like "before registration", "after registration" and so on
     *
     * @param string $eventName
     * @param array $data
     *
     * @return bool
     */
    protected function triggerModuleEvent($eventName, $data = [])
    {
        $event = new AuthEvent($data);

        Yii::$app->yee->trigger($eventName, $event);

        return $event->isValid;
    }

    /**
     * @return string|\yii\web\Response
     */
    public function actionProfile()
    {
        if ($this->module->profileLayout) {
            $this->layout = $this->module->profileLayout;
        }

        if (Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $model = ProfileForm::findIdentity(Yii::$app->user->id);

        if ($model->load(Yii::$app->request->post())) {
            $model->save();
        }

        return $this->renderIsAjax('profile', compact('model'));
    }

    public function actionUploadAvatar()
    {
        if (Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        Yii::$app->response->format = Response::FORMAT_JSON;
        $model = new DynamicModel(['image']);
        $model->addRule('image', 'file', ['skipOnEmpty' => false, 'extensions' => 'png, jpg']);

        if (Yii::$app->request->isPost) {
            $model->image = UploadedFile::getInstanceByName('image');

            if ($model->validate()) {
                try {
                    return AvatarHelper::saveAvatar($model->image);
                } catch (Exception $exc) {
                    Yii::$app->response->statusCode = 400;
                    return Yii::t('yee', 'An unknown error occurred.');
                }
            } else {
                $errors = $model->getErrors();
                Yii::$app->response->statusCode = 400;
                return $model->getFirstError(key($errors));
            }
        }

        return;
    }

    public function actionRemoveAvatar()
    {
        if (Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        Yii::$app->response->format = Response::FORMAT_JSON;

        try {
            Yii::$app->user->identity->removeAvatar();
            AvatarAsset::register($this->view);
            return AvatarAsset::getDefaultAvatar('large');
        } catch (Exception $exc) {
            Yii::$app->response->statusCode = 400;
            return 'Error occured!';
        }

        return;
    }

    public function actionUnlinkOauth($redirectUrl = null)
    {
        if (Yii::$app->user->isGuest) {
            throw new NotFoundHttpException(Yii::t('yii', 'Page not found.'));
        }

        $client = Yii::$app->getRequest()->get('authclient');
        if (!Auth::unlinkClient($client)) {
            Yii::$app->session->addFlash('error', 'Error cant unlink');
        }

        if ($redirectUrl === null) {
            $redirectUrl = ['/auth/default/profile'];
        }

        return $this->redirect($redirectUrl);
    }
}