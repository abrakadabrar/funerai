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
        <h5 class="product-date" id="viewProductModalLabel">9 March 1934 - 27 March 1968</h5>
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