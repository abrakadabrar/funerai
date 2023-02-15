<?php

use kartik\datetime\DateTimePicker;
use trntv\filekit\widget\Upload;
use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
use yii\web\JsExpression;

/**
 * @var yii\web\View $this
 * @var common\models\Product $model
 * @var yii\bootstrap4\ActiveForm $form
 */
?>

<div class="product-form">
    <?php $form = ActiveForm::begin(); ?>
        <div class="card">
            <div class="card-body">
                <?php echo $form->errorSummary($model); ?>

                <?php echo $form->field($model, 'map_id')->dropDownList(\yii\helpers\ArrayHelper::map(
                    \common\models\Map::find()->all(),
                    'id',
                    'name'
                ), ['prompt' => '']) ?>

                <?php echo $form->field($model, 'owner_id')->dropDownList(\yii\helpers\ArrayHelper::map(
                    \common\models\User::find()->all(),
                    'id',
                    'email'
                ), ['prompt' => '']) ?>

                <?php /*echo $form->field($model, 'category_id')->dropDownList(\yii\helpers\ArrayHelper::map(
                    \common\models\Category::find()->all(),
                    'id',
                    'title'
                ), ['prompt' => '']) */?>

<!--                --><?php //echo $form->field($model, 'user_id')->textInput() ?>
<!--                --><?php //echo $form->field($model, 'sku')->textInput(['maxlength' => true]) ?>
                <?php echo $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
<!--                --><?php //echo $form->field($model, 'description')->textarea(['rows' => 6]) ?>

                <?php echo $form->field($model, 'description')->widget(
                    \yii\imperavi\Widget::class,
                    [
                        'plugins' => ['fullscreen', 'fontcolor', 'video'],
                        'options' => [
                            'minHeight' => 400,
                            'maxHeight' => 400,
                            'buttonSource' => true,
                            'convertDivs' => false,
                            'removeEmptyTags' => true,
                            'imageUpload' => Yii::$app->urlManager->createUrl(['/file/storage/upload-imperavi']),
                        ],
                    ]
                ) ?>

                <?php echo $form->field($model, 'price')->textInput() ?>

                <?php echo $form->field($model, 'asset')->widget(
                    Upload::class,
                    [
                        'url' => ['/file/storage/upload'],
                        'maxFileSize' => 500000000, // 500 MiB,
//                        'acceptFileTypes' => new JsExpression('/(\.|\/)(gif|jpe?g|png)$/i'),
                    ]
                ) ?>

<!--                --><?php //echo $form->field($model, 'asset_base_url')->textInput(['maxlength' => true]) ?>
<!--                --><?php //echo $form->field($model, 'asset_path')->textInput(['maxlength' => true]) ?>


                <?php
                if ($model->date_one) $model->date_one = date('Y-m-d', strtotime($model->date_one));
                if ($model->date_two) $model->date_two = date('Y-m-d', strtotime($model->date_two));

                echo $form->field($model, 'date_one')->widget(\kartik\widgets\DatePicker::classname(), [
                    'options' => ['placeholder' => 'Enter time ...'],
                    'convertFormat' => true,
                    'pluginOptions' => [
                        'autoclose' => true,
                        'format' => 'yyyy-M-dd',
                    ]
                ]);

                echo $form->field($model, 'date_two')->widget(\kartik\widgets\DatePicker::classname(), [
                    'options' => ['placeholder' => 'Enter time ...'],
                    'convertFormat' => true,
                    'pluginOptions' => [
                        'autoclose' => true,
                        'format' => 'yyyy-M-dd',
                    ]
                ]);
                ?>
                
            </div>
            <div class="card-footer">
                <?php echo Html::submitButton($model->isNewRecord ? Yii::t('backend', 'Create') : Yii::t('backend', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    <?php ActiveForm::end(); ?>
</div>
