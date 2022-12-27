<?php

namespace common\models;

use trntv\filekit\behaviors\UploadBehavior;
use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\SluggableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "product".
 *
 * @property int $id
 * @property int|null $category_id
 * @property string|null $sku
 * @property string $title
 * @property string $description
 * @property string $updated_at
 * @property float $price
 * @property string $asset_base_url
 * @property string $asset_path
 *
 * @property Category $category
 * @property ProductLike[] $productLikes
 */
class Product extends \yii\db\ActiveRecord
{
    /**
     * @var array
     */
    public $asset;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'product';
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            [
                'class' => UploadBehavior::class,
                'attribute' => 'asset',
                'pathAttribute' => 'asset_path',
                'baseUrlAttribute' => 'asset_base_url',
            ],
        ];
    }
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['category_id'], 'integer'],
            [['title', 'description', 'price'], 'required'],
            [['description'], 'string'],
            [['price'], 'number'],
            [['sku', 'title'], 'string', 'max' => 255],
            [['asset_base_url', 'asset_path'], 'string', 'max' => 1024],
            [['category_id'], 'exist', 'skipOnError' => true, 'targetClass' => Category::className(), 'targetAttribute' => ['category_id' => 'id']],
            [['asset'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'category_id' => Yii::t('app', 'Category ID'),
            'sku' => Yii::t('app', 'Sku'),
            'title' => Yii::t('app', 'Title'),
            'description' => Yii::t('app', 'Description'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'price' => Yii::t('app', 'Price'),
            'asset_base_url' => Yii::t('app', 'Asset Base Url'),
            'asset_path' => Yii::t('app', 'Asset Path'),
            'asset' => Yii::t('common', 'Asset'),
        ];
    }

    /**
     * Gets query for [[Category]].
     *
     * @return \yii\db\ActiveQuery|CategoryQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }

    /**
     * Gets query for [[ProductLikes]].
     *
     * @return \yii\db\ActiveQuery|ProductLikeQuery
     */
    public function getProductLikes()
    {
        return $this->hasMany(ProductLike::className(), ['product_id' => 'id']);
    }

    /**
     * {@inheritdoc}
     * @return ProductQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProductQuery(get_called_class());
    }
}
