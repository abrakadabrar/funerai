<?php
/**
 * @var yii\web\View $this
 * @var \common\models\Product $model
 */

use yii\helpers\Html;

$this->title = Yii::$app->name . " - " . $model->getFullName();

$this->registerJsFile('/js/product.js', [
    'depends' => \frontend\assets\FrontendAsset::class,
    'position' => \yii\web\View::POS_END
]);
$this->registerCssFile('/css/product.css');
?>
<div class="modal fade" id="editProductModal" tabindex="-1" role="dialog" aria-labelledby="viewProductModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-lg product-modal" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="text-bold product-title" id="viewProductModalLabel" style="margin-bottom: 0;">Edit cart</h2>
            </div>
            <div class="modal-body">
                <?=$this->render('_form', ['model' => $model])?>
            </div>
            <div class="modal-footer">
                <a href="#" id="editProduct-link-submit" type="button" class="btn btn-primary product-link">Save</a>
                <a href="/product/view/<?=$model->id?>" id="editProduct-link-cancel" type="button" class="btn btn-default product-link">Cancel</a>
            </div>
        </div>
    </div>
</div>