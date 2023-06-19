<?php
namespace api\modules\v1\controllers;

use common\models\Map;
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
use yii\web\NotFoundHttpException;

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
            ],
            'except' => ['likes', 'list-maps'],
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
     * @SWG\Post(path="/product/info/{product_id}",
     *     tags={"product"},
     *     summary="Show product info, is sold, url to buy, url to view, url to edit",
     *     security={
     *          {"Bearer": {}}
     *     },
     *     @SWG\Response(
     *         response = 200,
     *         description = "Information",
     *         @SWG\Schema(ref = "#/definitions/ProductInfo")
     *     ),
     *     @SWG\Parameter(
     *          name="product_id",
     *          in="path",
     *          type="integer",
     *          required=true
     *     )
     * )
     */
    public function actionInfo($product_id) {
        $product = Product::find()->where(['id' => $product_id])->one();
        if (!$product) {
            throw new NotFoundHttpException("Product is not found");
        }

        return $this->getProductInfo($product);
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

    /**
     * @SWG\Post(path="/product/list-maps",
     *     tags={"product"},
     *     summary="List of all maps",
     *     @SWG\Response(
     *         response = 200,
     *         description = "List of found maps",
     *         @SWG\Schema(ref = "#/definitions/MapList")
     *     ),
     * )
     */
    public function actionListMaps() {
        /** @var Map[] $maps */
        $maps = Map::find()->all();

        $mapsData = [];
        foreach ($maps as $map) {
            $mapsData[] = [
                'id' => $map->id,
                'name' => $map->name,
                'descr' => $map->descr,
            ];
        }

        return $mapsData;
    }

    /**
     * @SWG\Post(path="/product/list-products/{map_id}",
     *     tags={"product"},
     *     summary="List of all products or for map_id",
     *     security={
     *          {"Bearer": {}}
     *     },
     *     @SWG\Response(
     *         response = 200,
     *         description = "List of found products",
     *         @SWG\Schema(ref = "#/definitions/ProductList")
     *     ),
     *     @SWG\Parameter(
     *          name="map_id",
     *          in="path",
     *          type="integer",
     *          required=false
     *     )
     * )
     */
    public function actionListProducts($map_id = null) {
        if ($map_id && is_numeric($map_id)) {
            /** @var Product[] $products */
            $products = Product::find()->where(['map_id' => $map_id])->all();
        } else {
            $products = Product::find()->all();
        }

        $data = [];
        foreach ($products as $product) {
            $data[] = $this->getProductInfo($product);
        }

        return [
            'products' => $data
        ];
    }

    private function getProductInfo(Product $product) {
        $isSold = !empty($product->owner_id) && $product->owner_id;
        $isUserOwner = $product->owner_id === intval(Yii::$app->user->id);

        return [
            'id' => $product->id,
            'isSold' => $isSold,
            'buyUrl' => $isSold ? null : "https://funerai.com/product/buy/$product->id",
            'viewUrl' => $isUserOwner ||  $product->owner_id === 1 ? "https://funerai.com/product/view/$product->id" : null,
            'editUrl' => $isUserOwner ? "https://funerai.com/product/edit/$product->id" : null,


//            'name' => $product->name,
//            'surname' => $product->surname,
//            'patronymic' => $product->patronymic,

            'full_name' => $product->getFullName(),
            'date_one' => $product->date_one,
            'date_two' => $product->date_two,
            
//            'user_id' => Yii::$app->user->id,
//            'owner_id' => $product->owner_id,
        ];
    }
}