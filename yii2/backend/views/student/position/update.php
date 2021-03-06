<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\student\StudentPosition */

$this->title = Yii::t('yee','Update'). ' : ' . ' ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/student','Students'), 'url' => ['student/default/index']];
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/student','Name Position'), 'url' => ['index']];
$this->params['breadcrumbs'][] = Yii::t('yee','Update');
?>
<div class="student-position-update">
    <h3 class="lte-hide-title"><?= Html::encode($this->title) ?></h3>
    <?= $this->render('_form', compact('model')) ?>
</div>