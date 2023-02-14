<?php
namespace api\modules\v1\controllers;

use common\models\Product;
use common\models\ProductLike;
use common\models\ProductSale;
use Yii;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBasicAuth;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\auth\HttpHeaderAuth;
use yii\filters\auth\QueryParamAuth;
use yii\helpers\Url;

class ProductController extends \yii\rest\Controller {

    /**
     * @return array
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();

        /*$behaviors['authenticator'] = [
            'class' => CompositeAuth::class,
            'authMethods' => [
                HttpBasicAuth::class,
                HttpBearerAuth::class,
                HttpHeaderAuth::class,
                QueryParamAuth::class
            ]
        ];*/

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

    /**
     * @SWG\Post(path="/product/is-sold/{product_id}",
     *     tags={"product"},
     *     summary="Show product sold or not, sends buy URL",
     *     security={
     *          {"Bearer": {}}
     *     },
     *     @SWG\Response(
     *         response = 200,
     *         description = "Is sold and url",
     *         @SWG\Schema(ref = "#/definitions/ProductSold")
     *     ),
     *     @SWG\Parameter(
     *          name="product_id",
     *          in="path",
     *          type="integer",
     *          required=true
     *     )
     * )
     */
    public function actionIsSold($product_id) {
        $product = Product::find($product_id)->where(['id' => $product_id])->one();
        $isSold = !empty($product->owner_id) && $product->owner_id;
        return [
            'isSold' => $isSold,
            'buyUrl' => $isSold ? null : Url::toRoute(['product/buy', 'product_id' => $product_id])
        ];
    }

    /**
     * @SWG\Post(path="/product/buy/{product_id}",
     *     tags={"product"},
     *     summary="Buy product",
     *     security={
     *          {"Bearer": {}}
     *     },
     *     @SWG\Response(
     *         response = 200,
     *         description = "Success or not and error message",
     *         @SWG\Schema(ref = "#/definitions/ProductBuy")
     *     ),
     *     @SWG\Parameter(
     *          name="product_id",
     *          in="path",
     *          type="integer",
     *          required=true
     *     )
     * )
     */
    public function actionBuy($product_id) {
        $product = Product::find()->where(['id' => $product_id])->one();
        if (!$product) {
            return [
                'success' => false,
                'message' => 'Product not found'
            ];
        } else if ($product->owner_id) {
            return [
                'success' => false,
                'message' => 'Product is already sold'
            ];
        }

        $product->owner_id = Yii::$app->user->getId();

        //todo: rollback productSale check if exists??? or new logic
        $productSale = new ProductSale();
        $productSale->product_id = $product->id;
        $productSale->user_id = $product->owner_id;
        $productSale->cost = "0";
        $productSale->sale_date = date('Y-m-d H:i:s');

        if ($productSale->save() && $product->save()) {
            return [
                'success' => true,
                'message' => null
            ];
        } else {
            //todo: rollback productSale if $product->save() is fails
            return [
                'success' => false,
                'message' => 'Failed to save product state' . var_export($product->getErrors(), true)
            ];
        }
    }
}