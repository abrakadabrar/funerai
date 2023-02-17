<?php
/**
 * @var yii\web\View $this
 * @var string $content
 */

use yii\helpers\Html;

\frontend\assets\FrontendAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?php echo Yii::$app->language ?>">
<head>
    <meta charset="<?php echo Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <?php echo Html::csrfMetaTags() ?>
<!--    <link href="/js/splide-4.1.3/css/splide-core.min.css" rel="stylesheet">-->
<!--    <link href="/js/splide-4.1.3/css/splide.min.css" rel="stylesheet">-->
<!--    <link href="/js/splide-4.1.3/css/themes/splide-default.min.css" rel="stylesheet">-->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

    <link href="/css/style.css?t=<?=filemtime(\Yii::getAlias('@frontend/web/css/style.css'))?>" rel="stylesheet">
</head>
<body class="d-flex flex-column h-100">
<?php $this->beginBody() ?>
    <?php echo $content ?>
<?php $this->endBody() ?>
<!--<script src="/js/splide-4.1.3/js/splide.min.js"></script>-->

<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<script src="/js/app.js?t=<?=filemtime(\Yii::getAlias('@frontend/web/css/style.css'))?>"></script>
</body>
</html>
<?php $this->endPage() ?>
