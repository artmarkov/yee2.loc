<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\teachers\BonusItem */

$this->title = Yii::t('yee','Create');
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/teachers','Teachers'), 'url' => ['teachers/default/index']];
$this->params['breadcrumbs'][] = ['label' => Yii::t('yee/teachers','Teachers Bonus'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="bonus-item-create">
    <h3 class="lte-hide-title"><?=  Html::encode($this->title) ?></h3>
    <?=  $this->render('_form', compact('model')) ?>
</div>