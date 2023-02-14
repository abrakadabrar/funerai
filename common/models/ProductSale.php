<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "product_sale".
 *
 * @property int $id
 * @property int|null $product_id
 * @property int|null $user_id
 * @property string $cost
 * @property string $sale_date
 *
 * @property Product $product
 * @property User $user
 */
class ProductSale extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'product_sale';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['product_id', 'user_id'], 'integer'],
            [['cost', 'sale_date'], 'required'],
            [['sale_date'], 'safe'],
            [['cost'], 'string', 'max' => 2048],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
            [['product_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['product_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'product_id' => Yii::t('app', 'Product ID'),
            'user_id' => Yii::t('app', 'User ID'),
            'cost' => Yii::t('app', 'Cost'),
            'sale_date' => Yii::t('app', 'Sale Date'),
        ];
    }

    /**
     * Gets query for [[Product]].
     *
     * @return \yii\db\ActiveQuery|ProductQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery|UserQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    /**
     * {@inheritdoc}
     * @return ProductSaleQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProductSaleQuery(get_called_class());
    }
}
