<?php

use yeesoft\widgets\ActiveForm;
use common\models\calendar\EventCategory;
use yeesoft\helpers\Html;
use kartik\color\ColorInput;

/* @var $this yii\web\View */
/* @var $model common\models\calendar\EventCategory */
/* @var $form yeesoft\widgets\ActiveForm */
?>

<div class="event-category-form">

    <?php 
    $form = ActiveForm::begin([
            'id' => 'event-category-form',
            'validateOnBlur' => false,
        ])
    ?>

    <div class="row">
        <div class="col-md-9">

            <div class="panel panel-default">
                <div class="panel-body">
                    
                    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'color')->widget(ColorInput::classname(), [
                        'options' => ['placeholder' => 'Select color ...'],
                        'pluginOptions' => ['preferredFormat' => 'rgb']
]); ?>

                    <?= $form->field($model, 'text_color')->widget(ColorInput::classname(), [
                        'options' => ['placeholder' => 'Select color ...'],
                        'pluginOptions' => ['preferredFormat' => 'rgb']
]); ?>

                    <?= $form->field($model, 'border_color')->widget(ColorInput::classname(), [
                        'options' => ['placeholder' => 'Select color ...'],
                        'pluginOptions' => ['preferredFormat' => 'rgb']
]); ?>

                    <?= $form->field($model, 'rendering')->textInput() ?>

                    <?= $form->field($model, 'description')->textInput(['maxlength' => true]) ?>

                </div>

            </div>
        </div>

        <div class="col-md-3">

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="record-info">
                        <div class="form-group clearfix">
                            <label class="control-label" style="float: left; padding-right: 5px;"><?=  $model->attributeLabels()['id'] ?>: </label>
                            <span><?=  $model->id ?></span>
                        </div>

                        <div class="form-group">
                            <?php  if ($model->isNewRecord): ?>
                                <?= Html::submitButton(Yii::t('yee', 'Create'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Cancel'), ['/calendar/event-category/index'], ['class' => 'btn btn-default']) ?>
                            <?php  else: ?>
                                <?= Html::submitButton(Yii::t('yee', 'Save'), ['class' => 'btn btn-primary']) ?>
                                <?= Html::a(Yii::t('yee', 'Delete'),
                                    ['/calendar/event-category/delete', 'id' => $model->id], [
                                    'class' => 'btn btn-default',
                                    'data' => [
                                        'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                        'method' => 'post',
                                    ],
                                ]) ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <?php  ActiveForm::end(); ?>

</div>
