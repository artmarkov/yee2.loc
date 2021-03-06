<?php

use yii\helpers\Url;
use yii\widgets\Pjax;
use yeesoft\grid\GridView;
use yeesoft\grid\GridQuickLinks;
use common\models\auditory\Auditory;
use common\models\auditory\AuditoryCat;
use common\models\auditory\AuditoryBuilding;
use yeesoft\helpers\Html;
use yeesoft\grid\GridPageSize;

/* @var $this yii\web\View */
/* @var $searchModel common\models\AuditorySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('yee/guide','Auditory');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="auditory-index">

    <div class="row">
        <div class="col-sm-12">
            <h3 class="lte-hide-title page-title"><?= Html::encode($this->title) ?></h3>
            <?= Html::a(Yii::t('yee', 'Add New'), ['/auditory/default/create'], ['class' => 'btn btn-sm btn-primary']) ?>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-6">
                    <?php
                    /* Uncomment this to activate GridQuickLinks */
                    echo GridQuickLinks::widget([
                        'model' => Auditory::className(),
                        'searchModel' => $searchModel,
                    ])
                    ?>
                </div>

                <div class="col-sm-6 text-right">
                    <?= GridPageSize::widget(['pjaxId' => 'auditory-grid-pjax']) ?>
                </div>
            </div>

            <?php
            Pjax::begin([
                'id' => 'auditory-grid-pjax',
            ])
            ?>

            <?=
            GridView::widget([
                'id' => 'auditory-grid',
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'bulkActionOptions' => [
                    'gridId' => 'auditory-grid',
                    'actions' => [Url::to(['bulk-delete']) => Yii::t('yee','Delete')] //Configure here you bulk actions
                ],
                'columns' => [
                    ['class' => 'yeesoft\grid\CheckboxColumn', 'options' => ['style' => 'width:10px']],
                    ['class' => 'yii\grid\SerialColumn', 'options' => ['style' => 'width:20px'],],
                    [
                        'class' => 'yeesoft\grid\columns\TitleActionColumn',
                        'options' => ['style' => 'width:300px'],
                        'attribute' => 'name',
                        'controller' => '/auditory/default',
                        'title' => function (Auditory $model) {
                            return Html::a($model->name, ['update', 'id' => $model->id], ['data-pjax' => 0]);
                        },
                        'buttonsTemplate' => '{update} {delete}',
                    ],

                    //'id',
                    'num',
                    //'catName',
                    //'buildingName',
                    [
                        'attribute' => 'cat_id',
                        'value' => 'catName',
                        'label' => Yii::t('yee/guide', 'Name Auditory Category'),
                        'filter' => AuditoryCat::getAuditoryCatList(),
                    ],
                    [
                        'attribute' => 'building_id',
                        'value' => 'buildingName',
                        'label' => Yii::t('yee/guide', 'Name Building'),
                        'filter' => AuditoryBuilding::getAuditoryBuildingList(),
                    ],
                    [
                        'class' => 'yeesoft\grid\columns\StatusColumn',
                        'attribute' => 'study_flag',
                        'options' => ['style' => 'width:60px']
                    ],
                    // 'study_flag',
                    // 'name',
                    // 'floor',
                    // 'area',
                    // 'capacity',
                    // 'description',
                    // 'order',

                ],
            ]);
            ?>

            <?php Pjax::end() ?>
        </div>
    </div>
</div>


