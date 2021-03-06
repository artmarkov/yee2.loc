<?php

return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'bootstrap' => ['comments', 'yee', 'log'],
    'language' => 'ru',
    'sourceLanguage' => 'en-US',
    'name' => 'dshi-mitino.ru',
    'components' => [
        'yee' => [
            'class' => 'common\components\Yee',
        ],
        'settings' => [
            'class' => 'yeesoft\components\Settings'
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'class' => 'yeesoft\components\User',
            'on afterLogin' => function ($event) {
                \yeesoft\models\UserVisitLog::newVisitor($event->identity->id);
            }
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning', 'info'],
                    'except' => ['my_category'], //категория логов исключаем
                    'maxLogFiles' => 10
                ],
                [
                    'class' => 'yii\log\DbTarget' // пример в index SiteController
                    /* 'prefix' => function ($message) { // делаем свой префикс если нужно
                      $user = Yii::$app->has('user', true) ? Yii::$app->get('user') : null;
                      $userID = $user ? $user->getId(false) : '-';
                      return "[$userID]";
                      },*/,
                    'categories' => ['my_category'], //категория лого включенав
                    'levels' => ['error', 'warning', 'info'],
                    'logVars' => [] //не добавлять в лог глобальные переменные ($_SERVER, $_SESSION...),
                ],
            ],
        ],
        'reCaptcha' => [
            'name' => 'reCaptcha',
            'class' => 'himiklab\yii2\recaptcha\ReCaptcha',
            'siteKey' => '6Ley33cUAAAAACrTils0Do41ydF4t3Jwf0Itdpww',
            'secret' => '6Ley33cUAAAAAIUnnCdK8zMl-TKgj5mfw1niWgIZ',
        ],
    ],
    'modules' => [
        'gridview' =>  [
             'class' => '\kartik\grid\Module'
             // enter optional module parameters below - only if you need to  
             // use your own export download action or custom translation 
             // message source
             // 'downloadAction' => 'gridview/export/download',
             // 'i18n' => []
         ],
        'comments' => [
            'class' => 'yeesoft\comments\Comments',
            'userModel' => 'yeesoft\models\User',
            'userAvatar' => function ($user_id) {
                $user = yeesoft\models\User::findIdentity((int)$user_id);
                if ($user instanceof yeesoft\models\User) {
                    return $user->getAvatar();
                }
                return false;
            }
        ],
        'gii' => [
            'class' => 'yii\gii\Module',
            'allowedIPs' => ['*'],
            'generators' => [
                'yee-crud' => [
                    'class' => 'yeesoft\generator\crud\Generator',
                    'templates' => [
                        'default' => '@vendor/yeesoft/yii2-yee-generator/crud/yee-admin',
                    ]
                ],
            ],
        ],
    ],
];
