<?php
use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var yii\bootstrap4\ActiveForm $form
 * @var frontend\modules\user\models\SignupForm $model
 */

?>

<?php $form = ActiveForm::begin([
    'action' =>['/user/sign-in/signup'],
    'id' => 'signup-form'
]); ?>
<?php echo $form->errorSummary($model) ?>

<?php echo $form->field($model, 'username')->textInput(['class' => ['overed-input form-control']])->label('Username', [
    'class' => ['over-label']
]); ?>
<?php echo $form->field($model, 'email')->input('text', ['placeholder' => "email"])->label(false) ?>
<?php echo $form->field($model, 'password')->passwordInput(['placeholder' => "password"])->label(false) ?>
<?php echo $form->field($model, 'password_confirm')->passwordInput(['placeholder' => "password"])->label(false) ?>
<?php echo $form->field($model, 'privacy_accept')->checkbox()
    ->label(
        "I agree with the <a class='text-sm text-bold white-link' href='#'>privacy policy</a>"
    )
?>


<?php ActiveForm::end(); ?>