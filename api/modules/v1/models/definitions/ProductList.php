<?php

namespace api\modules\v1\models\definitions;

/**
 * @SWG\Definition(definition="ProductList")
 *
 * @SWG\Property(property="products", type="array",
 *  @SWG\Items(
 *      @SWG\Property(property="id", type="integer"),
 *      @SWG\Property(property="isSold", type="boolean"),
 *      @SWG\Property(property="buyUrl", type="string"),
 *      @SWG\Property(property="viewUrl", type="string"),
 *      @SWG\Property(property="editUrl", type="string"),
 *  ),
 * )
 */
class ProductList
{
    // dummy class for Swagger definitions
}
