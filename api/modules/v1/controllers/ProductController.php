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


    /**
     * @SWG\Post(path="/product/like/{product_id}",
     *     tags={"product"},
     *     summary="Like or dislike product by user",
     *     security={
     *          {"Bearer": {}}
     *     },
     *     @SWG\Response(
     *         response = 200,
     *         description = "Succes and like status",
     *         @SWG\Schema(ref = "#/definitions/ProductLike")
     *     ),
     *     @SWG\Parameter(
     *          name="product_id",
     *          in="path",
     *          type="integer",
     *          required=true
     *     )
     * )
     */

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

    /**
     * @SWG\Post(path="/product/likes/{product_id}",
     *     tags={"product"},
     *     summary="Show product likes count",
     *     security={
     *          {"Bearer": {}}
     *     },
     *     @SWG\Response(
     *         response = 200,
     *         description = "Count of likes",
     *         @SWG\Schema(ref = "#/definitions/ProductLike")
     *     ),
     *     @SWG\Parameter(
     *          name="product_id",
     *          in="path",
     *          type="integer",
     *          required=true
     *     )
     * )
     */
    public function actionLikes($product_id) {
        $models = ProductLike::find($product_id)->all();
        return [
            'count' => $models ? count($models) : 0
        ];
    }
}