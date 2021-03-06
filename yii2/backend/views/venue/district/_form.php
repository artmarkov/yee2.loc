<?php

use common\widgets\ActiveForm;
use common\models\venue\VenueDistrict;
use yeesoft\helpers\Html;
use common\models\venue\VenueSity;

/* @var $this yii\web\View */
/* @var $model common\models\venue\VenueDistrict */
/* @var $form yeesoft\widgets\ActiveForm */
?>

<div class="venue-district-form">

    <?php 
    $form = ActiveForm::begin([
            'id' => 'venue-district-form',
            'validateOnBlur' => false,
        ])
    ?>

    <div class="row">
        <div class="col-md-9">

            <div class="panel panel-default">
                <div class="panel-body">


                    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>

                </div>

            </div>
        </div>

        <div class="col-md-3">

            <div class="panel panel-default">
                <div class="panel-body">
<!--                    <div class="record-info">-->
                        <div class="form-group clearfix">
                            <label class="control-label" style="float: left; padding-right: 5px;"><?=  $model->attributeLabels()['id'] ?>: </label>
                            <span><?=  $model->id ?></span>
                        </div>

                    <?= $form->field($model, 'sity_id')
                        ->dropDownList(VenueSity::getVenueSityList(), [
                            'prompt' => Yii::t('yee/guide', 'Select Sity...')
                        ])->label(Yii::t('yee/guide', 'Name Sity'));
                    ?>

                        <div class="form-group">
                            <?php  if ($model->isNewRecord): ?>
                                <?= Html::submitButton(Yii::t('yee', 'Create'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Cancel'), ['/venue/district/index'], ['class' => 'btn btn-default']) ?>
                            <?php  else: ?>
                                <?= Html::submitButton(Yii::t('yee', 'Save'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Delete'),
                                    ['/venue/district/delete', 'id' => $model->id], [
                                    'class' => 'btn btn-default',
                                    'data' => [
                                        'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                        'method' => 'post',
                                    ],
                                ]) ?>
                                <?= Html::a(Yii::t('yee', 'Add New'), ['/venue/district/create'],
                                    ['class' => 'btn btn-primary pull-right'])
                                ?>

                            <?php endif; ?>
                        </div>
<!--                    </div>-->
                </div>
            </div>

        </div>
    </div>

    <?php  ActiveForm::end(); ?>

</div>
