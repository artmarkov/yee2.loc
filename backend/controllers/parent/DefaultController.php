<?php

namespace backend\controllers\parent;

use common\models\user\UserCommon;
use Yii;
use common\models\user\User;
use yii\data\ActiveDataProvider;
Use yii\web\NotFoundHttpException;

/**
 * DefaultController implements the CRUD actions for common\models\user\UserCommon model.
 */
class DefaultController extends \backend\controllers\DefaultController {

    public $modelClass = 'common\models\user\UserCommon';
    public $modelSearchClass = '';

    protected function getRedirectPage($action, $model = null) {
        switch ($action) {
            case 'update':
                return ['update', 'id' => $model->id];
                break;
            case 'create':
                return ['update', 'id' => $model->id];
                break;
            default:
                return parent::getRedirectPage($action, $model);
        }
    }

    /**
     * Lists all UserCommon models.
     * @return mixed
     */
    public function actionIndex() {
        $dataProvider = new ActiveDataProvider([
            'query' => $model = \common\models\user\UserCommon::find()->andWhere(['user_category' => User::USER_CATEGORY_PARENT]),
        ]);

        return $this->render('index', [
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Creates a new UserCommon model.
     * Запускается из формы редактирования model Student из Модального окна
     * @return mixed
     */
    public function actionAjaxCreate() {

       // $user_id = Yii::$app->request->post('user_id');
        //$user_slave_id = Yii::$app->request->post('user_slave_id');
        
        $model = UserCommon::findOne(1);
         if (empty($model)) return false;
         
        if($model->birth_timestamp != NULL) $model->getTimestampToDate("d-m-Y");
     // echo '<pre>' . print_r($model, true) . '</pre>';
       //$model = new $this->modelClass;

        if ($model->load(Yii::$app->request->post()) && Yii::$app->request->isAjax) {
            \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

            return \yii\widgets\ActiveForm::validate($model);
        } elseif ($model->load(Yii::$app->request->post())) {

            $model->user_category = User::USER_CATEGORY_PARENT;
            $model->status = User::STATUS_INACTIVE;
            if($model->birth_date != NULL)   $model->getDateToTimestamp("-");

            if ($model->save()) {
                //return $this->goBack();
                return $this->redirect(Yii::$app->request->referrer);
            }
        } else {
            
            throw new HttpException(404, 'Page not found');
        }
    }

    public function actionAddFamily()
    {
        $id = Yii::$app->request->get('id');
        $user_slave_id = Yii::$app->request->get('user_slave_id');
        
        $model = UserCommon::findOne($user_slave_id);
        //echo '<pre>' . print_r($model, true) . '</pre>';
        if (empty($model)) return false;

        if (!Yii::$app->request->isAjax) {
            return $this->redirect(Yii::$app->request->referrer);
        }
        $model->user_id = $id;
        $model->user_slave_id = $user_slave_id;
        if($model->birth_timestamp != NULL) $model->getTimestampToDate("d-m-Y");
        $this->layout = false;
        return $this->renderAjax('parents-modal', compact('model'));
     // echo '<pre>' . print_r($model, true) . '</pre>';
    }

}
