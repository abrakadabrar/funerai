<?php
namespace api\modules\v1\controllers;

use common\models\ProductLike;
use Yii;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBasicAuth;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\auth\HttpHeaderAuth;
use yii\filters\auth\QueryParamAuth;
class ProductController extends \yii\rest\Controller {

    /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        $behaviors['authenticator'] = [
            'class' => CompositeAuth::class,
            'authMethods' => [
                HttpBasicAuth::class,
                HttpBearerAuth::class,
                HttpHeaderAuth::class,
                QueryParamAuth::class
            ]
        ];

        return $behaviors;
    }

    public function actionLike($product_id) {
        $model = ProductLike::find()->where([
            'product_id' => $product_id,
            'user_id' => Yii::$app->user->getId(),
        ])->one();

        if (!$model) {
            $model = new ProductLike();
            $model->user_id = Yii::$app->user->getId();
            $model->product_id = $product_id;
            return [
                'success' => $model->save(),
                'disliked' => false
            ];
        } else {
            return [
                'success' => $model->delete() ? true : false,
                'disliked' => true
            ];
        }
    }

    public function actionLikes($product_id) {
        $models = ProductLike::find($product_id)->all();
        return [
            'count' => $models ? count($models) : 0
        ];
    }
}