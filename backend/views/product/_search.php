<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var common\models\Product $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="product-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?php echo $form->field($model, 'id') ?>
    <?php echo $form->field($model, 'description') ?>
    <?php echo $form->field($model, 'name') ?>
    <?php echo $form->field($model, 'surname') ?>
    <?php echo $form->field($model, 'patronymic') ?>
    <?php // echo $form->field($model, 'price') ?>
    <?php // echo $form->field($model, 'asset_base_url') ?>
    <?php // echo $form->field($model, 'asset_path') ?>
    <?php // echo $form->field($model, 'map_id') ?>
    <?php // echo $form->field($model, 'owner_id') ?>
    <?php // echo $form->field($model, 'date_one') ?>
    <?php // echo $form->field($model, 'date_two') ?>

    <div class="form-group">
        <?php echo Html::submitButton(Yii::t('backend', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?php echo Html::resetButton(Yii::t('backend', 'Reset'), ['class' => 'btn btn-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
