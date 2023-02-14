<?php

/**
 * @var yii\web\View $this
 * @var common\models\Map $model
 */

$this->title = Yii::t('backend', 'Create {modelClass}', [
    'modelClass' => 'Map',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Maps'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="map-create">

    <?php echo $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
