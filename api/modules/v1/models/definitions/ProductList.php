<?php

namespace api\modules\v1\models\definitions;

/**
 * @SWG\Definition(definition="ProductList")
 *
 * @SWG\Property(property="products", type="array",
 *  @SWG\Items(
 *      @SWG\Property(property="id", type="integer"),
 *      @SWG\Property(property="category_id", type="integer"),
 *      @SWG\Property(property="map_id", type="integer"),
 *      @SWG\Property(property="owner_id", type="integer"),
 *      @SWG\Property(property="title", type="string"),
 *      @SWG\Property(property="description", type="string"),
 *      @SWG\Property(property="price", type="string"),
 *      @SWG\Property(property="asset_base_url", type="string"),
 *      @SWG\Property(property="asset_path", type="string"),
 *  ),
 * )
 */
class ProductList
{
    // dummy class for Swagger definitions
}
