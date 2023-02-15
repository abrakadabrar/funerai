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

<?php $form = ActiveForm::begin(['id' => 'edit-product-form']);

echo $form->field($model, 'id')->input('hidden')->label(false);
?>

<?php //echo $form->field($model, 'map_id')->dropDownList(\yii\helpers\ArrayHelper::map(
//    \common\models\Map::find()->all(),
//    'id',
//    'name'
//), ['prompt' => '']) ?>
<!---->
<?php //echo $form->field($model, 'owner_id')->dropDownList(\yii\helpers\ArrayHelper::map(
//    \common\models\User::find()->all(),
//    'id',
//    'email'
//), ['prompt' => '']) ?>
<!---->
<?php //echo $form->field($model, 'category_id')->dropDownList(\yii\helpers\ArrayHelper::map(
//    \common\models\Category::find()->all(),
//    'id',
//    'title'
//), ['prompt' => '']) ?>


<div class="row">
    <div class="col-sm-3">
        <?php echo $form->field($model, 'asset')->widget(
            Upload::class,
            [
                'url' => ['/product/upload'],
                'acceptFileTypes' => new \yii\web\JsExpression('/(\.|\/)(gif|jpe?g|png)$/i'),
                'maxFileSize' => 500000000, // 500 MiB,
            ]
        )->label(false) ?>
    </div>
    <div class="col-sm-9">
        <div class="row">
            <div class="col-sm-6">
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
                ])->label(false);
                ?>
            </div>
            <div class="col-sm-6">
                <?php
                echo $form->field($model, 'date_two')->widget(\kartik\widgets\DatePicker::classname(), [
                    'options' => ['placeholder' => 'Enter time ...'],
                    'convertFormat' => true,
                    'pluginOptions' => [
                        'autoclose' => true,
                        'format' => 'yyyy-M-dd',
                    ]
                ])->label(false);
                ?>
            </div>
        </div>
        <?php echo $form->field($model, 'title')->textInput(['class' => ['overed-input form-control']])->label('title', [
            'class' => ['over-label']
        ]) ?>
    </div>
</div>

<?php echo $form->errorSummary($model) ?>

<div>
    <?php echo $form->field($model, 'description')->widget(
        \yii\imperavi\Widget::class,
        [
            'plugins' => ['fontcolor'],
            'options' => [
                'minHeight' => 200,
                'maxHeight' => 200,
                'buttonSource' => true,
                'convertDivs' => false,
                'removeEmptyTags' => true
            ],
        ]
    )->label(false) ?>
</div>

<?php //echo $form->field($model, 'description')->textarea(['rows' => 6]) ?>

<?php ActiveForm::end(); ?>
