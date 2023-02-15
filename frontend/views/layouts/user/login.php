<?php
use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var yii\bootstrap4\ActiveForm $form
 * @var frontend\modules\user\models\LoginForm $model
 */

?>

<?php $form = ActiveForm::begin([
    'action' =>['/user/sign-in/login'],
    'id' => 'login-form'
]); ?>
    <?php echo $form->errorSummary($model) ?>

    <?php echo $form->field($model, 'identity')->textInput(['class' => ['overed-input form-control']])->label('identity', [
        'class' => ['over-label']
]); ?>

    <?php echo $form->field($model, 'password')->passwordInput(['placeholder' => "password"])->label(false); ?>
<?php ActiveForm::end(); ?>