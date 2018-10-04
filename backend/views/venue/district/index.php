<?php

use yii\helpers\Url;
use yii\widgets\Pjax;
use yeesoft\grid\GridView;
use yeesoft\grid\GridQuickLinks;
use common\models\venue\VenueDistrict;
use yeesoft\helpers\Html;
use yeesoft\grid\GridPageSize;

/* @var $this yii\web\View */
/* @var $searchModel common\models\venue\search\VenueDistrictSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Venue Districts';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="venue-district-index">

    <div class="row">
        <div class="col-sm-12">
            <h3 class="lte-hide-title page-title"><?=  Html::encode($this->title) ?></h3>
            <?= Html::a(Yii::t('yee', 'Add New'), ['/venue/district/create'], ['class' => 'btn btn-sm btn-primary']) ?>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-body">

            <div class="row">
                <div class="col-sm-6">
                    <?php 
                    /* Uncomment this to activate GridQuickLinks */
                    /* echo GridQuickLinks::widget([
                        'model' => VenueDistrict::className(),
                        'searchModel' => $searchModel,
                    ])*/
                    ?>
                </div>

                <div class="col-sm-6 text-right">
                    <?=  GridPageSize::widget(['pjaxId' => 'venue-district-grid-pjax']) ?>
                </div>
            </div>

            <?php 
            Pjax::begin([
                'id' => 'venue-district-grid-pjax',
            ])
            ?>

            <?= 
            GridView::widget([
                'id' => 'venue-district-grid',
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'bulkActionOptions' => [
                    'gridId' => 'venue-district-grid',
                    'actions' => [ Url::to(['bulk-delete']) => 'Delete'] //Configure here you bulk actions
                ],
                'columns' => [
                    ['class' => 'yeesoft\grid\CheckboxColumn', 'options' => ['style' => 'width:10px']],
                    [
                        'class' => 'yeesoft\grid\columns\TitleActionColumn',
                        'controller' => '/venue/district',
                        'title' => function(VenueDistrict $model) {
                            return Html::a($model->id, ['update', 'id' => $model->id], ['data-pjax' => 0]);
                        },
                    ],

            'id',
            'sity_id',
            'name',
            'slug',

                ],
            ]);
            ?>

            <?php Pjax::end() ?>
        </div>
    </div>
</div>


