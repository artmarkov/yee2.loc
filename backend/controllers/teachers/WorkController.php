<?php

namespace backend\controllers\teachers;

use Yii;
use backend\controllers\DefaultController;

/**
 * WorkController implements the CRUD actions for common\models\teachers\Work model.
 */
class WorkController extends DefaultController 
{
    public $modelClass       = 'common\models\teachers\Work';
    public $modelSearchClass = '';

    protected function getRedirectPage($action, $model = null)
    {
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
}