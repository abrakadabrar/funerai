<?php

namespace backend\controllers;

use Yii;
use common\models\Product;
use common\models\ProductSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProductController implements the CRUD actions for Product model.
 */
class ProductController extends Controller
{

    /** @inheritdoc */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Product models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Product model.
     * @param int $id ID
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Product model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Product();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }
        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Product model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }
        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Product model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    private static function remakeDateFromCsv(string $date) {
        return implode('-', array_reverse(explode('.', $date)));
    }
    public function actionImportCsv() {
        Yii::$app->db->createCommand("SET foreign_key_checks = 0")->execute();
        Product::deleteAll();
        Yii::$app->db->createCommand("SET foreign_key_checks = 1")->execute();
        ini_set('auto_detect_line_endings',true);
        $handle = fopen(Yii::getAlias('@backend') . '/one_day_df_epitafia.csv','r');
        $row = 0;

        echo '<pre>';
        while ( ($data = fgetcsv($handle) ) !== false ) {
            if ($row++ == 0) continue;
            //0,1,2,4,5
            $product = new Product();
            $product->name = $data[1];
            $product->surname = $data[0];
            $product->patronymic = $data[2];
            $product->date_one = self::remakeDateFromCsv($data[4]);
            $product->date_two = self::remakeDateFromCsv($data[5]);
            var_dump($data);
            echo "\n";
            if (!$product->save()) {

                var_dump($product->getErrorSummary(true));
                echo "\n";
            }
        }
        echo '</pre>';
        ini_set('auto_detect_line_endings',false);
        die;
    }

    /**
     * Finds the Product model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Product the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Product::findOne($id)) !== null) {
            return $model;
        }
        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
