<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[ProductLike]].
 *
 * @see ProductLike
 */
class ProductLikeQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return ProductLike[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return ProductLike|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
