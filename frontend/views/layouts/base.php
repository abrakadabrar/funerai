<?php
/**
 * @var yii\web\View $this
 * @var string $content
 */

use frontend\modules\user\models\LoginForm;
use frontend\modules\user\models\PasswordResetRequestForm;
use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;
use yii\helpers\Html;

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
            [
                'label' => Yii::t('frontend', 'Signup'),
                'url' => ['/user/sign-in/signup'],
                'visible'=>Yii::$app->user->isGuest,
                'linkOptions' => [
                    "data-toggle"=>"modal",
                    "data-target"=>"#registerModal",
                    'class' => "gray-btn"
                ],
            ],
            [
                'label' => Yii::t('frontend', 'Login'),
                'url' => ['/user/sign-in/login'],
//                'url' => '#',
                'visible'=>Yii::$app->user->isGuest,
                'linkOptions' => [
                    "data-toggle"=>"modal",
                    "data-target"=>"#loginModal",
                    'class' => "gray-btn"
                ],
            ],
            [
                'label' => Yii::$app->user->isGuest ? '' : Yii::$app->user->identity->getPublicIdentity(),
                'visible'=>!Yii::$app->user->isGuest,
                'items'=>[
                    [
                        'label' => Yii::t('frontend', 'Backend'),
                        'url' => Yii::getAlias('@backendUrl'),
                        'visible'=>Yii::$app->user->can('manager'),
                    ],
                    [
                        'label' => Yii::t('frontend', 'Logout'),
                        'url' => ['/user/sign-in/logout'],
                        'linkOptions' => [
                            'data-method' => 'post',
                            "data-toggle"=>"modal",
                            "data-target"=>"#loginModal",
                            'class' => "gray-btn"
                        ],
                    ]
                ]
            ]
        ]
    ]); ?>
    <?php NavBar::end(); ?>
</header>

<main id="main-content-wrapper" class="flex-shrink-0" role="main" data-is-guest="<?=Yii::$app->user->isGuest?>">
    <div id="top-banner">
        <img class="top-banner-img" src="/img/top-banner.png"/>
        <video id="top-banner-video" src="/video/FA_Cinematic_01_compr.mp4" autoplay playsinline loop muted></video>
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
                    <h2 class="text-bold" id="loginModalLabel">Log in</h2>
                    <p>Log in to download the app</p>
                    <p>Not a member yet?
                        <?php echo Html::a(Yii::t('frontend', 'Register now'), '#',
                            [   "id" => "register-in-sigin",
                                'class' => ['text-sm text-bold white-link']
                            ]) ?>
                    </p>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php
                    echo $this->render('user/login', [
                        'model' => new LoginForm()
                    ]);
                    ?>
                </div>
                <div class="modal-footer">
                    <button id="login-form-submit" type="button" class="btn btn-primary submit-modal">Login</button>
                    <br>
                    <?php echo Html::a(Yii::t('frontend', 'Forgot your password?'),
                        ['sign-in/request-password-reset'],
                        [
                                'id' => "forgot-in-sign",
                                'class' => ['text-bold forgot-password white-link']
                        ])
                    ?>
                    <?php if (Yii::$app->getModule('user')->shouldBeActivated) : ?>
                        <?php echo Html::a(Yii::t('frontend', 'Resend my activation email'), ['sign-in/resend-email']) ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="text-bold" id="registerModalLabel">Register</h2>
                    <p>Already registered?
                        <?php echo Html::a(Yii::t('frontend', 'Log in'), ['signup'],
                            [
                                "id" => "sigin-in-register",
                                'class' => ['text-sm text-bold white-link']
                            ]) ?>
                    </p>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php
                    echo $this->render('user/signup', [
                        'model' => new \frontend\modules\user\models\SignupForm()
                    ]);
                    ?>
                </div>
                <div class="modal-footer">
                    <button id="register-form-submit" type="button" class="btn btn-primary submit-modal">Register</button>
                    <br>
                    <?php echo Html::a(Yii::t('frontend', 'Forgot your password?'),
                        ['sign-in/request-password-reset'],
                        [
                            "data-toggle"=>"modal",
                            "data-target"=>"#loginModal",
                            'class' => ['text-bold forgot-password white-link']
                        ])
                    ?>
                    <?php if (Yii::$app->getModule('user')->shouldBeActivated) : ?>
                        <?php echo Html::a(Yii::t('frontend', 'Resend my activation email'), ['sign-in/resend-email']) ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="forgotModal" tabindex="-1" role="dialog" aria-labelledby="forgotModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="text-bold" id="forgotModalLabel">Forgot your password</h2>
                    <p>Enter your username or email address and we will send you a link to reset your password.</p>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php
                    echo $this->render('user/requestPasswordResetToken', [
                        'model' => new PasswordResetRequestForm()
                    ]);
                    ?>
                </div>
                <div class="modal-footer">
                    <button id="reset-password-form-submit" type="button" class="btn btn-primary submit-modal">Reset password</button>
                </div>
            </div>
        </div>
    </div>
<?php $this->endContent() ?>