<?php

namespace api\modules\v1\controllers;

use common\models\User;
use frontend\modules\user\models\LoginForm;
use frontend\modules\user\models\SignupForm;
use Yii;
use yii\rest\Controller;
use yii\web\Response;
use yii\widgets\ActiveForm;

/**
 * @author Eugene Terentev <eugene@terentev.net>
 */
class UserController extends Controller
{
    public function actionRegister() {
        Yii::$app->response->format = Response::FORMAT_JSON;

        $model = new SignupForm();
        $message = '';

        $body = Yii::$app->getRequest()->getBodyParams();

        $model->username = $body['username'];
        $model->email = $body['email'];
        $model->password = $body['password'];
        $model->password_confirm = $body['password'];

        //            $model->username = $username;
//            $model->email = $email;
//            $model->password = $password;
//            $model->password_confirm = $password;

        if ($user = $model->signup()) {


            if ($model->shouldBeActivated()) {
                $message = Yii::t(
                    'frontend',
                    'Your account has been successfully created. Check your email for further instructions.'
                );
            } else {
//                Yii::$app->getUser()->login($user);
                $message = Yii::t(
                    'frontend',
                    'Your account has been successfully created'
                );
            }

            return [
                'success' => true,
                'message' => $message,
                'access-token' => $user->access_token
            ];
        } else {
            return ActiveForm::validate($model);
        }
    }

    public function actionLogin() {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model = new LoginForm();

        $body = Yii::$app->getRequest()->getBodyParams();

        $model->identity = $body['identity'];
        $model->password = $body['password'];

        if ($model->login()) {
            return [
                'success' => true,
                'access-token' => Yii::$app->user->getIdentity()->access_token
            ];
        } else {
            return ActiveForm::validate($model);
        }
    }
}
