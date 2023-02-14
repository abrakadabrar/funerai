<?php
return [
    'class' => 'yii\web\UrlManager',
    'enablePrettyUrl' => true,
    'showScriptName' => false,
    'rules' => [
        // Api
        ['class' => 'yii\rest\UrlRule', 'controller' => 'v1/article', 'only' => ['index', 'view', 'options']],
//        ['class' => 'yii\rest\UrlRule', 'controller' => 'v1/product', 'only' => ['like', 'likes', 'options']],

        ['pattern' => 'product/like/<product_id>', 'route' => 'v1/product/like'],
        ['pattern' => 'product/likes/<product_id>', 'route' => 'v1/product/likes'],
        ['pattern' => 'product/info/<product_id>', 'route' => 'v1/product/info'],
        ['pattern' => 'product/buy/<product_id>', 'route' => 'v1/product/buy'],
        ['pattern' => 'product/list-maps', 'route' => 'v1/product/list-maps'],
        ['pattern' => 'product/list-products/<map_id>', 'route' => 'v1/product/list-products'],

        ['pattern' => 'user/login', 'route' => 'v1/user/login'],
        ['pattern' => 'user/register', 'route' => 'v1/user/register'],
    ]
];
