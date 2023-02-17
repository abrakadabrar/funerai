<?php

use common\models\Category;
use common\models\Map;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\grid\GridView;

/**
 * @var yii\web\View $this
 * @var common\models\ProductSearch $searchModel
 * @var yii\data\ActiveDataProvider $dataProvider
 */

/**
 * @var \common\models\Product $model
 */

$this->title = Yii::t('backend', 'Products');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-index">
    <div class="card">
        <div class="card-header">
            <?php echo Html::a(Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Product',
]), ['create'], ['class' => 'btn btn-success']) ?>
        </div>

        <div class="card-body p-0">
            <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
            <?php echo GridView::widget([
                'layout' => "{items}\n{pager}",
                'options' => [
                    'class' => ['gridview', 'table-responsive'],
                ],
                'tableOptions' => [
                    'class' => ['table', 'text-nowrap', 'table-striped', 'table-bordered', 'mb-0'],
                ],
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    'id',
                    'surname',
                    'name',
                    'patronymic',
                    // 'description:ntext',
                    // 'created_at',
                    // 'updated_at',
                    // 'price',
                    [
                        'attribute' => 'map_id',
                        'filter' => ArrayHelper::map(Map::find()->all(), 'id', 'name'),
                        'value' => function ($model) {
                            return $model->map ? $model->map->name : '-';
                        },
                    ],
                    [
                        'attribute' => 'owner_id',
                        'filter' => ArrayHelper::map(\common\models\User::find()->all(), 'id', 'usernameEmail'),
                        'value' => function ($model) {
                            return $model->owner ? $model->owner->usernameEmail : '-';
                        },
                    ],
                    [
                        'attribute' => 'isSold',
                        'value' => function ($model) {
                            return $model->isSold ? 'Yes' : 'No';
                        },
                    ],
                    [
                        'attribute' => 'date_one',
                        'value' => function ($model) {
                            return date('Y-m-d', strtotime($model->date_one));
                        },
                    ],
                    [
                        'attribute' => 'date_two',
                        'value' => function ($model) {
                            return date('Y-m-d', strtotime($model->date_two));
                        },
                    ],

                    ['class' => \common\widgets\ActionColumn::class],
                ],
            ]); ?>
    
        </div>
        <div class="card-footer">
            <?php echo getDataProviderSummary($dataProvider) ?>
        </div>
    </div>

</div>
