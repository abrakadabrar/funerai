<?php
/**
 * @var yii\web\View $this
 * @var string $content
 */

use frontend\modules\user\models\LoginForm;
use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;

$this->beginContent('@frontend/views/layouts/_clear.php')
?>
<header>
    <?php NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => ['navbar-dark', 'bg-dark', 'navbar-expand-md'],
        ],
    ]); ?>
    <?php echo Nav::widget([
        'options' => ['class' => ['navbar-nav', 'justify-content-end', 'ml-auto']],
        'items' => [
            ['label' => Yii::t('frontend', 'Signup'), 'url' => ['/user/sign-in/signup'], 'visible'=>Yii::$app->user->isGuest],
            [
                'label' => Yii::t('frontend', 'Login'),
//                'url' => ['/user/sign-in/login'],
                'url' => '#',
                'visible'=>Yii::$app->user->isGuest,
                'linkOptions' => [
                    "data-toggle"=>"modal",
                    "data-target"=>"#loginModal"
                ],
            ],
            [
                'label' => Yii::$app->user->isGuest ? '' : Yii::$app->user->identity->getPublicIdentity(),
                'visible'=>!Yii::$app->user->isGuest,
                'items'=>[
                    [
                        'label' => Yii::t('frontend', 'Backend'),
                        'url' => Yii::getAlias('@backendUrl'),
                        'visible'=>Yii::$app->user->can('manager')
                    ],
                    [
                        'label' => Yii::t('frontend', 'Logout'),
                        'url' => ['/user/sign-in/logout'],
                        'linkOptions' => ['data-method' => 'post']
                    ]
                ]
            ]
        ]
    ]); ?>
    <?php NavBar::end(); ?>
</header>

<main id="main-content-wrapper" class="flex-shrink-0" role="main">
    <div id="top-banner">
        <img class="top-banner-img" src="/img/top-banner.png"/>
        <div id="top-banner-inner" >
            <div id="top-banner-container" class="container">
                <div id="download-wrap">
                    <h1 id="top-banner-header">Eternally preserve your digital legacy</h1>
                    <a id="btn-download" class="gray-btn" href="#">Download App</a>
                </div>
            </div>
        </div>
    </div>
    <?php echo $content ?>
</main>

<footer class="footer mt-auto py-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="d-flex flex-row justify-content-start">
                    <div class="footer-item"><a href="#">mail@mail.com</a></div>
                    <div class="footer-item"><a href="#">+7(435) 545-54-54</a></div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="d-flex flex-row justify-content-end">
                    <div class="footer-item"><a href="#">Privacy policy</a></div>
                    <div class="footer-item">Copyright © <?php echo date('Y') ?></div>
                </div>
            </div>
        </div>
    </div>
</footer>

    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Log in</h5>
                    <p>Log in to download the app</p>
                    <p>Not a member yet? <a class="register-now" href="#">Register now</a></p>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php
                    $this->render('@frontend/modules/user/views/sign-in/login', [
                        'model' => new LoginForm()
                    ]);
                    ?>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Login</button>
                    <a class="forgot-password" href="#">Forgot your password?</a>
                </div>
            </div>
        </div>
    </div>
<?php $this->endContent() ?>