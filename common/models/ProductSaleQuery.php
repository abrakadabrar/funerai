<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[ProductSale]].
 *
 * @see ProductSale
 */
class ProductSaleQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return ProductSale[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return ProductSale|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
