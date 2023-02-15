-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: mariadb_ota
-- Время создания: Фев 15 2023 г., 14:26
-- Версия сервера: 10.4.6-MariaDB-1:10.4.6+maria~bionic-log
-- Версия PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2-starter-kit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `thumbnail_base_url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_path` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `article_attachment`
--

CREATE TABLE `article_attachment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `article_category`
--

CREATE TABLE `article_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `article_category`
--

INSERT INTO `article_category` (`id`, `slug`, `title`, `body`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'news', 'News', NULL, NULL, 1, 1672045676, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `text`) VALUES
(1, 'Electronics', ''),
(2, 'Computers', ''),
(3, 'Phones', ''),
(4, 'Notebooks', ''),
(5, 'Desktop computers', ''),
(6, 'Tablets', ''),
(7, 'Smartphones', ''),
(8, 'Mobile phones', ''),
(9, 'Accessories for smartphones', ''),
(10, 'Mobile phone case', ''),
(11, 'Chargers', ''),
(12, 'Foodstuffs', ''),
(13, 'Soda drinks', ''),
(14, 'Juice', ''),
(15, 'Women\'s underwear', ''),
(16, 'Glasses', ''),
(17, 'Glasses for sight', ''),
(18, 'Sunglasses', ''),
(19, 'Accessories for computers', '');

-- --------------------------------------------------------

--
-- Структура таблицы `file_storage_item`
--

CREATE TABLE `file_storage_item` (
  `id` int(11) NOT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_url` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `file_storage_item`
--

INSERT INTO `file_storage_item` (`id`, `component`, `base_url`, `path`, `type`, `size`, `name`, `upload_ip`, `created_at`) VALUES
(2, 'fileStorage', 'http://storage.aws_products.ruz/source', '1/yQO6USF4t3GSWGgsn7KDlGtMqOAppV8E.xml', 'text/xml', 10309906, 'yQO6USF4t3GSWGgsn7KDlGtMqOAppV8E', '192.168.1.1', 1672058460),
(4, 'fileStorage', 'http://storage.aws_products.ruz/source', '1/mVrUvlSqsrmB-dHlUO0OhyQy4zBA29xB.gif', 'image/gif', 409081, 'mVrUvlSqsrmB-dHlUO0OhyQy4zBA29xB', '192.168.1.1', 1672058847),
(5, 'fileStorage', 'http://storage.funerAI.com/source', '1/gjVD6k1M4H44FmKqmIB4wu-v5uhK_06-.png', 'image/png', 143505, 'gjVD6k1M4H44FmKqmIB4wu-v5uhK_06-', '192.168.1.1', 1676450491);

-- --------------------------------------------------------

--
-- Структура таблицы `i18n_message`
--

CREATE TABLE `i18n_message` (
  `id` int(11) NOT NULL,
  `language` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `translation` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i18n_source_message`
--

CREATE TABLE `i18n_source_message` (
  `id` int(11) NOT NULL,
  `category` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `key_storage_item`
--

CREATE TABLE `key_storage_item` (
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `key_storage_item`
--

INSERT INTO `key_storage_item` (`key`, `value`, `comment`, `updated_at`, `created_at`) VALUES
('backend.layout-boxed', '0', NULL, NULL, NULL),
('backend.layout-collapsed-sidebar', '0', NULL, NULL, NULL),
('backend.layout-fixed', '0', NULL, NULL, NULL),
('backend.theme-skin', 'skin-blue', 'skin-blue, skin-black, skin-purple, skin-green, skin-red, skin-yellow', NULL, NULL),
('frontend.maintenance', 'disabled', 'Set it to \"enabled\" to turn on maintenance mode', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `map`
--

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `name` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `map`
--

INSERT INTO `map` (`id`, `name`, `descr`) VALUES
(1, 'test-map', 'Description');

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `slug`, `title`, `body`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about', 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 1, 1672045676, 1672045676);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `asset_base_url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_path` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `sku`, `title`, `description`, `price`, `asset_base_url`, `asset_path`, `map_id`, `owner_id`) VALUES
(1, 4, '1001', 'Asus', '<p>Asus knows what it\'s doing. It knows that the MacBook Air laptops are old news,\r\n		 deliberately left to tread water to make way for the all-singing,\r\n		 (mostly) all-dancing 12in. Asus thinks there\'s life left for a 13in \'ultrabook\' still. The Asus ZenBook UX305 is pretty much everything the 13in should be at this point,\r\n		 but isn\'t. What do I mean? Well,\r\n		 it\'s pretty affordable at £650 and has a really rather good screen,\r\n		 while still looking and feeling fantastic. Of course,\r\n		 as it runs Windows 8.1 rather than it\'s not going to convert many obsessives. But if you\'re on the cusp of being swayed,\r\n		 let the Asus ZenBook UX305 sway you.</p>', 700, 'http://storage.funerAI.com/source', '1/gjVD6k1M4H44FmKqmIB4wu-v5uhK_06-.png', 1, 4),
(2, 4, '1002', 'MacBook', '<p>MacBook Air is nice computer</p>', 1200, NULL, NULL, 1, NULL),
(3, 7, '1003', 'Samsung J5', '', 250, '', '', NULL, NULL),
(4, 1, '1004', 'TV', '', 200, '', '', NULL, NULL),
(5, 17, '1005', 'Porshe design', '', 100, '', '', NULL, NULL),
(6, 18, '1006', 'EMPORIO ARMANI', '', 100, '', '', NULL, NULL),
(7, 17, '1007', 'PRADA', '', 90, '', '', NULL, NULL),
(8, 13, '1008', 'Fanta', '', 0.75, '', '', NULL, NULL),
(9, 13, '1009', 'Fanta 1.5 L', '', 0.95, '', '', NULL, NULL),
(10, 15, '1010', 'Milavitsa', '', 100, NULL, NULL, NULL, 1),
(11, 15, '1011', 'Victoria\'s secret', '', 90, '', '', NULL, NULL),
(12, 15, '1012', 'Clovia', '', 90, '', '', NULL, NULL),
(13, 15, '1013', 'Amante', '', 90, '', '', NULL, NULL),
(15, 19, '1015', 'Mouse', '', 10, '', '', NULL, NULL),
(16, 19, '1016', 'Bag', '', 15, '', '', NULL, NULL),
(17, 1, '777777', 'Test', '<p>test descr</p>', 100500, 'http://storage.aws_products.ruz/source', '1/mVrUvlSqsrmB-dHlUO0OhyQy4zBA29xB.gif', NULL, NULL),
(18, NULL, NULL, 'Asus', '<p>Asus knows what it\'s doing. It knows that the MacBook Air laptops are old news,\r\n		 deliberately left to tread water to make way for the all-singing,\r\n		 (mostly) all-dancing 12in. Asus thinks there\'s life left for a 13in \'ultrabook\' still. The Asus ZenBook UX305 is pretty much everything the 13in should be at this point,\r\n		 but isn\'t. What do I mean? Well,\r\n		 it\'s pretty affordable at £650 and has a really rather good screen,\r\n		 while still looking and feeling fantastic. Of course,\r\n		 as it runs Windows 8.1 rather than it\'s not going to convert many obsessives. But if you\'re on the cusp of being swayed,\r\n		 let the Asus ZenBook UX305 sway you.</p>', NULL, 'http://storage.funerAI.com/source', '1/gjVD6k1M4H44FmKqmIB4wu-v5uhK_06-.png', NULL, NULL),
(19, NULL, NULL, 'Asus', '<p>Asus knows what it\'s doing. It knows that the MacBook Air laptops are old news,\r\n		 deliberately left to tread water to make way for the all-singing,\r\n		 (mostly) all-dancing 12in. Asus thinks there\'s life left for a 13in \'ultrabook\' still. The Asus ZenBook UX305 is pretty much everything the 13in should be at this point,\r\n		 but isn\'t. What do I mean? Well,\r\n		 it\'s pretty affordable at £650 and has a really rather good screen,\r\n		 while still looking and feeling fantastic. Of course,\r\n		 as it runs Windows 8.1 rather than it\'s not going to convert many obsessives. But if you\'re on the cusp of being swayed,\r\n		 let the Asus ZenBook UX305 sway you.</p>', NULL, 'http://storage.funerAI.com/source', '1/gjVD6k1M4H44FmKqmIB4wu-v5uhK_06-.png', NULL, NULL),
(20, NULL, NULL, 'Asus', '<p>Asus knows what it\'s. It knows that the MacBook Air laptops are old news,\r\n		 deliberately left to tread water to make way for the all-singing,\r\n		 (mostly) all-dancing 12in. Asus thinks there\'s life left for a 13in \'ultrabook\' still. The Asus ZenBook UX305 is pretty much everything the 13in should be at this point,\r\n		 but isn\'t. What do I mean? Well,\r\n		 it\'s pretty affordable at £650 and has a really rather good screen,\r\n		 while still looking and feeling fantastic. Of course,\r\n		 as it runs Windows 8.1 rather than it\'s not going to convert many obsessives. But if you\'re on the cusp of being swayed,\r\n		 let the Asus ZenBook UX305 sway you.</p>', NULL, 'http://storage.funerAI.com/source', '1/gjVD6k1M4H44FmKqmIB4wu-v5uhK_06-.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_like`
--

CREATE TABLE `product_like` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product_like`
--

INSERT INTO `product_like` (`id`, `product_id`, `user_id`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_sale`
--

CREATE TABLE `product_sale` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cost` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_sale`
--

INSERT INTO `product_sale` (`id`, `product_id`, `user_id`, `cost`, `sale_date`) VALUES
(10, 10, 1, '0', '2023-02-14 17:53:36'),
(11, 1, 4, '0', '2023-02-15 17:02:41');

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_assignment`
--

CREATE TABLE `rbac_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_assignment`
--

INSERT INTO `rbac_auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrator', '1', 1672045678),
('manager', '2', 1672045678),
('user', '3', 1672045678),
('user', '4', 1672067465);

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_item`
--

CREATE TABLE `rbac_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_item`
--

INSERT INTO `rbac_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('administrator', 1, NULL, NULL, NULL, 1672045678, 1672045678),
('editOwnModel', 2, NULL, 'ownModelRule', NULL, 1672045678, 1672045678),
('loginToBackend', 2, NULL, NULL, NULL, 1672045678, 1672045678),
('manager', 1, NULL, NULL, NULL, 1672045678, 1672045678),
('user', 1, NULL, NULL, NULL, 1672045678, 1672045678);

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_item_child`
--

CREATE TABLE `rbac_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_item_child`
--

INSERT INTO `rbac_auth_item_child` (`parent`, `child`) VALUES
('administrator', 'loginToBackend'),
('administrator', 'manager'),
('administrator', 'user'),
('manager', 'loginToBackend'),
('manager', 'user'),
('user', 'editOwnModel');

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_rule`
--

CREATE TABLE `rbac_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_rule`
--

INSERT INTO `rbac_auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('ownModelRule', 0x4f3a32393a22636f6d6d6f6e5c726261635c72756c655c4f776e4d6f64656c52756c65223a333a7b733a343a226e616d65223b733a31323a226f776e4d6f64656c52756c65223b733a393a22637265617465644174223b693a313637323034353637383b733a393a22757064617465644174223b693a313637323034353637383b7d, 1672045678, 1672045678);

-- --------------------------------------------------------

--
-- Структура таблицы `system_db_migration`
--

CREATE TABLE `system_db_migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_db_migration`
--

INSERT INTO `system_db_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1672045671),
('m140703_123000_user', 1672045674),
('m140703_123055_log', 1672045674),
('m140703_123104_page', 1672045674),
('m140703_123803_article', 1672045674),
('m140703_123813_rbac', 1672045674),
('m140709_173306_widget_menu', 1672045674),
('m140709_173333_widget_text', 1672045674),
('m140712_123329_widget_carousel', 1672045674),
('m140805_084745_key_storage_item', 1672045674),
('m141012_101932_i18n_tables', 1672045675),
('m150318_213934_file_storage_item', 1672045675),
('m150414_195800_timeline_event', 1672045675),
('m150725_192740_seed_data', 1672045676),
('m150929_074021_article_attachment_order', 1672045676),
('m160203_095604_user_token', 1672045676),
('m190130_155645_add_article_slug_index', 1672045676);

-- --------------------------------------------------------

--
-- Структура таблицы `system_log`
--

CREATE TABLE `system_log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_log`
--

INSERT INTO `system_log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(129, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676385518.0301, '[frontend][/product/buy/10]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/api/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/api/messages/ru/app.php'),
(130, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676386105.0575, '[frontend][/product/buy/10]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/api/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/api/messages/ru/app.php'),
(131, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676386379.1479, '[frontend][/product/buy/10]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/api/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/api/messages/ru/app.php'),
(132, 1, 'yii\\base\\ErrorException:1024', 1676390062.2134, '[frontend][/site/json-schema]', 'yii\\base\\ErrorException: @SWG\\Items() is required when @SWG\\Property() has type \"array\" in /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5 in /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php:38\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(1024, \'@SWG\\\\Items() is...\', \'/var/www/funera...\', 38, Array)\n#1 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(38): trigger_error(\'@SWG\\\\Items() is...\', 1024)\n#2 [internal function]: Swagger\\Logger->Swagger\\{closure}(\'@SWG\\\\Items() is...\', 1024)\n#3 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(68): call_user_func(Object(Closure), \'@SWG\\\\Items() is...\', 1024)\n#4 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(243): Swagger\\Logger::notice(\'@SWG\\\\Items() is...\')\n#5 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4...\')\n#6 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions/4...\')\n#7 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Definition), Array, Array, \'#/definitions/4\')\n#8 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4\')\n#9 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4\')\n#10 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions\')\n#11 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Swagger), Array, Array, \'#\')\n#12 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Swagger.php(150): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#\')\n#13 /var/www/funerai.com/vendor/zircote/swagger-php/src/Analysis.php(331): Swagger\\Annotations\\Swagger->validate()\n#14 /var/www/funerai.com/vendor/zircote/swagger-php/src/functions.php(56): Swagger\\Analysis->validate()\n#15 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(85): Swagger\\scan(Array, Array)\n#16 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->yii2mod\\swagger\\{closure}(Object(yii\\caching\\DummyCache))\n#17 /var/www/funerai.com/vendor/yiisoft/yii2/caching/Cache.php(597): call_user_func(Object(Closure), Object(yii\\caching\\DummyCache))\n#18 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(86): yii\\caching\\Cache->getOrSet(\'api-swagger-cac...\', Object(Closure), 360)\n#19 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(70): yii2mod\\swagger\\OpenAPIRenderer->getSwaggerDocumentation()\n#20 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->run()\n#21 /var/www/funerai.com/vendor/yiisoft/yii2/base/Action.php(94): call_user_func_array(Array, Array)\n#22 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\Action->runWithParams(Array)\n#23 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'json-schema\', Array)\n#24 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'site/json-schem...\', Array)\n#25 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#26 /var/www/funerai.com/api/web/index.php(22): yii\\base\\Application->run()\n#27 {main}'),
(133, 1, 'yii\\base\\ErrorException:1024', 1676390490.7349, '[frontend][/site/json-schema]', 'yii\\base\\ErrorException: Multiple @SWG\\Property() with the same property=\"price\":\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5 in /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php:38\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(1024, \'Multiple @SWG\\\\P...\', \'/var/www/funera...\', 38, Array)\n#1 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(38): trigger_error(\'Multiple @SWG\\\\P...\', 1024)\n#2 [internal function]: Swagger\\Logger->Swagger\\{closure}(\'Multiple @SWG\\\\P...\', 1024)\n#3 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(68): call_user_func(Object(Closure), \'Multiple @SWG\\\\P...\', 1024)\n#4 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(356): Swagger\\Logger::notice(\'Multiple @SWG\\\\P...\')\n#5 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'\')\n#6 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Items.php(41): Swagger\\Annotations\\Schema->validate(Array, Array)\n#7 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Items->validate(Array, Array, \'#/definitions/4...\')\n#8 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Property), Array, Array, \'#/definitions/4...\')\n#9 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4...\')\n#10 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4...\')\n#11 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions/4...\')\n#12 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Definition), Array, Array, \'#/definitions/4\')\n#13 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4\')\n#14 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4\')\n#15 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions\')\n#16 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Swagger), Array, Array, \'#\')\n#17 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Swagger.php(150): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#\')\n#18 /var/www/funerai.com/vendor/zircote/swagger-php/src/Analysis.php(331): Swagger\\Annotations\\Swagger->validate()\n#19 /var/www/funerai.com/vendor/zircote/swagger-php/src/functions.php(56): Swagger\\Analysis->validate()\n#20 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(85): Swagger\\scan(Array, Array)\n#21 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->yii2mod\\swagger\\{closure}(Object(yii\\caching\\DummyCache))\n#22 /var/www/funerai.com/vendor/yiisoft/yii2/caching/Cache.php(597): call_user_func(Object(Closure), Object(yii\\caching\\DummyCache))\n#23 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(86): yii\\caching\\Cache->getOrSet(\'api-swagger-cac...\', Object(Closure), 360)\n#24 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(70): yii2mod\\swagger\\OpenAPIRenderer->getSwaggerDocumentation()\n#25 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->run()\n#26 /var/www/funerai.com/vendor/yiisoft/yii2/base/Action.php(94): call_user_func_array(Array, Array)\n#27 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\Action->runWithParams(Array)\n#28 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'json-schema\', Array)\n#29 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'site/json-schem...\', Array)\n#30 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#31 /var/www/funerai.com/api/web/index.php(22): yii\\base\\Application->run()\n#32 {main}'),
(134, 1, 'yii\\base\\ErrorException:1024', 1676390495.0488, '[frontend][/site/json-schema]', 'yii\\base\\ErrorException: Multiple @SWG\\Property() with the same property=\"price\":\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5 in /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php:38\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(1024, \'Multiple @SWG\\\\P...\', \'/var/www/funera...\', 38, Array)\n#1 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(38): trigger_error(\'Multiple @SWG\\\\P...\', 1024)\n#2 [internal function]: Swagger\\Logger->Swagger\\{closure}(\'Multiple @SWG\\\\P...\', 1024)\n#3 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(68): call_user_func(Object(Closure), \'Multiple @SWG\\\\P...\', 1024)\n#4 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(356): Swagger\\Logger::notice(\'Multiple @SWG\\\\P...\')\n#5 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'\')\n#6 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Items.php(41): Swagger\\Annotations\\Schema->validate(Array, Array)\n#7 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Items->validate(Array, Array, \'#/definitions/4...\')\n#8 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Property), Array, Array, \'#/definitions/4...\')\n#9 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4...\')\n#10 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4...\')\n#11 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions/4...\')\n#12 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Definition), Array, Array, \'#/definitions/4\')\n#13 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4\')\n#14 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4\')\n#15 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions\')\n#16 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Swagger), Array, Array, \'#\')\n#17 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Swagger.php(150): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#\')\n#18 /var/www/funerai.com/vendor/zircote/swagger-php/src/Analysis.php(331): Swagger\\Annotations\\Swagger->validate()\n#19 /var/www/funerai.com/vendor/zircote/swagger-php/src/functions.php(56): Swagger\\Analysis->validate()\n#20 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(85): Swagger\\scan(Array, Array)\n#21 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->yii2mod\\swagger\\{closure}(Object(yii\\caching\\DummyCache))\n#22 /var/www/funerai.com/vendor/yiisoft/yii2/caching/Cache.php(597): call_user_func(Object(Closure), Object(yii\\caching\\DummyCache))\n#23 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(86): yii\\caching\\Cache->getOrSet(\'api-swagger-cac...\', Object(Closure), 360)\n#24 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(70): yii2mod\\swagger\\OpenAPIRenderer->getSwaggerDocumentation()\n#25 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->run()\n#26 /var/www/funerai.com/vendor/yiisoft/yii2/base/Action.php(94): call_user_func_array(Array, Array)\n#27 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\Action->runWithParams(Array)\n#28 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'json-schema\', Array)\n#29 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'site/json-schem...\', Array)\n#30 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#31 /var/www/funerai.com/api/web/index.php(22): yii\\base\\Application->run()\n#32 {main}'),
(135, 1, 'yii\\base\\ErrorException:1024', 1676390504.5056, '[frontend][/site/json-schema]', 'yii\\base\\ErrorException: Multiple @SWG\\Property() with the same property=\"price\":\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5 in /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php:38\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(1024, \'Multiple @SWG\\\\P...\', \'/var/www/funera...\', 38, Array)\n#1 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(38): trigger_error(\'Multiple @SWG\\\\P...\', 1024)\n#2 [internal function]: Swagger\\Logger->Swagger\\{closure}(\'Multiple @SWG\\\\P...\', 1024)\n#3 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(68): call_user_func(Object(Closure), \'Multiple @SWG\\\\P...\', 1024)\n#4 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(356): Swagger\\Logger::notice(\'Multiple @SWG\\\\P...\')\n#5 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'\')\n#6 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Items.php(41): Swagger\\Annotations\\Schema->validate(Array, Array)\n#7 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Items->validate(Array, Array, \'#/definitions/4...\')\n#8 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Property), Array, Array, \'#/definitions/4...\')\n#9 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4...\')\n#10 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4...\')\n#11 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions/4...\')\n#12 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Definition), Array, Array, \'#/definitions/4\')\n#13 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4\')\n#14 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4\')\n#15 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions\')\n#16 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Swagger), Array, Array, \'#\')\n#17 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Swagger.php(150): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#\')\n#18 /var/www/funerai.com/vendor/zircote/swagger-php/src/Analysis.php(331): Swagger\\Annotations\\Swagger->validate()\n#19 /var/www/funerai.com/vendor/zircote/swagger-php/src/functions.php(56): Swagger\\Analysis->validate()\n#20 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(85): Swagger\\scan(Array, Array)\n#21 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->yii2mod\\swagger\\{closure}(Object(yii\\caching\\DummyCache))\n#22 /var/www/funerai.com/vendor/yiisoft/yii2/caching/Cache.php(597): call_user_func(Object(Closure), Object(yii\\caching\\DummyCache))\n#23 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(86): yii\\caching\\Cache->getOrSet(\'api-swagger-cac...\', Object(Closure), 360)\n#24 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(70): yii2mod\\swagger\\OpenAPIRenderer->getSwaggerDocumentation()\n#25 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->run()\n#26 /var/www/funerai.com/vendor/yiisoft/yii2/base/Action.php(94): call_user_func_array(Array, Array)\n#27 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\Action->runWithParams(Array)\n#28 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'json-schema\', Array)\n#29 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'site/json-schem...\', Array)\n#30 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#31 /var/www/funerai.com/api/web/index.php(22): yii\\base\\Application->run()\n#32 {main}'),
(136, 1, 'yii\\base\\ErrorException:1024', 1676390507.3307, '[frontend][/site/json-schema]', 'yii\\base\\ErrorException: Multiple @SWG\\Property() with the same property=\"price\":\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5\n  /var/www/funerai.com/api/modules/v1/models/definitions/ProductList.php on line 5 in /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php:38\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(1024, \'Multiple @SWG\\\\P...\', \'/var/www/funera...\', 38, Array)\n#1 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(38): trigger_error(\'Multiple @SWG\\\\P...\', 1024)\n#2 [internal function]: Swagger\\Logger->Swagger\\{closure}(\'Multiple @SWG\\\\P...\', 1024)\n#3 /var/www/funerai.com/vendor/zircote/swagger-php/src/Logger.php(68): call_user_func(Object(Closure), \'Multiple @SWG\\\\P...\', 1024)\n#4 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(356): Swagger\\Logger::notice(\'Multiple @SWG\\\\P...\')\n#5 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'\')\n#6 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Items.php(41): Swagger\\Annotations\\Schema->validate(Array, Array)\n#7 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Items->validate(Array, Array, \'#/definitions/4...\')\n#8 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Property), Array, Array, \'#/definitions/4...\')\n#9 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4...\')\n#10 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4...\')\n#11 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions/4...\')\n#12 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Definition), Array, Array, \'#/definitions/4\')\n#13 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Schema.php(246): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#/definitions/4\')\n#14 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(442): Swagger\\Annotations\\Schema->validate(Array, Array, \'#/definitions/4\')\n#15 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(448): Swagger\\Annotations\\AbstractAnnotation::_validate(Array, Array, Array, \'#/definitions\')\n#16 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/AbstractAnnotation.php(412): Swagger\\Annotations\\AbstractAnnotation::_validate(Object(Swagger\\Annotations\\Swagger), Array, Array, \'#\')\n#17 /var/www/funerai.com/vendor/zircote/swagger-php/src/Annotations/Swagger.php(150): Swagger\\Annotations\\AbstractAnnotation->validate(Array, Array, \'#\')\n#18 /var/www/funerai.com/vendor/zircote/swagger-php/src/Analysis.php(331): Swagger\\Annotations\\Swagger->validate()\n#19 /var/www/funerai.com/vendor/zircote/swagger-php/src/functions.php(56): Swagger\\Analysis->validate()\n#20 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(85): Swagger\\scan(Array, Array)\n#21 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->yii2mod\\swagger\\{closure}(Object(yii\\caching\\DummyCache))\n#22 /var/www/funerai.com/vendor/yiisoft/yii2/caching/Cache.php(597): call_user_func(Object(Closure), Object(yii\\caching\\DummyCache))\n#23 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(86): yii\\caching\\Cache->getOrSet(\'api-swagger-cac...\', Object(Closure), 360)\n#24 /var/www/funerai.com/vendor/yii2mod/yii2-swagger/OpenAPIRenderer.php(70): yii2mod\\swagger\\OpenAPIRenderer->getSwaggerDocumentation()\n#25 [internal function]: yii2mod\\swagger\\OpenAPIRenderer->run()\n#26 /var/www/funerai.com/vendor/yiisoft/yii2/base/Action.php(94): call_user_func_array(Array, Array)\n#27 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\Action->runWithParams(Array)\n#28 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'json-schema\', Array)\n#29 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'site/json-schem...\', Array)\n#30 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#31 /var/www/funerai.com/api/web/index.php(22): yii\\base\\Application->run()\n#32 {main}'),
(137, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676457449.3802, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(138, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676457517.0715, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(139, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676458444.208, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(140, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676458466.0968, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(141, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676458488.7741, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(142, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676458940.5965, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(143, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676458960.3229, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(144, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459175.08, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(145, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459296.9955, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(146, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459297.1042, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(147, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459348.0224, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(148, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459420.7941, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(149, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459472.9026, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(150, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459561.5888, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(151, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459629.499, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(152, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676459674.1997, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(153, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676465568.2406, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(154, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676465712.7141, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(155, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676465812.611, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(156, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676465833.7618, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(157, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676465880.6523, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(158, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466207.6598, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(159, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466213.0674, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(160, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466255.5774, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(161, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466387.2905, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(162, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466574.0534, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(163, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466707.3468, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(164, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466872.2249, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(165, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466943.969, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(166, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676466978.8973, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(167, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467031.5575, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(168, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467125.6969, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(169, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467151.3576, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(170, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467192.7932, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(171, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467195.384, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(172, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467529.2314, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(173, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467557.6264, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(174, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676467910.8207, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(175, 1, 'Error', 1676468388.8002, '[frontend][/product/edit/1]', 'Error: Class \'frontend\\controllers\\Yii\' not found in /var/www/funerai.com/frontend/controllers/ProductController.php:59\nStack trace:\n#0 [internal function]: frontend\\controllers\\ProductController->actionEdit(\'1\')\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'edit\', Array)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/edit\', Array)\n#5 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#6 /var/www/funerai.com/frontend/web/index.php(22): yii\\base\\Application->run()\n#7 {main}'),
(176, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468408.8021, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(177, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468560.9278, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(178, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468581.304, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(179, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468671.6953, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(180, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468690.456, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(181, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468856.9919, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(182, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468862.4609, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(183, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468867.1393, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(184, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468883.2425, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(185, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468937.4562, '[frontend][/product/edit/19]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(186, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468985.2565, '[frontend][/product/edit/19]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(187, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676468993.4986, '[frontend][/product/edit/20]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(188, 1, 'Error', 1676469415.4736, '[frontend][/product/view/20]', 'Error: Call to a member function refresh() on null in /var/www/funerai.com/frontend/views/product/view.php:18\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(348): require()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(257): yii\\base\\View->renderPhpFile(\'/var/www/funera...\', Array)\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(156): yii\\base\\View->renderFile(\'/var/www/funera...\', Array, Object(frontend\\controllers\\ProductController))\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(410): yii\\base\\View->render(\'view\', Array, Object(frontend\\controllers\\ProductController))\n#4 /var/www/funerai.com/frontend/controllers/ProductController.php(49): yii\\base\\Controller->render(\'view\', Array)\n#5 [internal function]: frontend\\controllers\\ProductController->actionView(\'20\')\n#6 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#7 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'view\', Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/view\', Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#11 /var/www/funerai.com/frontend/web/index.php(22): yii\\base\\Application->run()\n#12 {main}'),
(189, 1, 'Error', 1676469538.9912, '[frontend][/product/view/20]', 'Error: Call to a member function refresh() on null in /var/www/funerai.com/frontend/views/product/view.php:18\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(348): require()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(257): yii\\base\\View->renderPhpFile(\'/var/www/funera...\', Array)\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(156): yii\\base\\View->renderFile(\'/var/www/funera...\', Array, Object(frontend\\controllers\\ProductController))\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(410): yii\\base\\View->render(\'view\', Array, Object(frontend\\controllers\\ProductController))\n#4 /var/www/funerai.com/frontend/controllers/ProductController.php(49): yii\\base\\Controller->render(\'view\', Array)\n#5 [internal function]: frontend\\controllers\\ProductController->actionView(\'20\')\n#6 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#7 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'view\', Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/view\', Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#11 /var/www/funerai.com/frontend/web/index.php(22): yii\\base\\Application->run()\n#12 {main}'),
(190, 1, 'Error', 1676469540.6461, '[frontend][/product/view/20]', 'Error: Call to a member function refresh() on null in /var/www/funerai.com/frontend/views/product/view.php:18\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(348): require()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(257): yii\\base\\View->renderPhpFile(\'/var/www/funera...\', Array)\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/base/View.php(156): yii\\base\\View->renderFile(\'/var/www/funera...\', Array, Object(frontend\\controllers\\ProductController))\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(410): yii\\base\\View->render(\'view\', Array, Object(frontend\\controllers\\ProductController))\n#4 /var/www/funerai.com/frontend/controllers/ProductController.php(49): yii\\base\\Controller->render(\'view\', Array)\n#5 [internal function]: frontend\\controllers\\ProductController->actionView(\'20\')\n#6 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#7 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'view\', Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/view\', Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#11 /var/www/funerai.com/frontend/web/index.php(22): yii\\base\\Application->run()\n#12 {main}'),
(191, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676469727.7279, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(192, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676469767.8447, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php');

-- --------------------------------------------------------

--
-- Структура таблицы `system_rbac_migration`
--

CREATE TABLE `system_rbac_migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_rbac_migration`
--

INSERT INTO `system_rbac_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1672045676),
('m150625_214101_roles', 1672045678),
('m150625_215624_init_permissions', 1672045678),
('m151223_074604_edit_own_model', 1672045678);

-- --------------------------------------------------------

--
-- Структура таблицы `timeline_event`
--

CREATE TABLE `timeline_event` (
  `id` int(11) NOT NULL,
  `application` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `timeline_event`
--

INSERT INTO `timeline_event` (`id`, `application`, `category`, `event`, `data`, `created_at`) VALUES
(1, 'frontend', 'user', 'signup', '{\"public_identity\":\"webmaster\",\"user_id\":1,\"created_at\":1672045675}', 1672045675),
(2, 'frontend', 'user', 'signup', '{\"public_identity\":\"manager\",\"user_id\":2,\"created_at\":1672045675}', 1672045675),
(3, 'frontend', 'user', 'signup', '{\"public_identity\":\"user\",\"user_id\":3,\"created_at\":1672045675}', 1672045675),
(4, 'frontend', 'user', 'signup', '{\"public_identity\":\"test-user\",\"user_id\":4,\"created_at\":1672067465}', 1672067465);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_client_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 2,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `logged_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `access_token`, `password_hash`, `oauth_client`, `oauth_client_user_id`, `email`, `status`, `created_at`, `updated_at`, `logged_at`) VALUES
(1, 'webmaster', '2G8A8BG3AoJ5cD2hfPuk8Sx4Gug9RdIW', '_2Hnt-DJi1IAblQJ9nN0yP8wTc0zJes-oXzwUsg8', '$2y$13$qXDZ5qGtlPlkufybbcOrL.CGM6GBiBC2eLsbTibDn/DnymM8Dh/TO', NULL, NULL, 'webmaster@example.com', 2, 1672045675, 1672045675, 1676449569),
(2, 'manager', 'B6NAj3puSGWtdPlSVVv3I17KMBraOaRq', 'hRmpQUHNOmTtkKQ-A4fQjk0RO2tNsVBBxglnBSCV', '$2y$13$yk2MlvyqLUGSEFcDnpI2G.2Dfd5IUtXzMeACBggBPTdah1n8Cfb3i', NULL, NULL, 'manager@example.com', 2, 1672045675, 1672045675, NULL),
(3, 'user', 'j5LP9FfyVD_zOn5OFlIYfqDCuMYTaKRu', 'n2WLa_DAUii-PlynGlcKpdaUqBIqig88arRDNlCK', '$2y$13$oWsAuk/YuEGGvpAof0FlmerRmHDyYL6n2koK4wEoMqNBGPMub8RNW', NULL, NULL, 'user@example.com', 2, 1672045676, 1672045676, NULL),
(4, 'test-user', 'EEd30RzhhMsKDEwQq4iZQcl0iuDW_Ff6', 'dYIBPHBCKlOdeYwgy8g9iBumhCEweoQcL4r5Zka5', '$2y$13$BD2u9JJ91zwYthqW3qzj7eW2yYR1BRr/UcZPZ62IL0x8De1T./WZS', NULL, NULL, 'test-user@test.ru', 2, 1672067465, 1672067465, 1676469761);

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `gender` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `firstname`, `middlename`, `lastname`, `avatar_path`, `avatar_base_url`, `locale`, `gender`) VALUES
(1, 'John', NULL, 'Doe', NULL, NULL, 'en-US', NULL),
(2, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL),
(3, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL),
(4, NULL, NULL, NULL, NULL, NULL, 'ru-RU', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `widget_carousel`
--

CREATE TABLE `widget_carousel` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `widget_carousel`
--

INSERT INTO `widget_carousel` (`id`, `key`, `status`) VALUES
(1, 'index', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_carousel_item`
--

CREATE TABLE `widget_carousel_item` (
  `id` int(11) NOT NULL,
  `carousel_id` int(11) NOT NULL,
  `base_url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `widget_carousel_item`
--

INSERT INTO `widget_carousel_item` (`id`, `carousel_id`, `base_url`, `path`, `asset_url`, `type`, `url`, `caption`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://yii2-starter-kit.localhost', 'img/yii2-starter-kit.gif', 'http://yii2-starter-kit.localhost/img/yii2-starter-kit.gif', 'image/gif', '/', NULL, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_menu`
--

CREATE TABLE `widget_menu` (
  `id` int(11) NOT NULL,
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `widget_menu`
--

INSERT INTO `widget_menu` (`id`, `key`, `title`, `items`, `status`) VALUES
(1, 'frontend-index', 'Frontend index menu', '[\n    {\n        \"label\": \"Get started with Yii2\",\n        \"url\": \"http://www.yiiframework.com\",\n        \"options\": {\n            \"tag\": \"span\"\n        },\n        \"template\": \"<a href=\\\"{url}\\\" class=\\\"btn btn-lg btn-success\\\">{label}</a>\"\n    },\n    {\n        \"label\": \"Yii2 Starter Kit on GitHub\",\n        \"url\": \"https://github.com/yii2-starter-kit/yii2-starter-kit\",\n        \"options\": {\n            \"tag\": \"span\"\n        },\n        \"template\": \"<a href=\\\"{url}\\\" class=\\\"btn btn-lg btn-primary\\\">{label}</a>\"\n    },\n    {\n        \"label\": \"Find a bug?\",\n        \"url\": \"https://github.com/yii2-starter-kit/yii2-starter-kit/issues\",\n        \"options\": {\n            \"tag\": \"span\"\n        },\n        \"template\": \"<a href=\\\"{url}\\\" class=\\\"btn btn-lg btn-danger\\\">{label}</a>\"\n    }\n]', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_text`
--

CREATE TABLE `widget_text` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `widget_text`
--

INSERT INTO `widget_text` (`id`, `key`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'backend_welcome', 'Welcome to backend', '<p>Welcome to Yii2 Starter Kit Dashboard</p>', 1, 1672045676, 1672045676),
(2, 'ads-example', 'Google Ads Example Block', '<div class=\"lead\">\n                <script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\n                <ins class=\"adsbygoogle\"\n                     style=\"display:block\"\n                     data-ad-client=\"ca-pub-9505937224921657\"\n                     data-ad-slot=\"2264361777\"\n                     data-ad-format=\"auto\"></ins>\n                <script>\n                (adsbygoogle = window.adsbygoogle || []).push({});\n                </script>\n            </div>', 0, 1672045676, 1672045676);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_article_slug` (`slug`),
  ADD KEY `fk_article_author` (`created_by`),
  ADD KEY `fk_article_updater` (`updated_by`),
  ADD KEY `fk_article_category` (`category_id`);

--
-- Индексы таблицы `article_attachment`
--
ALTER TABLE `article_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_attachment_article` (`article_id`);

--
-- Индексы таблицы `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_article_category_slug` (`slug`),
  ADD KEY `fk_article_category_section` (`parent_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `file_storage_item`
--
ALTER TABLE `file_storage_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i18n_message`
--
ALTER TABLE `i18n_message`
  ADD PRIMARY KEY (`id`,`language`);

--
-- Индексы таблицы `i18n_source_message`
--
ALTER TABLE `i18n_source_message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `key_storage_item`
--
ALTER TABLE `key_storage_item`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `idx_key_storage_item_key` (`key`);

--
-- Индексы таблицы `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `map_id` (`map_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Индексы таблицы `product_like`
--
ALTER TABLE `product_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `rbac_auth_assignment`
--
ALTER TABLE `rbac_auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `rbac_auth_item`
--
ALTER TABLE `rbac_auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `rbac_auth_item_child`
--
ALTER TABLE `rbac_auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `rbac_auth_rule`
--
ALTER TABLE `rbac_auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `system_db_migration`
--
ALTER TABLE `system_db_migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_log_level` (`level`),
  ADD KEY `idx_log_category` (`category`);

--
-- Индексы таблицы `system_rbac_migration`
--
ALTER TABLE `system_rbac_migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `timeline_event`
--
ALTER TABLE `timeline_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `widget_carousel`
--
ALTER TABLE `widget_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `widget_carousel_item`
--
ALTER TABLE `widget_carousel_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item_carousel` (`carousel_id`);

--
-- Индексы таблицы `widget_menu`
--
ALTER TABLE `widget_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `widget_text`
--
ALTER TABLE `widget_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_widget_text_key` (`key`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `article_attachment`
--
ALTER TABLE `article_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `file_storage_item`
--
ALTER TABLE `file_storage_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `i18n_source_message`
--
ALTER TABLE `i18n_source_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `product_like`
--
ALTER TABLE `product_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT для таблицы `timeline_event`
--
ALTER TABLE `timeline_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `widget_carousel`
--
ALTER TABLE `widget_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widget_carousel_item`
--
ALTER TABLE `widget_carousel_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widget_menu`
--
ALTER TABLE `widget_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `widget_text`
--
ALTER TABLE `widget_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_article_author` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_article_category` FOREIGN KEY (`category_id`) REFERENCES `article_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_article_updater` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `article_attachment`
--
ALTER TABLE `article_attachment`
  ADD CONSTRAINT `fk_article_attachment_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `fk_article_category_section` FOREIGN KEY (`parent_id`) REFERENCES `article_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `i18n_message`
--
ALTER TABLE `i18n_message`
  ADD CONSTRAINT `fk_i18n_message_source_message` FOREIGN KEY (`id`) REFERENCES `i18n_source_message` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`map_id`) REFERENCES `map` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_like`
--
ALTER TABLE `product_like`
  ADD CONSTRAINT `product_like_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `product_sale`
--
ALTER TABLE `product_sale`
  ADD CONSTRAINT `product_sale_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_sale_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_assignment`
--
ALTER TABLE `rbac_auth_assignment`
  ADD CONSTRAINT `rbac_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_item`
--
ALTER TABLE `rbac_auth_item`
  ADD CONSTRAINT `rbac_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `rbac_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_item_child`
--
ALTER TABLE `rbac_auth_item_child`
  ADD CONSTRAINT `rbac_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rbac_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `widget_carousel_item`
--
ALTER TABLE `widget_carousel_item`
  ADD CONSTRAINT `fk_item_carousel` FOREIGN KEY (`carousel_id`) REFERENCES `widget_carousel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

ALTER TABLE `product` ADD `date_one` DATETIME NULL DEFAULT NULL AFTER `owner_id`, ADD `date_two` DATETIME NULL DEFAULT NULL AFTER `date_one`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
