<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/**
 * @var yii\web\View $this
 * @var common\models\Product $model
 */

$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Products'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-view">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a(Yii::t('backend', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?php echo Html::a(Yii::t('backend', 'Delete'), ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => Yii::t('backend', 'Are you sure you want to delete this item?'),
                    'method' => 'post',
                ],
            ]) ?>
        </div>
        <div class="card-body">
            <?php echo DetailView::widget([
                'model' => $model,
                'attributes' => [
                    'id',
                    [                      // the owner name of the model
                        'label' => 'Owner',
                        'value' => $model->owner_id ? $model->owner->email : '-',
                        'format' => 'raw'
                    ],
                    [                      // the owner name of the model
                        'label' => 'Map',
                        'value' => $model->map_id ? $model->map->name : '-',
                        'format' => 'raw'
                    ],
//                    'user_id',
                    'description:html',
                    'price',
                    [                      // the owner name of the model
                        'label' => 'Asset',
                        'value' => Html::a($model->asset_base_url . "/" . $model->asset_path,$model->asset_base_url . "/" . $model->asset_path),
                        'format' => 'raw'
                    ],

//                    'asset_base_url:url',
//                    'asset_path',
                     'date_one',
                     'date_two',
                    
                ],
            ]) ?>
        </div>
    </div>
</div>
