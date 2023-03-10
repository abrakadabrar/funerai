<?php

namespace frontend\controllers;

use common\models\Product;
use trntv\filekit\actions\DeleteAction;
use trntv\filekit\actions\UploadAction;
use Yii;
use yii\filters\VerbFilter;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\web\Response;
use yii\web\UnauthorizedHttpException;

class ProductController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['post'],
                    'upload-delete' => ['delete'],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'upload' => [
                'class' => UploadAction::class,
                'deleteRoute' => 'upload-delete',
            ],
            'upload-delete' => [
                'class' => DeleteAction::class,
            ],
        ];
    }

    public function actionView($id) {
        $this->layout = '_clear';
        $product = Product::find()->where(['id' => $id])->one();
        if (!$product) {
            throw new NotFoundHttpException("Product is not found");
        }
        return $this->render('view', [
            'model' => $product,
        ]);
    }

    public function actionEdit($id) {
//        $this->layout = '_clear';
        $model = Product::find()->where(['id' => $id])->one();
        if (!$model) {
            throw new NotFoundHttpException("Product is not found $id");
        }

        if (Yii::$app->user->isGuest || Yii::$app->user->id !== $model->owner_id) {
            throw new UnauthorizedHttpException("You are not have rights to edit");
        }

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('edit', [
            'model' => $model,
        ]);
    }

    /*public function actionBuy($id) {
        $this->layout = false;
        Yii::$app->response->format = Response::FORMAT_JSON;

        $product = Product::find()->where(['id' => $id])->one();
        if (!$product) {
            throw new NotFoundHttpException("Product is not found");
        }
        if (Yii::$app->user->isGuest) {
            throw new UnauthorizedHttpException("Log in first.");
        }

        $product->owner_id = Yii::$app->user->id;
        $product->save();

        return [
            'success' => $product->save(),
        ];
    }*/
}