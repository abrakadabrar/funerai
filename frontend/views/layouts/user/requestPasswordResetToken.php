<?php
use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

/**
 * @var yii\web\View $this
 * @var yii\bootstrap4\ActiveForm $form
 * @var frontend\modules\user\models\PasswordResetRequestForm $model
 */

?>

<?php $form = ActiveForm::begin(['id' => 'password-reset']); ?>
<?php echo $form->field($model, 'email')->input('email') ?>
<?php ActiveForm::end(); ?>