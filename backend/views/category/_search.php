<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var common\models\Category $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="category-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'id') ?>
    <?php echo $form->field($model, 'title') ?>
    <?php echo $form->field($model, 'text') ?>
    <?php echo $form->field($model, 'data') ?>
    <?php echo $form->field($model, 'enabled') ?>

    <div class="form-group">
        <?php echo Html::submitButton(Yii::t('backend', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton(Yii::t('backend', 'Reset'), ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
