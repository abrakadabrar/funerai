<?php
/**
 * @var yii\web\View $this
 * @var \common\models\Product $model
 */

use yii\helpers\Html;

$this->title = Yii::$app->name . " - " . $model->title;

$this->registerJsFile('/js/product.js', [
    'depends' => \frontend\assets\FrontendAsset::class,
    'position' => \yii\web\View::POS_END
]);
$this->registerCssFile('/css/product.css');
?>
<div class="modal fade" id="viewProductModal" tabindex="-1" role="dialog" aria-labelledby="viewProductModalLabel" aria-hidden="true" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog modal-lg product-modal" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="row">
                    <div class="col-sm-4">
                        <img class="product-image" src="<?=$model->asset_base_url . "/" . $model->asset_path?>"/>
                    </div>
                    <div class="col-sm-8">
                        <h5 class="product-date" id="viewProductModalLabel">
                            <?php if ($model->date_one && $model->date_two) : ?>
                            <?=date("F jS, Y", strtotime($model->date_one))?> - <?=date("F jS, Y", strtotime($model->date_two))?>
                            <?php endif; ?>
                        </h5>
                        <h2 class="text-bold product-title" id="viewProductModalLabel"><?=$model->title?></h2>
                    </div>
                </div>
            </div>
            <div class="modal-body">
                <div class="product-description"><?=$model->description?></div>
            </div>
            <div class="modal-footer">
                <?php if (!Yii::$app->user->isGuest && !$model->owner_id) : ?>
                <a href="//api.funerai.com/product/buy/<?=$model->id?>?access-token=<?=Yii::$app->user->identity->access_token?>" id="viewProduct-link-buy" type="button" class="btn btn-primary product-link">Buy</a>
                <?php endif; ?>
                <?php if (!Yii::$app->user->isGuest && $model->owner_id == Yii::$app->user->id) : ?>
                <a href="/product/edit/<?=$model->id?>" id="viewProduct-link-edit" type="button" class="btn btn-default product-link">Edit</a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>