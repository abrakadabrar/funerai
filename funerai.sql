-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: mariadb_ota
-- Время создания: Фев 17 2023 г., 16:10
-- Версия сервера: 10.4.6-MariaDB-1:10.4.6+maria~bionic-log
-- Версия PHP: 7.4.4

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(8, 'fileStorage', 'http://storage.funerAI.com/source', '1/zRF2ygXMFazIxYOyi6-eeRTlnPiBkEsc.jpeg', 'image/jpeg', 100146, 'zRF2ygXMFazIxYOyi6-eeRTlnPiBkEsc', '192.168.1.1', 1676476962);

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
  `name` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patronymic` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `asset_base_url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_path` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `date_one` datetime DEFAULT NULL,
  `date_two` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `surname`, `patronymic`, `description`, `price`, `asset_base_url`, `asset_path`, `map_id`, `owner_id`, `date_one`, `date_two`) VALUES
(8881, 'Казанцев', 'Степан', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(8882, 'Казначеев', 'Иван', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(8883, 'Калугин', 'Федор', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8884, 'Каримов', 'Нурулла', 'Каримович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8885, 'Кармано', 'Арне-Ялмири-Иоганес', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-11 00:00:00', '1938-01-08 00:00:00'),
(8886, 'Карьялайнен', 'Вильхо Хейкки', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-11 00:00:00', '1938-01-08 00:00:00'),
(8887, 'Касимов', 'Абрам', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8888, 'Кияшев', 'Павел', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(8889, 'Ключников', 'Василий', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8890, 'Коршунов', 'Сергей', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-30 00:00:00', '1938-01-08 00:00:00'),
(8891, 'Костин', 'Тимофей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8892, 'Кугерчин', 'Шамей', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8893, 'Кукаркин', 'Михаил', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(8894, 'Левис', 'Евгений', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(8895, 'Лисицын', 'Николай', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-26 00:00:00', '1938-01-08 00:00:00'),
(8896, 'Логинов', 'Михаил', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(8897, 'Логинов', 'Семен', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(8898, 'Лукоянов', 'Петр', 'Логинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(8899, 'Маннанов', 'Бадретдин', 'Маннанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(8900, 'Мулендейкин', 'Александр', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(8901, 'Надыршин', 'Кашаф', 'Фархутдинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8902, 'Орлов', 'Александр', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-20 00:00:00', '1938-01-08 00:00:00'),
(8903, 'Орлов', 'Николай', 'Валентинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-29 00:00:00', '1938-01-08 00:00:00'),
(8904, 'Орлов', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8905, 'Остряков', 'Алексей', 'Владимирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(8906, 'Панков', 'Павел', 'Владимирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8907, 'Парфентьев', 'Дмитрий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(8908, 'Пахомов', 'Семен', 'Пахомович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(8909, 'Пленова', 'Матрена', 'Ивановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8910, 'Поляков', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8911, 'Растатурин', 'Николай', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8912, 'Ризванов', 'Сабирзян', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-18 00:00:00', '1938-01-08 00:00:00'),
(8913, 'Санников', 'Николай', 'Трифонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8914, 'Саубанов', 'Фахригаян', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-27 00:00:00', '1938-01-08 00:00:00'),
(8915, 'Свенцицкий', 'Юрий', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-27 00:00:00', '1938-01-08 00:00:00'),
(8916, 'Селянин', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8917, 'Сербаринов', 'Георгий', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-28 00:00:00', '1938-01-08 00:00:00'),
(8918, 'Серов', 'Григорий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(8919, 'Сидоршин', 'Ксенофонт', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(8920, 'Симекеев', 'Симинга', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-12 00:00:00', '1938-01-08 00:00:00'),
(8921, 'Симнов', 'Перфил', 'Фадеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(8922, 'Суворов', 'Нил', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(8923, 'Сухоруков', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(8924, 'Теплов', 'Александр', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(8925, 'Теплов', 'Яков', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(8926, 'Тогулев', 'Иван', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(8927, 'Хабибуллин', 'Султанбек', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8928, 'Хазиев', 'Наби', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8929, 'Халиков', 'Самат', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(8930, 'Ханнанов', 'Габдулманнан', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(8931, 'Хикматуллин', 'Бари', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-20 00:00:00', '1938-01-08 00:00:00'),
(8932, 'Хикматуллин', 'Нигматулла', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8933, 'Черкасов', 'Григорий', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(8934, 'Чехметьев', 'Константин', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8935, 'Чумаков', 'Алексей', 'Фролович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8936, 'Шайдуллин', 'Валимухамет', 'Шайдуллович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-27 00:00:00', '1938-01-08 00:00:00'),
(8937, 'Шамраевский', 'Павел', 'Аркадьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(8938, 'Шарафиев', 'Абзал', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(8939, 'Ширягин', 'Степан', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(8940, 'Юсупов', 'Исмагил', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(8941, 'Якупов', 'Лутфулла', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8942, 'Яушев', 'Касимхан', 'Рустемханович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-27 00:00:00', '1938-01-08 00:00:00'),
(8943, 'Кадыров', 'Хабибрахман', 'Кадырович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(8944, 'Карягин', 'Флегонт', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-31 00:00:00', '1938-01-08 00:00:00'),
(8945, 'Кубарев', 'Сергей', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8946, 'Кузьмичев-Емельянов', 'Иван', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8947, 'Лашкевич', 'Борис', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(8948, 'Лебер', 'Василий', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(8949, 'Мансуров', 'Сабир', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8950, 'Марьин', 'Василий', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(8951, 'Мусифуллин', 'Бадретдин', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(8952, 'Осипов', 'Николай', 'Макарович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8953, 'Палихов', 'Анатолий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(8954, 'Пермяков', 'Петр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8955, 'Потапова', 'Марфа', 'Александровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(8956, 'Рабиков', 'Заки', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8957, 'Рахимов', 'Салихзян', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8958, 'Рябрихин', 'Петр', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8959, 'Санников', 'Петр', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8960, 'Сахабутдинов', 'Гади', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8961, 'Сулейманов', 'Абдулла', 'Халилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-27 00:00:00', '1938-01-08 00:00:00'),
(8962, 'Таишев', 'Салих', 'Гатауллович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(8963, 'Тростянский', 'Дмитрий', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(8964, 'Тукмаков', 'Николай', 'Гурьянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8965, 'Файзрахманов', 'Хуснимардан', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(8966, 'Халилов', 'Фаррах', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(8967, 'Хузин', 'Нагим', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8968, 'Хуснутдинов', 'Шамсутдин', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-11 00:00:00', '1938-01-08 00:00:00'),
(8969, 'Чугунов', 'Федор', 'Захарович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(8970, 'Чумаков', 'Максим', 'Фролович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(8971, 'Шагиахметов', 'Хатып', 'Шагиахметович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(8972, 'Шаймурзин', 'Мубаракша', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(8973, 'Шарифуллин', 'Нурулла', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(8974, 'Белов', 'Александр', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(8975, 'Родин', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-06 00:00:00', '1938-01-08 00:00:00'),
(8976, 'Евстигнеев', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-31 00:00:00', '1938-01-08 00:00:00'),
(8977, 'Паржицкий', 'Игнатий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(8978, 'Патушинский', 'Ханум', 'Вениаминович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-06 00:00:00', '1938-01-08 00:00:00'),
(8979, 'Попов', 'Василий', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(8980, 'Прищепов', 'Федор', 'Миронович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(8981, 'Раецкий', 'Казимир', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-05 00:00:00', '1938-01-08 00:00:00'),
(8982, 'Ракитский', 'Александр', 'Францевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(8983, 'Рединов', 'Иван', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-05 00:00:00', '1938-01-08 00:00:00'),
(8984, 'Россель', 'Станислав', 'Фридрихович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-07 00:00:00', '1938-01-08 00:00:00'),
(8985, 'Рувель', 'Абрам', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-28 00:00:00', '1938-01-08 00:00:00'),
(8986, 'Рувель', 'Григорий', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-29 00:00:00', '1938-01-08 00:00:00'),
(8987, 'Рудницкий', 'Болеслав', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-25 00:00:00', '1938-01-08 00:00:00'),
(8988, 'Рузга', 'Роман', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-26 00:00:00', '1938-01-08 00:00:00'),
(8989, 'Сакович', 'София', 'Сигизмундовна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-22 00:00:00', '1938-01-08 00:00:00'),
(8990, 'Семенцев', 'Даниил', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(8991, 'Сидорянский', 'Николай', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-20 00:00:00', '1938-01-08 00:00:00'),
(8992, 'Соболевский', 'Рафаил', 'Селиверстович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(8993, 'Степман', 'Яков', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-23 00:00:00', '1938-01-08 00:00:00'),
(8994, 'Стрекаловский', 'Иннокентий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(8995, 'Суслин', 'Евмен', 'Сафонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(8996, 'Тарбеев', 'Василий', 'Сафронович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-31 00:00:00', '1938-01-08 00:00:00'),
(8997, 'Тарбеев', 'Егор', 'Сафронович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-31 00:00:00', '1938-01-08 00:00:00'),
(8998, 'Тепляков', 'Николай', 'Никонорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-20 00:00:00', '1938-01-08 00:00:00'),
(8999, 'Терехов', 'Тимофей', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9000, 'Точилкин', 'Евдоким', 'Карпович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9001, 'Точилкин', 'Иван', 'Евдокимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9002, 'Точилкин', 'Иван', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(9003, 'Турчак', 'Ефим', 'Парфентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(9004, 'Фудеман', 'Давид', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-09 00:00:00', '1938-01-08 00:00:00'),
(9005, 'Хомяк', 'Фокий', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9006, 'Хроменков', 'Тихон', 'Хрисанфович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-07 00:00:00', '1938-01-08 00:00:00'),
(9007, 'Цитовия', 'Александр', 'Захарович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(9008, 'Колесов', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9009, 'Смирнов', 'Василий', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9010, 'Смирнов', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9011, 'Титов', 'Василий', 'Титович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9012, 'Чистяков', 'Вячеслав', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9013, 'Тамм', 'Михаил', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-25 00:00:00', '1938-01-08 00:00:00'),
(9014, 'Павлов', 'Дмитрий', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9015, 'Михайлов', 'Василий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9016, 'Иванов', 'Иосиф', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9017, 'Деденков', 'Григорий', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9018, 'Повелайнен', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-05 00:00:00', '1938-01-08 00:00:00'),
(9019, 'Алексеев', 'Степан', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9020, 'Чернобуров', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-09 00:00:00', '1938-01-08 00:00:00'),
(9021, 'Тарасов', 'Яков', 'Тарасович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(9022, 'Григорьев', 'Никита', 'Куприянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-06 00:00:00', '1938-01-08 00:00:00'),
(9023, 'Трущановский', 'Андрей', 'Емельянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9024, 'Гудков', 'Николай', 'Прохорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9025, 'Клецкин', 'Дмитрий', 'Пименович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(9026, 'Абаринов', 'Михаил', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9027, 'Абрамов', 'Григорий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9028, 'Агава', 'Самуил', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9029, 'Аганин', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9030, 'Александров', 'Валентин', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9031, 'Александров', 'Николай', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(9032, 'Александров', 'Яков', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9033, 'Андреев', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(9034, 'Андреев', 'Степан', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9035, 'Андрейман', 'Антон', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-14 00:00:00', '1938-01-08 00:00:00'),
(9036, 'Андриевский', 'Филипп', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9037, 'Анохин', 'Михаил', 'Данилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-08 00:00:00', '1938-01-08 00:00:00'),
(9038, 'Арик', 'Эрнест', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9039, 'Артемьев', 'Сергей', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9040, 'Баар', 'Иван', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9041, 'Бабаев', 'Давид', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9042, 'Баженов', 'Алексей', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9043, 'Баньковская', 'Екатерина', 'Александровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(9044, 'Барабанов', 'Николай', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9045, 'Барабанова', 'Анна', 'Ефимовна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9046, 'Басин', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9047, 'Бежунский', 'Александр', 'Станиславович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(9048, 'Белоха', 'Ростислав', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(9049, 'Бельский', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9050, 'Беляев', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(9051, 'Берман', 'Мордух', 'Янкелевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9052, 'Бероев', 'Мацко', 'Исаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(9053, 'Били-Лазарев', 'Иван', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9054, 'Блусс', 'Август', 'Давыдович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9055, 'Богатырев', 'Иван', 'Никитович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9056, 'Богданов', 'Василий', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9057, 'Богданов', 'Николай', 'Ионович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(9058, 'Богданов', 'Семен', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9059, 'Богушевич', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9060, 'Бойко', 'Степан', 'Фомич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9061, 'Борнгардт', 'Георгий', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9062, 'Бочкарев', 'Борис', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9063, 'Брейтфус', 'Николай', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9064, 'Бурмистров', 'Василий', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9065, 'Бурмистров', 'Иван', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9066, 'Вагнер', 'Николай', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9067, 'Ванханен', 'Виктор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-05-25 00:00:00', '1938-01-08 00:00:00'),
(9068, 'Ван-Ю', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-24 00:00:00', '1938-01-08 00:00:00'),
(9069, 'Вартиайнен', 'Ааро', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9070, 'Васильев', 'Никифор', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9071, 'Васильев', 'Петр', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9072, 'Вейнберг', 'Мария', 'Гансовна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9073, 'Вейнер', 'Петр', 'Аркадьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9074, 'Вейолайнен', 'Иван', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(9075, 'Вельман', 'Фридрих', 'Янович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9076, 'Вельтищев', 'Александр', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9077, 'Венедиктова', 'Анна', 'Яковлевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9078, 'Веселовский', 'Николай', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9079, 'Ветюкова', 'Елена', 'Алексеевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9080, 'Винчи-Тищенкова', 'Надежда', 'Федоровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9081, 'Виришиев', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9082, 'Вирта', 'Эро', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9083, 'Вихров', 'Александр', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9084, 'Власенко', 'Нина', 'Петровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-27 00:00:00', '1938-01-08 00:00:00'),
(9085, 'Власов', 'Максим', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9086, 'Войнов', 'Евгений', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9087, 'Волков', 'Георгий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-28 00:00:00', '1938-01-08 00:00:00'),
(9088, 'Волков', 'Тимофей', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9089, 'Волков', 'Трофим', 'Трофимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9090, 'Волокославский', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9091, 'Волокославский', 'Алексей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9092, 'Воронин', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9093, 'Воскресенский', 'Вячеслав', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9094, 'Восман', 'Август', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-11 00:00:00', '1938-01-08 00:00:00'),
(9095, 'Вохта', 'Александр', 'Давыдович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9096, 'Выппер', 'Бернгард', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9097, 'Галактионов', 'Петр', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9098, 'Гаус', 'Эвальд', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-02 00:00:00', '1938-01-08 00:00:00'),
(9099, 'Герасимова', 'Евдокия', 'Николаевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9100, 'Герштейн', 'Лев', 'Борисович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(9101, 'Глажеев', 'Илья', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9102, 'Глядинский', 'Николай', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-03 00:00:00', '1938-01-08 00:00:00'),
(9103, 'Голубовский', 'Александр', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9104, 'Голышкин', 'Виктор', 'Евгеньевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9105, 'Гольдберг', 'Лев', 'Юльевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9106, 'Горшков', 'Александр', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9107, 'Греков', 'Николай', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(9108, 'Григорик', 'Лука', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9109, 'Григорьев', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9110, 'Григорьев', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9111, 'Гриншпон', 'Манус', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(9112, 'Громов', 'Сергей', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9113, 'Громов', 'Федор', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9114, 'Громов', 'Филарет', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9115, 'Грундман', 'Лев', 'Романович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9116, 'Гульят', 'Исаак', 'Давыдович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9117, 'Гусев', 'Георгий', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-03 00:00:00', '1938-01-08 00:00:00'),
(9118, 'Гущинский', 'Вячеслав', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9119, 'Гюппинен', 'Иван', 'Фомич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9120, 'Давыдов', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9121, 'Давыдова', 'Таисия', 'Авдеевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-13 00:00:00', '1938-01-08 00:00:00'),
(9122, 'Данилочкин', 'Иван', 'Андрианович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-31 00:00:00', '1938-01-08 00:00:00'),
(9123, 'Дармо', 'Авраам', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9124, 'Дейлид-Терещенко', 'Николай', 'Владимирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-05 00:00:00', '1938-01-08 00:00:00'),
(9125, 'Делли', 'Лев', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9126, 'Дмитриев', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9127, 'Дмитриев', 'Филипп', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9128, 'Доннер', 'Федор', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9129, 'Дрокина', 'Александра', 'Николаевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-23 00:00:00', '1938-01-08 00:00:00'),
(9130, 'Друри', 'Василий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9131, 'Дубровин', 'Дмитрий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9132, 'Евстафеев', 'Яков', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9133, 'Егоров', 'Павел', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9134, 'Елисеев', 'Иван', 'Елисеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9135, 'Ерофеев', 'Федор', 'Ерофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9136, 'Ефимов', 'Тимофей', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9137, 'Жмылев', 'Михаил', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9138, 'Журавлев', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-22 00:00:00', '1938-01-08 00:00:00'),
(9139, 'Жучкова', 'Ксения', 'Александровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9140, 'Забродин', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9141, 'Залевский', 'Леонид', 'Леонидович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9142, 'Захаров', 'Афанасий', 'Дорофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9143, 'Захаров', 'Григорий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9144, 'Захаров', 'Павел', 'Захарович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9145, 'Заяев', 'Константин', 'Лаврентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9146, 'Зек', 'Георгий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-08 00:00:00', '1938-01-08 00:00:00'),
(9147, 'Зорин-Зусман', 'Евгений', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9148, 'Зотикова', 'Анастасия', 'Ефимовна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9149, 'Иванов', 'Владимир', 'Антипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9150, 'Иванов', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9151, 'Иванов', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-15 00:00:00', '1938-01-08 00:00:00'),
(9152, 'Игнатьев', 'Игнатий', 'Владимирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-23 00:00:00', '1938-01-08 00:00:00'),
(9153, 'Изотов', 'Иван', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9154, 'Израилов', 'Яков', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-24 00:00:00', '1938-01-08 00:00:00'),
(9155, 'Ильвест', 'Александр', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9156, 'Ионас', 'Август', 'Минович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9157, 'Ирбе', 'Отто', 'Рейнович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9158, 'Исола', 'Матти', 'Хейкович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9159, 'Кабаев', 'Александр', 'Валерианович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9160, 'Калиберский', 'Владимир', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9161, 'Каминский', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9162, 'Камнев-Петерс', 'Владимир', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9163, 'Камочкина', 'Екатерина', 'Ивановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9164, 'Камышнюк', 'Екатерина', 'Васильевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-13 00:00:00', '1938-01-08 00:00:00'),
(9165, 'Кангур', 'Евгения', 'Федоровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(9166, 'Каннонен-Кнутинен', 'Матвей', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9167, 'Карасев', 'Иван', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(9168, 'Кармано', 'Арне-Ялмари-Иоганес', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-11 00:00:00', '1938-01-08 00:00:00'),
(9169, 'Карпин', 'Петр', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9170, 'Карху', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-18 00:00:00', '1938-01-08 00:00:00'),
(9171, 'Карьялайнен', 'Вилхо Хейкки', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-11 00:00:00', '1938-01-08 00:00:00'),
(9172, 'Кауц', 'Оскар', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9173, 'Кащенко', 'Григорий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9174, 'Кеске', 'Александр', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9175, 'Киесси', 'Томас', 'Германович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9176, 'Кийски', 'Константин', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(9177, 'Кийски', 'Мартын', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9178, 'Кимм', 'Юлиус', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9179, 'Кириллова', 'Валентина', 'Ивановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9180, 'Кирьявайнен', 'Иван', 'Генрихович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9181, 'Кирьяринта', 'Ялмар', 'Фридрихович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9182, 'Киселев', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9183, 'Киссель', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(9184, 'Клевенский', 'Лев', 'Леонидович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9185, 'Климович', 'Евгений', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9186, 'Клюев', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9187, 'Кнуде', 'Александр', 'Мартынович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9188, 'Князев', 'Дмитрий', 'Никитич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9189, 'Ковальская', 'Надежда', 'Александровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9190, 'Ковальский', 'Иосиф', 'Витальевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-20 00:00:00', '1938-01-08 00:00:00'),
(9191, 'Кокка', 'Михаил', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9192, 'Колачев', 'Федор', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9193, 'Колесников', 'Тимофей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-21 00:00:00', '1938-01-08 00:00:00'),
(9194, 'Колесов', 'Филипп', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9195, 'Колмычков', 'Андрей', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9196, 'Колосов', 'Дмитрий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9197, 'Колосов', 'Карп', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9198, 'Комлев', 'Андрей', 'Спиридонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9199, 'Коноплев', 'Андрей', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9200, 'Коньков', 'Егор', 'Тарасович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9201, 'Корнев', 'Николай', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9202, 'Корнеев', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-26 00:00:00', '1938-01-08 00:00:00'),
(9203, 'Корнилов', 'Андрей', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9204, 'Королев', 'Федор', 'Архипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9205, 'Корсаков', 'Владимир', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9206, 'Корсаков', 'Леонтий', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9207, 'Коскенвирта', 'Карл', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9208, 'Косолайнен', 'Мария', 'Михайловна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9209, 'Крылов', 'Дементий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9210, 'Крылов', 'Константин', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9211, 'Кубаринен', 'Иван', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9212, 'Кудрявцева', 'Елизавета', 'Ивановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9213, 'Кузик', 'Кузьма', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9214, 'Кузнецов', 'Владимир', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9215, 'Кузнецов', 'Георгий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9216, 'Кукк', 'Амалия', 'Юрьевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9217, 'Куликов', 'Георгий', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9218, 'Кург', 'Иван', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9219, 'Кучинский', 'Вячеслав', 'Феликсович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-09 00:00:00', '1938-01-08 00:00:00'),
(9220, 'Куяла', 'Эмиль', 'Генрихович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9221, 'Кясперт', 'Август', 'Мартынович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9222, 'Кяхер', 'Рейно', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9223, 'Лаврентьева', 'Альма', 'Андреевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9224, 'Лавров', 'Василий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9225, 'Лазарев', 'Борис', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-22 00:00:00', '1938-01-08 00:00:00'),
(9226, 'Лазарев', 'Зоя', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9227, 'Лазарев', 'Нумруд', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9228, 'Лайтинен', 'Степан', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(9229, 'Ламанен', 'Давид', 'Пантелеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9230, 'Ламенен', 'Александр', 'Давыдович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9231, 'Лаппи', 'Эстер', 'Давыдовна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9232, 'Лебедев', 'Арсений', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9233, 'Левоев', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9234, 'Левшаков', 'Нил', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9235, 'Лельбред', 'Александр', 'Рудольфович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-02 00:00:00', '1938-01-08 00:00:00'),
(9236, 'Лери', 'Андрей', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-18 00:00:00', '1938-01-08 00:00:00'),
(9237, 'Лери', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(9238, 'Лери', 'Михаил', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-22 00:00:00', '1938-01-08 00:00:00'),
(9239, 'Лесков', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9240, 'Лесков', 'Иван', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9241, 'Лескова', 'Александра', 'Федоровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9242, 'Леушка', 'Матвей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9243, 'Ликсо', 'Дмитрий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9244, 'Лимфорс', 'Валентин', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9245, 'Линкштейн', 'Александр', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-01 00:00:00', '1938-01-08 00:00:00'),
(9246, 'Лобский', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-25 00:00:00', '1938-01-08 00:00:00'),
(9247, 'Логинов', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-26 00:00:00', '1938-01-08 00:00:00'),
(9248, 'Лукин', 'Александр', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9249, 'Лукка', 'Матвей', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(9250, 'Лутс', 'Амалия', 'Андреевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-29 00:00:00', '1938-01-08 00:00:00'),
(9251, 'Луттиев', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9252, 'Лыкошин', 'Павел', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9253, 'Львов', 'Алексей', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9254, 'Лямин', 'Степан', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9255, 'Макара', 'Даниил', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9256, 'Макара', 'Егор', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9257, 'Максимов', 'Николай', 'Максимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9258, 'Малевинский', 'Феодосий', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9259, 'Малей', 'Павел', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9260, 'Малейкович', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9261, 'Марков', 'Степан', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9262, 'Маркосов', 'Маркос', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9263, 'Марченко', 'Николай', 'Данилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9264, 'Маршицкая', 'Екатерина', 'Дмитриевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9265, 'Маршицкий', 'Иннокентий', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9266, 'Массар', 'Пауль', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-20 00:00:00', '1938-01-08 00:00:00'),
(9267, 'Матсон', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9268, 'Межуев', 'Петр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9269, 'Мезик', 'Александр', 'Иваович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9270, 'Мелеев', 'Егор', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9271, 'Мельников', 'Ефим', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9272, 'Мендрик', 'Оскар', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9273, 'Мигунов', 'Дмитрий', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9274, 'Микешин', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9275, 'Миловзоров', 'Алексей', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9276, 'Миронов', 'Иван', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9277, 'Миронова', 'Мария', 'Мироновна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9278, 'Митлинер', 'Оскар', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9279, 'Митягин', 'Николай', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9280, 'Михайлов', 'Леонтий', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-10 00:00:00', '1938-01-08 00:00:00'),
(9281, 'Михайлов', 'Степан', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9282, 'Мицкевич', 'Константин', 'Викентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9283, 'Моисеев', 'Николай', 'Моисеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9284, 'Мольтин', 'Фридрих', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9285, 'Моор', 'Александр', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9286, 'Морозов', 'Андрей', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00');
INSERT INTO `product` (`id`, `name`, `surname`, `patronymic`, `description`, `price`, `asset_base_url`, `asset_path`, `map_id`, `owner_id`, `date_one`, `date_two`) VALUES
(9287, 'Моруев', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9288, 'Нагель', 'Борис', 'Юльевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9289, 'Наумов', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9290, 'Наумов', 'Степан', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9291, 'Недобуга', 'Андриан', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9292, 'Неелов', 'Александр', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9293, 'Некрасов', 'Николай', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-05-02 00:00:00', '1938-01-08 00:00:00'),
(9294, 'Ни', 'Григорий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(9295, 'Нигберг', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9296, 'Никитин', 'Леонид', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9297, 'Никитин', 'Петр', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9298, 'Никитин-Лупаков', 'Федор', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9299, 'Николаев', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9300, 'Николаев', 'Иван', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9301, 'Овчинников', 'Павел', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9302, 'Огурцов', 'Василий', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-25 00:00:00', '1938-01-08 00:00:00'),
(9303, 'Одинцова', 'Елена', 'Андреевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9304, 'Олконен', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(9305, 'Орбидан', 'Петр', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9306, 'Орлов', 'Иван', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9307, 'Осинский', 'Николай', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-05 00:00:00', '1938-01-08 00:00:00'),
(9308, 'Осипов', 'Алексей', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9309, 'Осипов', 'Василий', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9310, 'Осипов', 'Дмитрий', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9311, 'Островский', 'Николай', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9312, 'Охотин', 'Сергей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-03-13 00:00:00', '1938-01-08 00:00:00'),
(9313, 'Ошевенская', 'Евгения', 'Петровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9314, 'Павилайнен', 'Армус', 'Самуилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(9315, 'Павлова', 'Екатерина', 'Ивановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-23 00:00:00', '1938-01-08 00:00:00'),
(9316, 'Палк', 'Оскар', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9317, 'Панин', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9318, 'Панфилов', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9319, 'Парфенова', 'Мария', 'Назаровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9320, 'Пастухов', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9321, 'Пастухов', 'Феоктист', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9322, 'Пегалис', 'Лев', 'Борисович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(9323, 'Пенние', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-08 00:00:00', '1938-01-08 00:00:00'),
(9324, 'Песси', 'Михаил', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9325, 'Петренко', 'Павел', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(9326, 'Петриляйнен', 'Тойво', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9327, 'Петров', 'Иван', 'Васьянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9328, 'Петров', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9329, 'Петровский', 'Иван', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9330, 'Петтай', 'Юган', 'Фридрихович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9331, 'Петухов', 'Николай', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9332, 'Писарев', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-26 00:00:00', '1938-01-08 00:00:00'),
(9333, 'Плигин', 'Павел', 'Афанасьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9334, 'Плющик-Плющевский', 'Григорий', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9335, 'Познанский', 'Борис', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-02-19 00:00:00', '1938-01-08 00:00:00'),
(9336, 'Политов', 'Федор', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9337, 'Полтиев', 'Владимир', 'Афанасьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9338, 'Полуэктов', 'Константин', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9339, 'Понкратьев', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(9340, 'Прикотт', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(9341, 'Пуса', 'Михаил', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9342, 'Ранд', 'Яков', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-22 00:00:00', '1938-01-08 00:00:00'),
(9343, 'Ратасепп', 'Карл', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9344, 'Раутонен', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9345, 'Раутонен', 'Иван', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9346, 'Рейгас', 'Александр', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9347, 'Рейномяги-Ребане', 'Алида', 'Людвиговна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9348, 'Репнер', 'Андрей', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(9349, 'Романов', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9350, 'Романов', 'Николай', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9351, 'Романов', 'Петр', 'Зосимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-08 00:00:00', '1938-01-08 00:00:00'),
(9352, 'Ронден', 'Иван-Иоган', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9353, 'Рябов', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9354, 'Рянгель', 'Иван-Иоган', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9355, 'Рятсеп', 'Артур', 'Юганович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9356, 'Саар', 'Элла', 'Юрьевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-21 00:00:00', '1938-01-08 00:00:00'),
(9357, 'Савинов', 'Андрей', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9358, 'Сакса', 'Степан', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9359, 'Сало', 'Ааке', 'Августович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9360, 'Сало', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-05 00:00:00', '1938-01-08 00:00:00'),
(9361, 'Самсонов', 'Георгий', 'Владимирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-16 00:00:00', '1938-01-08 00:00:00'),
(9362, 'Санде', 'Леонард', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-11 00:00:00', '1938-01-08 00:00:00'),
(9363, 'Сапурин', 'Николай', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9364, 'Саунин', 'Терентий', 'Лукич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9365, 'Свилло', 'Владимир', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9366, 'Свистун', 'Евмен', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(9367, 'Селедцев', 'Алексей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-01 00:00:00', '1938-01-08 00:00:00'),
(9368, 'Семенов', 'Михей', 'Карпович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9369, 'Сергеев', 'Иван', 'Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9370, 'Серебренников', 'Иннокентий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9371, 'Сиберг', 'Ян', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9372, 'Сильбаум', 'Бернард', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9373, 'Симанов', 'Иосиф', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(9374, 'Симон', 'Владимир', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9375, 'Син', 'Стахей', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-01 00:00:00', '1938-01-08 00:00:00'),
(9376, 'Сирель', 'Август', 'Элиасович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(9377, 'Смирнов', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9378, 'Смирнова', 'Анна', 'Антоновна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9379, 'Смирнова', 'Прасковья', 'Антоновна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9380, 'Совва', 'Станислав', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9381, 'Сово', 'Рейно', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9382, 'Сово', 'Степан', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(9383, 'Солдаткин', 'Степан', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9384, 'Староверов', 'Михаил', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9385, 'Старостин', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9386, 'Степанов', 'Василий', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9387, 'Степанов', 'Егор', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9388, 'Столяров', 'Александр', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9389, 'Страхов', 'Георгий', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9390, 'Студзинский', 'Елисей', 'Северинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-22 00:00:00', '1938-01-08 00:00:00'),
(9391, 'Стулов', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9392, 'Суксин', 'Егор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9393, 'Сумманен', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9394, 'Сумманен', 'Рейно', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9395, 'Сэмен', 'Вальтер', 'Иоганович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9396, 'Сяск', 'Эдуард', 'Адамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9397, 'Таланов', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9398, 'Тамм', 'Михаил', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-25 00:00:00', '1938-01-08 00:00:00'),
(9399, 'Татти', 'Семен', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9400, 'Теревяйнен', 'Исидор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9401, 'Тетчиев', 'Андрей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9402, 'Тилло', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9403, 'Тиманьков', 'Андрей', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(9404, 'Тинкер', 'Александр', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-09 00:00:00', '1938-01-08 00:00:00'),
(9405, 'Типеницкий', 'Александр', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-01 00:00:00', '1938-01-08 00:00:00'),
(9406, 'Тирронен', 'Михаил', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9407, 'Тирронен', 'Эйнар', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9408, 'Тихомирова', 'Екатерина', 'Ивановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9409, 'Тихоненко', 'Антон', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9410, 'Тойвияйнен', 'Карл', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-12 00:00:00', '1938-01-08 00:00:00'),
(9411, 'Токканд', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9412, 'Томбах', 'Юрий', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9413, 'Тоффери', 'Ойво', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-14 00:00:00', '1938-01-08 00:00:00'),
(9414, 'Троицкий', 'Степан', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9415, 'Трофимов', 'Александр', 'Трофимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9416, 'Трошенков', 'Александр', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9417, 'Турышев', 'Прокопий', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9418, 'Тюллин', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9419, 'Тяжелов', 'Борис', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9420, 'Тян-Си', 'Михаил', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9421, 'Узберг', 'Павел', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9422, 'Устинов', 'Яков', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9423, 'Утту', 'Василий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9424, 'Утту', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9425, 'Фадеев', 'Иван', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9426, 'Фалькин', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9427, 'Федоров', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9428, 'Федоров', 'Борис', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9429, 'Федоров', 'Тимофей', 'Лазаревич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9430, 'Федосеев', 'Петр', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9431, 'Федотов', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9432, 'Федотов', 'Михаил', 'Федотович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9433, 'Феничев', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9434, 'Феоктистов', 'Гавриил', 'Дементьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9435, 'Филиппов', 'Василий', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-04 00:00:00', '1938-01-08 00:00:00'),
(9436, 'Фомичев', 'Владимир', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(9437, 'Фугенфиров', 'Натан', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(9438, 'Харичев', 'Федор', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9439, 'Хейм', 'Александр', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9440, 'Хилтунен', 'Сайма', 'Эриковна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-13 00:00:00', '1938-01-08 00:00:00'),
(9441, 'Хильманович', 'Фома', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9442, 'Хорев', 'Иван', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9443, 'Хоренков', 'Николай', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9444, 'Христинин', 'Александр', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-24 00:00:00', '1938-01-08 00:00:00'),
(9445, 'Худяков', 'Николай', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9446, 'Хяннинен', 'Алла', 'Александровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9447, 'Хяннинен', 'Кайно', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9448, 'Хяргонен', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(9449, 'Цапалин', 'Александр', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9450, 'Цветков', 'Алексей', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(9451, 'Цирилинский', 'Антон', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9452, 'Цой', 'Максим', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9453, 'Чан-Лен-Цин', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9454, 'Чатчанов', 'Григорий', 'Никитич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9455, 'Чащина', 'Наталия', 'Васильевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9456, 'Челпанов', 'Василий', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9457, 'Черноносов', 'Александр', 'Митрофанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9458, 'Чижиков', 'Семен', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9459, 'Чистяков', 'Вячеслав', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9460, 'Чупин', 'Андрей', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9461, 'Чуркин', 'Максим', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-25 00:00:00', '1938-01-08 00:00:00'),
(9462, 'Шавельский', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-03-13 00:00:00', '1938-01-08 00:00:00'),
(9463, 'Шапкин', 'Василий', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9464, 'Шеин', 'Виктор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9465, 'Шепелев', 'Прокофий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9466, 'Шишкин', 'Лев', 'Львович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9467, 'Шлипкин', 'Василий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9468, 'Шнейдер', 'Евгений', 'Робертович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9469, 'Штейнбах', 'Ян', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9470, 'Шувалов', 'Василий', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9471, 'Шуйский', 'Виктор', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9472, 'Шульбах', 'Август', 'Давыдович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9473, 'Шультайс', 'Константин', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9474, 'Шумунов', 'Василий', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-25 00:00:00', '1938-01-08 00:00:00'),
(9475, 'Шушарин', 'Нил', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9476, 'Щуров', 'Николай', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-14 00:00:00', '1938-01-08 00:00:00'),
(9477, 'Энрут', 'Арвид', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9478, 'Эскен', 'Март', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9479, 'Эскен', 'Микк', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9480, 'Эскен', 'Эльза', 'Михайловна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(9481, 'Юзюк', 'Гавриил', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9482, 'Юн', 'Николай', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9483, 'Юргияйнен', 'Давыд', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9484, 'Юргияйнен', 'Степан', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9485, 'Юрисон', 'Виктор', 'Самуйлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9486, 'Ющиев', 'Николай', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-31 00:00:00', '1938-01-08 00:00:00'),
(9487, 'Якимов', 'Василий', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9488, 'Якконен', 'Иван', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9489, 'Яковлев', 'Василий', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9490, 'Яковлев', 'Яков', 'Тарасович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(9491, 'Якубович', 'Александр', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-28 00:00:00', '1938-01-08 00:00:00'),
(9492, 'Ялаяс', 'Карл', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9493, 'Яценко-Клочко', 'Даниил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-05 00:00:00', '1938-01-08 00:00:00'),
(9494, 'Виноградов', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9495, 'Молчановский', 'Яков', 'Афанасьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-14 00:00:00', '1938-01-08 00:00:00'),
(9496, 'Смоландер', 'Гуннар', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9497, 'Виноградов', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9498, 'Вержбицкий', 'Дмитрий', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(9499, 'Шиманович', 'Николай', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-09 00:00:00', '1938-01-08 00:00:00'),
(9500, 'Александрович', 'Викентий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(9501, 'Ананько', 'Владимир', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9502, 'Бабровский', 'Иван', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9503, 'Байко', 'Иосиф', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9504, 'Болдашевич', 'Станислав', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-21 00:00:00', '1938-01-08 00:00:00'),
(9505, 'Босько', 'Иван', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(9506, 'Вейкшня', 'Феликс', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9507, 'Векша', 'Александр', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-08 00:00:00', '1938-01-08 00:00:00'),
(9508, 'Вербицкий', 'Николай', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-09 00:00:00', '1938-01-08 00:00:00'),
(9509, 'Громыко', 'Дмитрий', 'Прохорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-11 00:00:00', '1938-01-08 00:00:00'),
(9510, 'Гурский', 'Иосиф', 'Викентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-15 00:00:00', '1938-01-08 00:00:00'),
(9511, 'Дударчик', 'Иван', 'Кондратьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-06 00:00:00', '1938-01-08 00:00:00'),
(9512, 'Зуевский', 'Стефан', 'Фомич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9513, 'Качанов', 'Иван', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-18 00:00:00', '1938-01-08 00:00:00'),
(9514, 'Ковалевский', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9515, 'Козловская', 'Вера', 'Викентьевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9516, 'Кононович', 'Болеслав', 'Мечеславович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(9517, 'Макеенко', 'Захар', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9518, 'Мокрицкая-Клезович', 'Екатерина', 'Фоминична', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9519, 'Мороз', 'Франц', 'Казимирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-21 00:00:00', '1938-01-08 00:00:00'),
(9520, 'Панасенко', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-28 00:00:00', '1938-01-08 00:00:00'),
(9521, 'Пилецкий', 'Станислав', 'Марцелевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-03 00:00:00', '1938-01-08 00:00:00'),
(9522, 'Пупкевич', 'Иван', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(9523, 'Равницкий', 'Илья', 'Клементьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-16 00:00:00', '1938-01-08 00:00:00'),
(9524, 'Ромашкевич', 'Вячеслав', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-04 00:00:00', '1938-01-08 00:00:00'),
(9525, 'Садовский', 'Станислав', 'Викентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9526, 'Санкович', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-09 00:00:00', '1938-01-08 00:00:00'),
(9527, 'Санторович', 'Никонор', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-04 00:00:00', '1938-01-08 00:00:00'),
(9528, 'Семенец', 'Иосиф', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-23 00:00:00', '1938-01-08 00:00:00'),
(9529, 'Смяровская', 'Владислава', 'Чеславовна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9530, 'Спалинский', 'Люциан', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-10 00:00:00', '1938-01-08 00:00:00'),
(9531, 'Страхович', 'Аркадий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(9532, 'Тур', 'Николай', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-07 00:00:00', '1938-01-08 00:00:00'),
(9533, 'Унгер', 'Соломон', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(9534, 'Форнальский', 'Станислав', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(9535, 'Шацукевич', 'Любовь', 'Константиновна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-28 00:00:00', '1938-01-08 00:00:00'),
(9536, 'Шульгович', 'Франц', 'Францевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9537, 'Эткин', 'Гирш', 'Беркович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-24 00:00:00', '1938-01-08 00:00:00'),
(9538, 'Ярошевич', 'Семен', 'Августович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-08 00:00:00', '1938-01-08 00:00:00'),
(9539, 'Ермашкевич', 'Василий', 'Романович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9540, 'Гомбожабон', 'Дондуп-Ринчин', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-25 00:00:00', '1938-01-08 00:00:00'),
(9541, 'Гомбоин', 'Цырен-Доржи', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-24 00:00:00', '1938-01-08 00:00:00'),
(9542, 'Жабон', 'Жаргал', 'Жапович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-27 00:00:00', '1938-01-08 00:00:00'),
(9543, 'Малиновский', 'Павел', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-16 00:00:00', '1938-01-08 00:00:00'),
(9544, 'Доманский', 'Стефан', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9545, 'Кучинский', 'Станислав', 'Болеславович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-04 00:00:00', '1938-01-08 00:00:00'),
(9546, 'Король', 'Тимофей', 'Терентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(9547, 'Белый', 'Назар', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9548, 'Боголюбский', 'Сергей', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(9549, 'Браун', 'Яков', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(9550, 'Гайворонский', 'Георгий', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-23 00:00:00', '1938-01-08 00:00:00'),
(9551, 'Гущин', 'Александр', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9552, 'Евстратов', 'Сергей', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9553, 'Есион', 'Адам', 'Маврикиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-28 00:00:00', '1938-01-08 00:00:00'),
(9554, 'Зенов', 'Иосиф', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9555, 'Камочкин', 'Александр', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-22 00:00:00', '1938-01-08 00:00:00'),
(9556, 'Кирин', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-01 00:00:00', '1938-01-08 00:00:00'),
(9557, 'Кузьмичев', 'Алексей', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9558, 'Любимов', 'Алексей', 'Виссарионович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9559, 'Михайлов', 'Николай', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9560, 'Наумович', 'Александр', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9561, 'Овчаренко', 'Алексей', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9562, 'Пашковский', 'Александр', 'Владимирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9563, 'Полак', 'Виктор', 'Августович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-18 00:00:00', '1938-01-08 00:00:00'),
(9564, 'Разумов-Сергеев', 'Алексей', 'Никитович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9565, 'Руфф', 'Берта', 'Христофоровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-20 00:00:00', '1938-01-08 00:00:00'),
(9566, 'Семенченко', 'Валентин', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9567, 'Семеняченко', 'Андриан', 'Савельевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9568, 'Таганский', 'Шлема', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-25 00:00:00', '1938-01-08 00:00:00'),
(9569, 'Трояновская', 'Голда', 'Аврум-Ицковна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-05 00:00:00', '1938-01-08 00:00:00'),
(9570, 'Чимбирев', 'Порфирий', 'Наумович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9571, 'Шабанов', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9572, 'Шаборда', 'Степан', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9573, 'Шелков', 'Матвей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9574, 'Эпов', 'Алексей', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-22 00:00:00', '1938-01-08 00:00:00'),
(9575, 'Южакова', 'Римма', 'Валериановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-01 00:00:00', '1938-01-08 00:00:00'),
(9576, 'Яблоновский-Спадзский', 'Петр', 'Мамертович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9577, 'Янушевская', 'Мария', 'Мечиславовна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-21 00:00:00', '1938-01-08 00:00:00'),
(9578, 'Винклер', 'Альфред', 'Максимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-30 00:00:00', '1938-01-08 00:00:00'),
(9579, 'Павлов', 'Владимир', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9580, 'Алас', 'Эдуард', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9581, 'Артюкевич', 'Борис', 'Викентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-21 00:00:00', '1938-01-08 00:00:00'),
(9582, 'Барамидзе', 'Евгений', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-25 00:00:00', '1938-01-08 00:00:00'),
(9583, 'Башлыков', 'Анатолий', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9584, 'Беспахотный', 'Дмитрий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9585, 'Богуславский', 'Абрам', 'Моисеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9586, 'Борисенко', 'Василий', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00'),
(9587, 'Брасов', 'Александр', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(9588, 'Брискин', 'Александр', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-06 00:00:00', '1938-01-08 00:00:00'),
(9589, 'Брусин', 'Наум', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-25 00:00:00', '1938-01-08 00:00:00'),
(9590, 'Бубнова', 'Ольга', 'Николаевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9591, 'Бурдынь', 'Анс', 'Ансович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9592, 'Бурков', 'Алексей', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9593, 'Векличев', 'Георгий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-07 00:00:00', '1938-01-08 00:00:00'),
(9594, 'Вильнит', 'Иван', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9595, 'Гейгнер', 'Давид', 'Исаакович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9596, 'Гельфер', 'Евгений', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-20 00:00:00', '1938-01-08 00:00:00'),
(9597, 'Гертель', 'Казимир', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9598, 'Гетье', 'Александр', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9599, 'Глазенап', 'Ольгерд', 'Генрихович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9600, 'Глуган', 'Дмитрий', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-20 00:00:00', '1938-01-08 00:00:00'),
(9601, 'Глуган', 'Петр', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-20 00:00:00', '1938-01-08 00:00:00'),
(9602, 'Голиев', 'Георгий', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(9603, 'Гребенев', 'Николай', 'Титович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-11 00:00:00', '1938-01-08 00:00:00'),
(9604, 'Гробинь', 'Петр', 'Янович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9605, 'Гурович', 'Эдуард', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9606, 'Данишевский', 'Карл', 'Христианович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-16 00:00:00', '1938-01-08 00:00:00'),
(9607, 'Дубровин', 'Борис', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9608, 'Ершов', 'Виктор', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-15 00:00:00', '1938-01-08 00:00:00'),
(9609, 'Жук', 'Владимир', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-14 00:00:00', '1938-01-08 00:00:00'),
(9610, 'Журавлев', 'Василий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9611, 'Запарин', 'Василий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-30 00:00:00', '1938-01-08 00:00:00'),
(9612, 'Зонберг', 'Гильда', 'Яновна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-26 00:00:00', '1938-01-08 00:00:00'),
(9613, 'Каневский', 'Авраам', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-01-29 00:00:00', '1938-01-08 00:00:00'),
(9614, 'Капельсон', 'Макс', 'Давидович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-05 00:00:00', '1938-01-08 00:00:00'),
(9615, 'Комиссаржевский', 'Николай', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9616, 'Коршунов', 'Сергей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-16 00:00:00', '1938-01-08 00:00:00'),
(9617, 'Ласис', 'Иоган', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9618, 'Лашевич', 'Ида', 'Владимировна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-22 00:00:00', '1938-01-08 00:00:00'),
(9619, 'Лебсак', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-22 00:00:00', '1938-01-08 00:00:00'),
(9620, 'Ленгиель', 'Юлий', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9621, 'Ливент-Левит', 'Стефания', 'Людвиговна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-14 00:00:00', '1938-01-08 00:00:00'),
(9622, 'Лобанов', 'Дмитрий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9623, 'Логановская', 'Мария', 'Ивановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-16 00:00:00', '1938-01-08 00:00:00'),
(9624, 'Мамонов', 'Николай', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-22 00:00:00', '1938-01-08 00:00:00'),
(9625, 'Мамулов', 'Александр', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(9626, 'Мильтер', 'Фриц', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-08 00:00:00', '1938-01-08 00:00:00'),
(9627, 'Михельман', 'Даниил', 'Давыдович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(9628, 'Морозов', 'Иван', 'Силыч', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-20 00:00:00', '1938-01-08 00:00:00'),
(9629, 'Наумин', 'Наум', 'Ионович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-22 00:00:00', '1938-01-08 00:00:00'),
(9630, 'Нацаренус', 'Сергей', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-05 00:00:00', '1938-01-08 00:00:00'),
(9631, 'Невский', 'Василий', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-08 00:00:00', '1938-01-08 00:00:00'),
(9632, 'Ошмарин', 'Михаил', 'Тихонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-27 00:00:00', '1938-01-08 00:00:00'),
(9633, 'Павловский', 'Владимир', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(9634, 'Пайгачев', 'Алексей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(9635, 'Перкин', 'Дмитрий', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-23 00:00:00', '1938-01-08 00:00:00'),
(9636, 'Перышкин', 'Григорий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-15 00:00:00', '1938-01-08 00:00:00'),
(9637, 'Петрушин', 'Семен', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(9638, 'Плисецкий', 'Михаил', 'Эммануилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-30 00:00:00', '1938-01-08 00:00:00'),
(9639, 'Подчепаев', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-20 00:00:00', '1938-01-08 00:00:00'),
(9640, 'Ратнер', 'Александр', 'Давидович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9641, 'Ратнер', 'Эммануил', 'Наумович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-10 00:00:00', '1938-01-08 00:00:00'),
(9642, 'Ройтман', 'Петр', 'Давидович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-20 00:00:00', '1938-01-08 00:00:00'),
(9643, 'Романов', 'Николай', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-25 00:00:00', '1938-01-08 00:00:00'),
(9644, 'Ростовский', 'Яков', 'Лазаревич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-21 00:00:00', '1938-01-08 00:00:00'),
(9645, 'Рудницкий', 'Лазарь', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-05-27 00:00:00', '1938-01-08 00:00:00'),
(9646, 'Рукомойникова', 'Лидия', 'Владимировна', NULL, NULL, NULL, NULL, NULL, NULL, '1936-11-06 00:00:00', '1938-01-08 00:00:00'),
(9647, 'Руппель', 'Генрих', 'Фердинандович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(9648, 'Рыжманов', 'Александр', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-06 00:00:00', '1938-01-08 00:00:00'),
(9649, 'Рябовол', 'Константин', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(9650, 'Рябухина-Седова', 'Анна', 'Самойловна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-26 00:00:00', '1938-01-08 00:00:00'),
(9651, 'Сандлер', 'Давид', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9652, 'Севостьянов', 'Федор', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-14 00:00:00', '1938-01-08 00:00:00'),
(9653, 'Серегин', 'Василий', 'Никандрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-08 00:00:00', '1938-01-08 00:00:00'),
(9654, 'Синицын', 'Алексей', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9655, 'Слепян', 'Иосиф', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9656, 'Сливина', 'Нина', 'Петровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(9657, 'Смиренков', 'Андрей', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9658, 'Сухарев', 'Евгений', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-14 00:00:00', '1938-01-08 00:00:00'),
(9659, 'Те-Хун', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9660, 'Тозиков', 'Павел', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-21 00:00:00', '1938-01-08 00:00:00'),
(9661, 'Уланов-Зиновьев', 'Гавриил', 'Данилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-05-31 00:00:00', '1938-01-08 00:00:00'),
(9662, 'Ферштер', 'Иосиф', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(9663, 'Фишзон', 'Авраам', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9664, 'Фомин', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9665, 'Циферов', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9666, 'Челяпов', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-14 00:00:00', '1938-01-08 00:00:00'),
(9667, 'Черняев', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-04 00:00:00', '1938-01-08 00:00:00'),
(9668, 'Шаблеев', 'Евгений', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9669, 'Эйдельштейн', 'Зелик', 'Ушерович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9670, 'Юлин', 'Степан', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1936-11-03 00:00:00', '1938-01-08 00:00:00'),
(9671, 'Юссак', 'Генрих', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9672, 'Яновская', 'Ида', 'Григорьевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(9673, 'Янсон', 'Жан', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-13 00:00:00', '1938-01-08 00:00:00'),
(9674, 'Янсон', 'Ян', 'Эрнестович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9675, 'Авиновицкий', 'Яков', 'Лазаревич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-27 00:00:00', '1938-01-08 00:00:00'),
(9676, 'Аврамов', 'Роман', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-27 00:00:00', '1938-01-08 00:00:00'),
(9677, 'Цишкевич', 'Феликс', 'Маморшович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9678, 'Мендельс', 'Артур', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9679, 'Прэдэ', 'Фридрих', 'Христианович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9680, 'Рожкалнс', 'Эрнест', 'Эрнестович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(9681, 'Шипов', 'Марк', 'Оскарович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-09 00:00:00', '1938-01-08 00:00:00'),
(9682, 'Беликов', 'Иван', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9683, 'Белкин', 'Николай', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9684, 'Борисов', 'Петр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9685, 'Власов', 'Яков', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9686, 'Голендухин', 'Андрей', 'Силантьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9687, 'Докин', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9688, 'Зайцев', 'Иван', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9689, 'Иванов', 'Василий', 'Максимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9690, 'Карапиот', 'Павел', 'Герасимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9691, 'Клюкин', 'Артемий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00');
INSERT INTO `product` (`id`, `name`, `surname`, `patronymic`, `description`, `price`, `asset_base_url`, `asset_path`, `map_id`, `owner_id`, `date_one`, `date_two`) VALUES
(9692, 'Козлов', 'Владимир', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9693, 'Кононин', 'Алексей', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9694, 'Кузнецов', 'Николай', 'Тихонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9695, 'Лагутин', 'Зиновий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9696, 'Макаев', 'Григорий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9697, 'Матвеев', 'Павел', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9698, 'Матвеев', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9699, 'Мышланов', 'Афанасий', 'Лазаревич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9700, 'Некрасов', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9701, 'Поварницин', 'Егор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9702, 'Постоев', 'Виталий', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9703, 'Прилепин', 'Василий', 'Емельянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9704, 'Россихин', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9705, 'Ряшинцев', 'Ларион', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9706, 'Спирин', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9707, 'Ткачев', 'Иван', 'Евгеньевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9708, 'Феофанов', 'Степан', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9709, 'Хлопов', 'Андрей', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9710, 'Храмцев', 'Кирилл', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9711, 'Черный', 'Андрей', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9712, 'Черный', 'Николай', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9713, 'Чувашов', 'Алексей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9714, 'Чувашов', 'Григорий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9715, 'Чувашов', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9716, 'Шандро', 'Семен', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9717, 'Шахов', 'Петр', 'Никитович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9718, 'Юрьев', 'Виталий', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9719, 'Ливанов', 'Евгений', 'Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9720, 'Красильников', 'Петр', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-21 00:00:00', '1938-01-08 00:00:00'),
(9721, 'Борисов', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9722, 'Васильев', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9723, 'Панин', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(9724, 'Писарев', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-26 00:00:00', '1938-01-08 00:00:00'),
(9725, 'Яхонтов', 'Виктор', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-05-23 00:00:00', '1938-01-08 00:00:00'),
(9726, 'Воскресенский', 'Илья', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(9727, 'Бабушкин', 'Леонид', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-31 00:00:00', '1938-01-08 00:00:00'),
(9728, 'Бадретдинов', 'Аглям', 'Бадретдинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-01 00:00:00', '1938-01-08 00:00:00'),
(9729, 'Бадретдинов', 'Салман', 'Фарсиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-11 00:00:00', '1938-01-08 00:00:00'),
(9730, 'Безруков', 'Филипп', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(9731, 'Бессихин', 'Николай', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9732, 'Богословский', 'Павел', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9733, 'Борисов', 'Хабибрахман', 'Шайхетдинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9734, 'Брусин', 'Наум', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-25 00:00:00', '1938-01-08 00:00:00'),
(9735, 'Карьялайнен', 'Вильхо Хейкки', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-11 00:00:00', '1938-01-08 00:00:00'),
(9736, 'Лашкевич', 'Борис', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9737, 'Лебер', 'Василий', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9738, 'Баранахин', 'Куприян', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9739, 'Звонов', 'Пётр', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9740, 'Земсков', 'Иван', 'Никанорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-30 00:00:00', '1938-01-08 00:00:00'),
(9741, 'Зенов', 'Фёдор', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9742, 'Зимбицкий', 'Франц', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9743, 'Калягин', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9744, 'Канин', 'Степан', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9745, 'Каплунов', 'Михаил', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(9746, 'Каргин', 'Сергей', 'Евдокимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-01-07 00:00:00', '1938-01-08 00:00:00'),
(9747, 'Косов', 'Дмитрий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9748, 'Котович', 'Василий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9749, 'Котуков-Катуков', 'Павел', 'Емельянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-26 00:00:00', '1938-01-08 00:00:00'),
(9750, 'Краюшкин', 'Николай', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9751, 'Кудинов', 'Петр', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-25 00:00:00', '1938-01-08 00:00:00'),
(9752, 'Кузнецова', 'Наталья', 'Сергеевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9753, 'Мирошников', 'Алексей', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-28 00:00:00', '1938-01-08 00:00:00'),
(9754, 'Миссюра', 'Сергей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9755, 'Митрофанов', 'Григорий', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-25 00:00:00', '1938-01-08 00:00:00'),
(9756, 'Мокиенко', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9757, 'Нагодко', 'Иосиф', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-06 00:00:00', '1938-01-08 00:00:00'),
(9758, 'Никифоров', 'Павел', 'Ванифатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-01 00:00:00', '1938-01-08 00:00:00'),
(9759, 'Пахальчук', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9760, 'Полонский', 'Иван', 'Кондратьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(9761, 'Борисов', 'Павел', 'Ферапонтович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-27 00:00:00', '1938-01-08 00:00:00'),
(9762, 'Воронин', 'Георгий', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(9763, 'Сидоров', 'Владимир', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(9764, 'Смоляков', 'Иван', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(9765, 'Григорович', 'Василий', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(9766, 'Богословский', 'Юрий', 'Евгеньевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-22 00:00:00', '1938-01-08 00:00:00'),
(9767, 'Абрамов', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9768, 'Абросимов', 'Степан', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(9769, 'Агеев', 'Василий', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9770, 'Агеев', 'Василий', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9771, 'Агеев', 'Федор', 'Афанасьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(9772, 'Акимова', 'Анастасия', 'Даниловна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9773, 'Акинфин', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9774, 'Алексеев', 'Михаил', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9775, 'Ананьев', 'Василий', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9776, 'Андрощук', 'Иван', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9777, 'Анисимов', 'Иван', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9778, 'Ануфриев', 'Яков', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9779, 'Ардашников', 'Яков', 'Аркадьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(9780, 'Афанасьев', 'Григорий', 'Афанасьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9781, 'Бабкин', 'Федор', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9782, 'Баженов', 'Федор', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9783, 'Байте', 'Адольф', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9784, 'Батаев', 'Федор', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9785, 'Бахарев', 'Александр', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(9786, 'Белевский', 'Степан', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9787, 'Белинский', 'Владимир', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9788, 'Белов', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9789, 'Беляев', 'Михаил', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9790, 'Битяков', 'Михаил', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9791, 'Благочинный', 'Антон', 'Кириллович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9792, 'Богданов', 'Василий', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9793, 'Богданов', 'Яков', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-21 00:00:00', '1938-01-08 00:00:00'),
(9794, 'Богомазов', 'Николай', 'Архипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9795, 'Божевский', 'Деонисий', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9796, 'Бонвич', 'Эрих', 'Эмильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1933-02-10 00:00:00', '1938-01-08 00:00:00'),
(9797, 'Боровский', 'Адольф', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9798, 'Бульман', 'Райнгольд', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(9799, 'Вальчук', 'Войцех', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9800, 'Васильев', 'Егор', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9801, 'Васильев', 'Петр', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9802, 'Васильева', 'Мария', 'Григорьевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9803, 'Васягин', 'Григорий', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(9804, 'Введенский', 'Петр', 'Трофимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9805, 'Виноградов', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-20 00:00:00', '1938-01-08 00:00:00'),
(9806, 'Виршиев', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9807, 'Вишневский', 'Иван', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9808, 'Водопьянов', 'Евгений', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(9809, 'Воинов', 'Евгений', 'Аленсандрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9810, 'Выборный', 'Василий', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9811, 'Выграновский', 'Виталиус', 'Теофилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9812, 'Ганзбург', 'Давид', 'Нахимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-23 00:00:00', '1938-01-08 00:00:00'),
(9813, 'Гених', 'Рейнгольд', 'Генрихович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9814, 'Гераскевич', 'Конон', 'Миронович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9815, 'Герчин', 'Виктор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9816, 'Геюк', 'Алексей', 'Ермолаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9817, 'Гирин', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9818, 'Гойкин', 'Василий', 'Лукич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9819, 'Голубев', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9820, 'Голяшевич', 'Адам', 'Эдуардович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9821, 'Гордеев', 'Павел', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9822, 'Горин', 'Николай', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9823, 'Горшков', 'Петр', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9824, 'Грабовский', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9825, 'Греков', 'Николай', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(9826, 'Грешников', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9827, 'Григорьев', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9828, 'Гришкин', 'Федор', 'Поликарпович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9829, 'Давыдков', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9830, 'Давыдов', 'Павел', 'Леонтьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9831, 'Данишевский', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9832, 'Деменко', 'Федор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-24 00:00:00', '1938-01-08 00:00:00'),
(9833, 'Демидов', 'Матвей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9834, 'Дистергофт', 'Иоган', 'Готлибович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9835, 'Домашин', 'Ульян', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9836, 'Дроздовский', 'Евгений', 'Диомидович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9837, 'Дубов', 'Андриан', 'Трофимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9838, 'Евстафеев', 'Яков', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(9839, 'Егоркин', 'Иван', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9840, 'Егоров', 'Николай', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9841, 'Елизаров', 'Константин', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9842, 'Ерасков', 'Василий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9843, 'Еремин', 'Иван', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-15 00:00:00', '1938-01-08 00:00:00'),
(9844, 'Ефимов', 'Василий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9845, 'Ефимов', 'Николай', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9846, 'Ешаков', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(9847, 'Жедулов', 'Иван', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-14 00:00:00', '1938-01-08 00:00:00'),
(9848, 'Желтенко', 'Николай', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9849, 'Журавлев', 'Владимир', 'Митрофанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9850, 'Забродин', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9851, 'Заводский', 'Игнатий', 'Абросимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9852, 'Зауэр', 'Вильгельм', 'Эдуардович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9853, 'Захаров', 'Петр', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9854, 'Звягин', 'Иван', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9855, 'Золотарев', 'Семен', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9856, 'Золотовский', 'Соломон', 'Борисович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(9857, 'Зорин', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(9858, 'Иванов', 'Федор', 'Германович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9859, 'Иванов-Гусев', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9860, 'Иконников', 'Александр', 'Лаврентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9861, 'Илларионов', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9862, 'Ипатов', 'Алексей', 'Савельевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-05 00:00:00', '1938-01-08 00:00:00'),
(9863, 'Исконицкий', 'Михаил', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-25 00:00:00', '1938-01-08 00:00:00'),
(9864, 'Казарновский', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9865, 'Калачев', 'Федор', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9866, 'Калинин', 'Павел', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9867, 'Каминский', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9868, 'Канарский', 'Петр', 'Мартынович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9869, 'Капустин', 'Николай', 'Пименович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9870, 'Карасев', 'Михаил', 'Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(9871, 'Карпов', 'Леонид', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(9872, 'Качалов', 'Константин', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9873, 'Кащенко', 'Григорий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(9874, 'Каяшев', 'Павел', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9875, 'Кезибир', 'Мартын', 'Юрьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(9876, 'Кирьяков', 'Иван', 'Федотович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9877, 'Кирьянов', 'Архип', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9878, 'Киселев', 'Михаил', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-12 00:00:00', '1938-01-08 00:00:00'),
(9879, 'Клей', 'Валерьян', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9880, 'Ковин', 'Егор', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9881, 'Кокушкин', 'Андрей', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9882, 'Колесов', 'Филипп', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9883, 'Колесов', 'Филипп', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9884, 'Колмачев', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-15 00:00:00', '1938-01-08 00:00:00'),
(9885, 'Колодяжный', 'Иван', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9886, 'Королев', 'Иван', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9887, 'Королев', 'Иван', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9888, 'Косинец', 'Филипп', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9889, 'Косовский', 'Адам', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9890, 'Костин', 'Иван', 'Акимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9891, 'Костин', 'Федор', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9892, 'Костюк', 'Яков', 'Фомич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9893, 'Котичев', 'Андрей', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9894, 'Котогонов', 'Василий', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9895, 'Кошкин', 'Сергей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9896, 'Кремер', 'Семен', 'Аронович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-23 00:00:00', '1938-01-08 00:00:00'),
(9897, 'Кривохижий', 'Антон', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-12 00:00:00', '1938-01-08 00:00:00'),
(9898, 'Криминский', 'Никанор', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9899, 'Криницкий', 'Карл-Кароль', 'Викентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9900, 'Куклин', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9901, 'Кукушкин', 'Алексей', 'Трофимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9902, 'Куракин', 'Николай', 'Архипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9903, 'Куреев', 'Андрей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9904, 'Курочкин', 'Василий', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-15 00:00:00', '1938-01-08 00:00:00'),
(9905, 'Кучернюк', 'Севастьян', 'Ефремович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9906, 'Кушнир', 'Степан', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9907, 'Лазарев', 'Максим', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9908, 'Лапин', 'Андрей', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9909, 'Ларионов', 'Семен', 'Митрофанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-21 00:00:00', '1938-01-08 00:00:00'),
(9910, 'Лебейчук', 'Ефим', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9911, 'Лиденко', 'Евгений', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-05 00:00:00', '1938-01-08 00:00:00'),
(9912, 'Линкштейн', 'Александр', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(9913, 'Лисаков', 'Яков', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9914, 'Логинов', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-26 00:00:00', '1938-01-08 00:00:00'),
(9915, 'Лопатинский', 'Мячеслав', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9916, 'Лотаков', 'Василий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9917, 'Лузгин', 'Михаил', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(9918, 'Лукин', 'Михаил', 'Максимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(9919, 'Лукина', 'Анна', 'Степановна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9920, 'Луттиев', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9921, 'Максимов', 'Степан', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9922, 'Манылин', 'Яков', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9923, 'Манькин', 'Аркадий', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(9924, 'Маричев', 'Алексей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9925, 'Маркин', 'Яков', 'Тихонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9926, 'Марков', 'Григорий', 'Терентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9927, 'Мартынов', 'Дмитрий', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9928, 'Марченко', 'Георгий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9929, 'Марчук', 'Андрей', 'Пантелеймонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(9930, 'Медведев', 'Антон', 'Мануйлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9931, 'Мелехов', 'Петр', 'Дорофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9932, 'Мельников', 'Михаил', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(9933, 'Мецхваришвили', 'Николай', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9934, 'Миллер', 'Станислав', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9935, 'Минин', 'Федор', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9936, 'Миронов', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-20 00:00:00', '1938-01-08 00:00:00'),
(9937, 'Митрофанов', 'Яков', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9938, 'Митрошин', 'Андрей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9939, 'Михайлов', 'Федор', 'Леонтьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9940, 'Михалевский', 'Николай', 'Филатович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9941, 'Мишанов', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(9942, 'Мишин', 'Василий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9943, 'Мишин', 'Никанор', 'Данилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9944, 'Мишин', 'Николай', 'Никанорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9945, 'Моисеев', 'Ефим', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9946, 'Моисеева', 'Анастасия', 'Андреевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-09 00:00:00', '1938-01-08 00:00:00'),
(9947, 'Моргунов', 'Константин', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9948, 'Надпорожский', 'Алексей', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-30 00:00:00', '1938-01-08 00:00:00'),
(9949, 'Никитин', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(9950, 'Никитин', 'Калле', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-24 00:00:00', '1938-01-08 00:00:00'),
(9951, 'Николаенко', 'Николай', 'Афанасьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(9952, 'Одинцов', 'Иван', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9953, 'Олейник', 'Василий', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9954, 'Олехнович', 'Василий', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9955, 'Орбидан', 'Петр', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(9956, 'Орлов', 'Иван', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(9957, 'Ошевенская', 'Евгения', 'Петровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9958, 'Павленок', 'Иван', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9959, 'Павлов', 'Василий', 'Захарович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9960, 'Падорин', 'Сергей', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(9961, 'Палкин', 'Алексей', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9962, 'Палюкин', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9963, 'Папуш', 'Трофим', 'Максимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-19 00:00:00', '1938-01-08 00:00:00'),
(9964, 'Пастухов', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9965, 'Пахомов', 'Михаил', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9966, 'Петров', 'Виктор', 'Викторович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(9967, 'Петров', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(9968, 'Петров', 'Сергей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(9969, 'Петровский', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9970, 'Петровский', 'Иосиф', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9971, 'Печников', 'Федор', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9972, 'Подорогин', 'Гаврил', 'Данилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9973, 'Политов', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(9974, 'Полищук', 'Андрей', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9975, 'Попов', 'Василий', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(9976, 'Попов', 'Иван', 'Кириллович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-25 00:00:00', '1938-01-08 00:00:00'),
(9977, 'Пригодский', 'Филипп-Феликс', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(9978, 'Прохоров', 'Василий', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9979, 'Прохоров', 'Георгий', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(9980, 'Пясецкий', 'Иван', 'Валерьянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9981, 'Радзиевский', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(9982, 'Рей', 'Устин', 'Исакович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(9983, 'Ремягин', 'Дмитрий', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9984, 'Ремягин', 'Яков', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(9985, 'Репнер', 'Андрей', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(9986, 'Решатков', 'Александр', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9987, 'Родин', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(9988, 'Романов', 'Николай', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(9989, 'Руднев', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-13 00:00:00', '1938-01-08 00:00:00'),
(9990, 'Румянцев', 'Михаил', 'Евдокимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(9991, 'Русинов', 'Михаил', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(9992, 'Рябоев', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9993, 'Саватеев', 'Афанасий', 'Терентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(9994, 'Сергеев', 'Василий', 'Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9995, 'Силин', 'Иван', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9996, 'Силин', 'Павел', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(9997, 'Скидан', 'Николай', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(9998, 'Слиозберг', 'Ефим', 'Миронович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(9999, 'Сова', 'Войцех', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(10000, 'Сорокин', 'Алексей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(10001, 'Сорокин', 'Игнатий', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(10002, 'Сорокин', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(10003, 'Сорокин', 'Павел', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-17 00:00:00', '1938-01-08 00:00:00'),
(10004, 'Спиридонов', 'Михаил', 'Миронович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(10005, 'Степанов', 'Алексей', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-11 00:00:00', '1938-01-08 00:00:00'),
(10006, 'Страдин', 'Александр', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10007, 'Суворов', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(10008, 'Суксин', 'Егор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-28 00:00:00', '1938-01-08 00:00:00'),
(10009, 'Сун', 'Владимир', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(10010, 'Суханов', 'Михаил', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10011, 'Тараненко', 'Логин', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-27 00:00:00', '1938-01-08 00:00:00'),
(10012, 'Тарасов', 'Федор', 'Терентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(10013, 'Тетчиев', 'Андрей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(10014, 'Тиканов', 'Павел', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10015, 'Тимофеев-Иванов', 'Николай', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-08 00:00:00', '1938-01-08 00:00:00'),
(10016, 'Тимощук', 'Аким', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(10017, 'Титма', 'Николай', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(10018, 'Тихомиров', 'Александр', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10019, 'Трошков', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(10020, 'Туляков', 'Александр', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(10021, 'Туляков', 'Иван', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(10022, 'Тухкин', 'Еремей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(10023, 'Ульяновский', 'Степан', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(10024, 'Утицын', 'Петр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(10025, 'Утту', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10026, 'Фадеев', 'Иван', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(10027, 'Федотов', 'Михаил', 'Федотович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(10028, 'Фешов', 'Антон', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(10029, 'Фомин', 'Иван', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(10030, 'Хоботова', 'Анна', 'Михайловна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(10031, 'Хрисанфов', 'Николай', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-26 00:00:00', '1938-01-08 00:00:00'),
(10032, 'Хрусталев', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10033, 'Царус', 'Николай', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(10034, 'Цветков', 'Семен', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(10035, 'Цегельницкий', 'Хаим-Вениамин', 'Шмелевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-26 00:00:00', '1938-01-08 00:00:00'),
(10036, 'Цыганов', 'Павел', 'Никифорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-21 00:00:00', '1938-01-08 00:00:00'),
(10037, 'Черноносов', 'Александр', 'Митрофанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(10038, 'Чехонин', 'Тимофей', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-11 00:00:00', '1938-01-08 00:00:00'),
(10039, 'Чулый', 'Макарий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(10040, 'Шлипкин', 'Василий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-02 00:00:00', '1938-01-08 00:00:00'),
(10041, 'Шпильберг', 'Исидор', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-16 00:00:00', '1938-01-08 00:00:00'),
(10042, 'Шушарин', 'Нил', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(10043, 'Щепин', 'Петр', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(10044, 'Юраш', 'Степан', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(10045, 'Юрьев', 'Андрей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10046, 'Ющиев', 'Николай', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-31 00:00:00', '1938-01-08 00:00:00'),
(10047, 'Яковлев', 'Яков', 'Тарасович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(10048, 'Ярицын', 'Федор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-14 00:00:00', '1938-01-08 00:00:00'),
(10049, 'Левандовский', 'Иван', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-29 00:00:00', '1938-01-08 00:00:00'),
(10050, 'Левандовский', 'Франц', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-29 00:00:00', '1938-01-08 00:00:00'),
(10051, 'Лупекин', 'Антип', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-10 00:00:00', '1938-01-08 00:00:00'),
(10052, 'Лупекин', 'Ефим', 'Федотович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(10053, 'Лупекин', 'Федор', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-13 00:00:00', '1938-01-08 00:00:00'),
(10054, 'Лутков', 'Иван', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(10055, 'Макеев', 'Валериан', 'Валерианович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-04 00:00:00', '1938-01-08 00:00:00'),
(10056, 'Маруженко', 'Иван', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-24 00:00:00', '1938-01-08 00:00:00'),
(10057, 'Мацуткевич', 'Станислав', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-10 00:00:00', '1938-01-08 00:00:00'),
(10058, 'Мещаков', 'Иван', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-11 00:00:00', '1938-01-08 00:00:00'),
(10059, 'Музычук', 'Виталий', 'Калинникович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-15 00:00:00', '1938-01-08 00:00:00'),
(10060, 'Никитин', 'Андрей', 'Никитич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(10061, 'Омелинская-Жихович', 'Аделия', 'Андреевна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-26 00:00:00', '1938-01-08 00:00:00'),
(10062, 'Ощепков', 'Кирилл', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(10063, 'Апошный', 'Трофим', 'Лукич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-15 00:00:00', '1938-01-08 00:00:00'),
(10064, 'Астахов', 'Федор', 'Титович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-08 00:00:00', '1938-01-08 00:00:00'),
(10065, 'Балакирев', 'Семен', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-15 00:00:00', '1938-01-08 00:00:00'),
(10066, 'Барташевич', 'Андрей', 'Викентьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(10067, 'Бобровский', 'Антон', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(10068, 'Бронский', 'Андрей', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-04 00:00:00', '1938-01-08 00:00:00'),
(10069, 'Валуев', 'Исай', 'Кириллович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-08 00:00:00', '1938-01-08 00:00:00'),
(10070, 'Вильчинский', 'Иван', 'Осипович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-29 00:00:00', '1938-01-08 00:00:00'),
(10071, 'Глинкин', 'Евстропий', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-28 00:00:00', '1938-01-08 00:00:00'),
(10072, 'Гринденко', 'Николай', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-15 00:00:00', '1938-01-08 00:00:00'),
(10073, 'Гринштейн', 'Савелий', 'Самуилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-09 00:00:00', '1938-01-08 00:00:00'),
(10074, 'Гуткевич', 'Василия', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-29 00:00:00', '1938-01-08 00:00:00'),
(10075, 'Добржинский', 'Дионисий', 'Францевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(10076, 'Дрочинский', 'Михаил', 'Феофилактович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(10077, 'Елисеев', 'Федор', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-16 00:00:00', '1938-01-08 00:00:00'),
(10078, 'Загуровский', 'Петр', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(10079, 'Заичкин', 'Семен', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-27 00:00:00', '1938-01-08 00:00:00'),
(10080, 'Зайнчковский', 'Константин', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-11 00:00:00', '1938-01-08 00:00:00'),
(10081, 'Иваниченко', 'Аксентий', 'Пантелеймонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(10082, 'Иванов', 'Михаил', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-03 00:00:00', '1938-01-08 00:00:00'),
(10083, 'Карпович', 'Станислав', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-01-19 00:00:00', '1938-01-08 00:00:00'),
(10084, 'Касперович', 'Петр', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-30 00:00:00', '1938-01-08 00:00:00'),
(10085, 'Квашенко', 'Алексей', 'Парамонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-09 00:00:00', '1938-01-08 00:00:00'),
(10086, 'Кныш', 'Андрей', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-20 00:00:00', '1938-01-08 00:00:00'),
(10087, 'Ковальский', 'Иван', 'Никодимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-18 00:00:00', '1938-01-08 00:00:00'),
(10088, 'Комогорцев', 'Яков', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-05 00:00:00', '1938-01-08 00:00:00'),
(10089, 'Кофман', 'АДАМ-ДАНИИЛ', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-25 00:00:00', '1938-01-08 00:00:00'),
(10090, 'Крупский', 'Филипп', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-13 00:00:00', '1938-01-08 00:00:00'),
(10091, 'Курчинский', 'Феликс', 'Антонович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-13 00:00:00', '1938-01-08 00:00:00'),
(10092, 'Кучинский', 'Вячеслав', 'Феликсович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-09 00:00:00', '1938-01-08 00:00:00'),
(10093, 'Агеев', 'Алексей', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10094, 'Анохин', 'Андрей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10095, 'Афанасьевский', 'Дмитрий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10096, 'Бабкин', 'Иван', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00');
INSERT INTO `product` (`id`, `name`, `surname`, `patronymic`, `description`, `price`, `asset_base_url`, `asset_path`, `map_id`, `owner_id`, `date_one`, `date_two`) VALUES
(10097, 'Блохин', 'Афанасий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10098, 'Володин', 'Евстигней', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10099, 'Володин', 'Сергей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10100, 'Глебов', 'Василий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10101, 'Гусев', 'Егор', 'Гаврилович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10102, 'Дряхлов-Бородавкин', 'Федор', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10103, 'Ермилов', 'Андрей', 'Филиппович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10104, 'Жигалов', 'Аркадий', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10105, 'Жигарев', 'Егор', 'Фаламеевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10106, 'Жуков', 'Василий', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10107, 'Жуков', 'Иван', 'Максимович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10108, 'Иванов', 'Кузьма', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10109, 'Канаев', 'Никита', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10110, 'Климов', 'Дмитрий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10111, 'Красин', 'Петр', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10112, 'Кремышинский', 'Анатолий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10113, 'Круглов', 'Андрей', 'Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10114, 'Лебедев', 'Александр', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10115, 'Левин', 'Василий', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10116, 'Марков', 'Семен', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10117, 'Минаев', 'Алексей', 'Тихонович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10118, 'Миронов', 'Григорий', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10119, 'Ненарокомов', 'Михаил', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10120, 'Никифоров', 'Аким', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10121, 'Никольский', 'Алексей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10122, 'Новоселов', 'Денис', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10123, 'Осипцов', 'Иван', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10124, 'Пашутин', 'Николай', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10125, 'Петров', 'Владимир', 'Иосифович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10126, 'Петрушин', 'Андрей', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10127, 'Пляшкин', 'Сергей', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10128, 'Покровский', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10129, 'Понкратьев', 'Константин', 'Пантелеймонович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10130, 'Прозоровский', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10131, 'Пучков', 'Андрей', 'Егорович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10132, 'Родионов', 'Федор', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10133, 'Рябов', 'Алексей', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10134, 'Сигуленков', 'Михаил', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10135, 'Соколов', 'Сергей', 'Анфилович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10136, 'Сорокин', 'Егор', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10137, 'Теплаков', 'Дмитрий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10138, 'Теплаков', 'Иван', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10139, 'Терехов', 'Иван', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10140, 'Тимашов', 'Федор', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10141, 'Титов', 'Иван', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10142, 'Фальченков', 'Иван', 'Афанасьевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10143, 'Фомин', 'Ефим', 'Данилович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10144, 'Хвалебный', 'Александр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10145, 'Царев', 'Андрей', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10146, 'Цыганков', 'Петр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10147, 'Яковенко', 'Осип', 'Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10148, 'Абдуллин', 'Фатых', 'Закирович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-26 00:00:00', '1938-01-08 00:00:00'),
(10149, 'Аметьевский', 'Иван', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-28 00:00:00', '1938-01-08 00:00:00'),
(10150, 'Ахманаев', 'Леонтий', 'Емельянович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-10 00:00:00', '1938-01-08 00:00:00'),
(10151, 'Ахметов', 'Мулламухамет', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(10152, 'Валеев', 'Садык', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(10153, 'Валиуллин', 'Валиахмет', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-06 00:00:00', '1938-01-08 00:00:00'),
(10154, 'Варварин', 'Илья', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-27 00:00:00', '1938-01-08 00:00:00'),
(10155, 'Виноградов', 'Василий', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-23 00:00:00', '1938-01-08 00:00:00'),
(10156, 'Галеев', 'Гата', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(10157, 'Гатауллин', 'Вали', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-11 00:00:00', '1938-01-08 00:00:00'),
(10158, 'Гатауллин', 'Закир', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-31 00:00:00', '1938-01-08 00:00:00'),
(10159, 'Гоголев', 'Ефим', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-30 00:00:00', '1938-01-08 00:00:00'),
(10160, 'Горячкин', 'Николай', 'Поликарпович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-29 00:00:00', '1938-01-08 00:00:00'),
(10161, 'Григорьев', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-03 00:00:00', '1938-01-08 00:00:00'),
(10162, 'Демиховский', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-07-01 00:00:00', '1938-01-08 00:00:00'),
(10163, 'Динеев', 'Гайни', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-05 00:00:00', '1938-01-08 00:00:00'),
(10164, 'Егоров', 'Петр', 'Ефимович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(10165, 'Ездаков', 'Иван', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-10 00:00:00', '1938-01-08 00:00:00'),
(10166, 'Емелин', 'Василий', 'Тимофеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-27 00:00:00', '1938-01-08 00:00:00'),
(10167, 'Емельянов', 'Яков', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-07 00:00:00', '1938-01-08 00:00:00'),
(10168, 'Зорин', 'Александр', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-22 00:00:00', '1938-01-08 00:00:00'),
(10169, 'Зяблов', 'Андриян', 'Мартынович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(10170, 'Ибрагимов', 'Шакир', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-06 00:00:00', '1938-01-08 00:00:00'),
(10171, 'Иванов', 'Григорий', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(10172, 'Ивуков', 'Александр', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-13 00:00:00', '1938-01-08 00:00:00'),
(10173, 'Измариев', 'Семен', 'Измариевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-18 00:00:00', '1938-01-08 00:00:00'),
(10174, 'Исаев', 'Влас', 'Сергеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-10 00:00:00', '1938-01-08 00:00:00'),
(10175, 'Никитин', 'Владимир', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-26 00:00:00', '1938-01-08 00:00:00'),
(10176, 'Никитин', 'Дмитрий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-26 00:00:00', '1938-01-08 00:00:00'),
(10177, 'Бобровский', 'Александр', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10178, 'Богуто', 'Даниил', 'Евдокимович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10179, 'Бушмакин', 'Степан', 'Евтихеевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10180, 'Гончар-Гончаров', 'Никита', 'Данилович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10181, 'Дехтерев', 'Степан', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10182, 'Жук', 'Владимир', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10183, 'Корепанов', 'Павел', 'Алексеевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10184, 'Крестьянинов', 'Петр', 'Григорьевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10185, 'Кузнецов', 'Федор', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10186, 'Лобовиков', 'Михаил', 'Вениаминович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10187, 'Лысков', 'Федор', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10188, 'Опанасенко', 'Андрей', 'Максимович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10189, 'Ощепков', 'Иван', 'Кузьмич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10190, 'Рукавишников', 'Степан', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10191, 'Санников', 'Михаил', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10192, 'Ситников', 'Михаил', 'Ипатьевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10193, 'Чурин', 'Иван', 'Артемьевич', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10194, 'Шкляев', 'Анатолий', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10195, 'Шумихин', 'Козьма', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1938-01-08 00:00:00'),
(10196, 'Шлеев', 'Николай', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-30 00:00:00', '1938-01-08 00:00:00'),
(10197, 'Агава', 'Самуил', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10198, 'Александров', 'Николай', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(10199, 'Александров', 'Яков', 'Константинович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10200, 'Андреев', 'Николай', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(10201, 'Баньковская', 'Екатерина', 'Александровна', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(10202, 'Белоха', 'Ростислав', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(10203, 'Блусс', 'Август', 'Давидович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(10204, 'Бурмистров', 'Иван', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(10205, 'Вейолайнен', 'Иван', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(10206, 'Герштейн', 'Лев', 'Борисович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-21 00:00:00', '1938-01-08 00:00:00'),
(10207, 'Грундман', 'Лев', 'Романович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(10208, 'Ерасков', 'Василий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10209, 'Захаров', 'Григорий', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(10210, 'Ирбе', 'Отто', 'Рейнович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-04 00:00:00', '1938-01-08 00:00:00'),
(10211, 'Карху', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(10212, 'Кийски', 'Константин', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-17 00:00:00', '1938-01-08 00:00:00'),
(10213, 'Киссель', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(10214, 'Кокка', 'Михаил', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(10215, 'Королев', 'Иван', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10216, 'Кубаринен', 'Иван', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(10217, 'Кяхерь', 'Рейно', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-23 00:00:00', '1938-01-08 00:00:00'),
(10218, 'Лайтинен', 'Степан', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(10219, 'Лери', 'Андрей', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(10220, 'Лери', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(10221, 'Лери', 'Михаил', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(10222, 'Леушка', 'Матвей', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(10223, 'Лисаков', 'Яков', 'Ильич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10224, 'Макара', 'Даниил', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10225, 'Малейкович', 'Александр', 'Александрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-02 00:00:00', '1938-01-08 00:00:00'),
(10226, 'Межуев', 'Петр', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-07 00:00:00', '1938-01-08 00:00:00'),
(10227, 'Миров', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-06-21 00:00:00', '1938-01-08 00:00:00'),
(10228, 'Недобуга', 'Андриан', 'Дмитриевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-08 00:00:00', '1938-01-08 00:00:00'),
(10229, 'Некрасов', 'Николай', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-05-02 00:00:00', '1938-01-08 00:00:00'),
(10230, 'Никитин-Лупаков', 'Федор', 'Николаевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-20 00:00:00', '1938-01-08 00:00:00'),
(10231, 'Олконен', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-22 00:00:00', '1938-01-08 00:00:00'),
(10232, 'Осипов', 'Алексей', 'Игнатьевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(10233, 'Павилайнен', 'Армус', 'Самуилович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-19 00:00:00', '1938-01-08 00:00:00'),
(10234, 'Песси', 'Михаил', 'Абрамович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10235, 'Полуэктов', 'Константин', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(10236, 'Пуса', 'Михаил', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10237, 'Раутонен', 'Иван', 'Петрович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10238, 'Раутонен', 'Иван', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10239, 'Сакса', 'Степан', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(10240, 'Сало', 'Иван', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-08-05 00:00:00', '1938-01-08 00:00:00'),
(10241, 'Саунин', 'Терентий', 'Лукич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-15 00:00:00', '1938-01-08 00:00:00'),
(10242, 'Сафронов', 'Сергей', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-29 00:00:00', '1938-01-08 00:00:00'),
(10243, 'Свилло', 'Владимир', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(10244, 'Син', 'Стахей', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-09-01 00:00:00', '1938-01-08 00:00:00'),
(10245, 'Сово', 'Рейно', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-06 00:00:00', '1938-01-08 00:00:00'),
(10246, 'Сово', 'Степан', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-19 00:00:00', '1938-01-08 00:00:00'),
(10247, 'Страдин', 'Александр', 'Яковлевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-10 00:00:00', '1938-01-08 00:00:00'),
(10248, 'Суворов', 'Николай', 'Иванович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-16 00:00:00', '1938-01-08 00:00:00'),
(10249, 'Сумманен', 'Рейно', 'Павлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(10250, 'Татти', 'Семен', 'Семенович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(10251, 'Тоффери', 'Ойво', 'Федорович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-04-14 00:00:00', '1938-01-08 00:00:00'),
(10252, 'Утту', 'Василий', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(10253, 'Утту', 'Михаил', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10254, 'Федотов', 'Михаил', 'Федотович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-12-13 00:00:00', '1938-01-08 00:00:00'),
(10255, 'Хяргонен', 'Матвей', 'Матвеевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-18 00:00:00', '1938-01-08 00:00:00'),
(10256, 'Царус', 'Николай', 'Карлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-17 00:00:00', '1938-01-08 00:00:00'),
(10257, 'Юраш', 'Степан', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-05 00:00:00', '1938-01-08 00:00:00'),
(10258, 'Юргияйнен', 'Давид', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-29 00:00:00', '1938-01-08 00:00:00'),
(10259, 'Юргияйнен', 'Степан', 'Степанович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-03 00:00:00', '1938-01-08 00:00:00'),
(10260, 'Аксенов', 'Георгий', 'Андреевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-08 00:00:00', '1938-01-08 00:00:00'),
(10261, 'Аксенов', 'Павел', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-28 00:00:00', '1938-01-08 00:00:00'),
(10262, 'Асин-Егоров', 'Николай', 'Васильевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-10-02 00:00:00', '1938-01-08 00:00:00'),
(10263, 'Багаутдинов', 'Каюм', '', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-01 00:00:00', '1938-01-08 00:00:00'),
(10264, 'Барышев', 'Иван', 'Георгиевич', NULL, NULL, NULL, NULL, NULL, NULL, '1937-05-09 00:00:00', '1938-01-08 00:00:00'),
(10265, 'Батманов', 'Василий', 'Михайлович', NULL, NULL, NULL, NULL, NULL, NULL, '1937-11-03 00:00:00', '1938-01-08 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `product_like`
--

CREATE TABLE `product_like` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(192, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676469767.8447, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(193, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676476957.0041, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(194, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676476969.9982, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(195, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676477091.586, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(196, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676477101.4972, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(197, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676477250.7943, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(198, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676477368.3212, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php'),
(199, 1, 'yii\\i18n\\PhpMessageSource::loadFallbackMessages', 1676477396.56, '[frontend][/product/edit/1]', 'The message file for category \'app\' does not exist: /var/www/funerai.com/frontend/messages/ru-RU/app.php Fallback file does not exist as well: /var/www/funerai.com/frontend/messages/ru/app.php');
INSERT INTO `system_log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(200, 1, 'yii\\base\\InvalidConfigException', 1676649067.0906, '[backend][/product/import-csv]', 'yii\\base\\InvalidConfigException: Invalid validation rule: a rule must specify both attribute names and validator type. in /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php:472\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php(421): yii\\base\\Model->createValidators()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php(190): yii\\base\\Model->getValidators()\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php(355): yii\\base\\Model->scenarios()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(560): yii\\base\\Model->validate(NULL)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#5 /var/www/funerai.com/backend/controllers/ProductController.php(122): yii\\db\\BaseActiveRecord->save()\n#6 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#7 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#12 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#13 {main}'),
(201, 1, 'yii\\base\\InvalidConfigException', 1676649186.6633, '[backend][/product/import-csv]', 'yii\\base\\InvalidConfigException: Invalid validation rule: a rule must specify both attribute names and validator type. in /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php:472\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php(421): yii\\base\\Model->createValidators()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php(190): yii\\base\\Model->getValidators()\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/base/Model.php(355): yii\\base\\Model->scenarios()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(560): yii\\base\\Model->validate(NULL)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#5 /var/www/funerai.com/backend/controllers/ProductController.php(122): yii\\db\\BaseActiveRecord->save()\n#6 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#7 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#12 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#13 {main}'),
(202, 1, 'yii\\db\\Exception', 1676649207.0535, '[backend][/product/import-csv]', 'PDOException: SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'8.1.1938\' for column `yii2-starter-kit`.`product`.`date_one` at row 1 in /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php:1302\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1302): PDOStatement->execute()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1102): yii\\db\\Command->internalExecute(\'INSERT INTO `pr...\')\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php(433): yii\\db\\Command->execute()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(600): yii\\db\\Schema->insert(\'product\', Array)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(566): yii\\db\\ActiveRecord->insertInternal(NULL)\n#5 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#6 /var/www/funerai.com/backend/controllers/ProductController.php(122): yii\\db\\BaseActiveRecord->save()\n#7 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#12 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#14 {main}\n\nNext yii\\db\\Exception: SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'8.1.1938\' for column `yii2-starter-kit`.`product`.`date_one` at row 1\nThe SQL being executed was: INSERT INTO `product` (`name`, `surname`, `patronymic`, `date_one`, `asset_path`, `asset_base_url`) VALUES (\'Казанцев\', \'Степан\', \'Ефимович\', \'8.1.1938\', NULL, NULL) in /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php:678\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1307): yii\\db\\Schema->convertException(Object(PDOException), \'INSERT INTO `pr...\')\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1102): yii\\db\\Command->internalExecute(\'INSERT INTO `pr...\')\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php(433): yii\\db\\Command->execute()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(600): yii\\db\\Schema->insert(\'product\', Array)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(566): yii\\db\\ActiveRecord->insertInternal(NULL)\n#5 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#6 /var/www/funerai.com/backend/controllers/ProductController.php(122): yii\\db\\BaseActiveRecord->save()\n#7 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#12 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#14 {main}\nAdditional Information:\nArray\n(\n    [0] => 22007\n    [1] => 1292\n    [2] => Incorrect datetime value: \'8.1.1938\' for column `yii2-starter-kit`.`product`.`date_one` at row 1\n)\n'),
(203, 1, 'yii\\db\\Exception', 1676649322.6626, '[backend][/product/import-csv]', 'PDOException: SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'8.1.1938\' for column `yii2-starter-kit`.`product`.`date_one` at row 1 in /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php:1302\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1302): PDOStatement->execute()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1102): yii\\db\\Command->internalExecute(\'INSERT INTO `pr...\')\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php(433): yii\\db\\Command->execute()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(600): yii\\db\\Schema->insert(\'product\', Array)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(566): yii\\db\\ActiveRecord->insertInternal(NULL)\n#5 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#6 /var/www/funerai.com/backend/controllers/ProductController.php(125): yii\\db\\BaseActiveRecord->save()\n#7 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#12 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#14 {main}\n\nNext yii\\db\\Exception: SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'8.1.1938\' for column `yii2-starter-kit`.`product`.`date_one` at row 1\nThe SQL being executed was: INSERT INTO `product` (`name`, `surname`, `patronymic`, `date_one`, `asset_path`, `asset_base_url`) VALUES (\'Казанцев\', \'Степан\', \'Ефимович\', \'8.1.1938\', NULL, NULL) in /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php:678\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1307): yii\\db\\Schema->convertException(Object(PDOException), \'INSERT INTO `pr...\')\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1102): yii\\db\\Command->internalExecute(\'INSERT INTO `pr...\')\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php(433): yii\\db\\Command->execute()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(600): yii\\db\\Schema->insert(\'product\', Array)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(566): yii\\db\\ActiveRecord->insertInternal(NULL)\n#5 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#6 /var/www/funerai.com/backend/controllers/ProductController.php(125): yii\\db\\BaseActiveRecord->save()\n#7 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#12 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#14 {main}\nAdditional Information:\nArray\n(\n    [0] => 22007\n    [1] => 1292\n    [2] => Incorrect datetime value: \'8.1.1938\' for column `yii2-starter-kit`.`product`.`date_one` at row 1\n)\n'),
(204, 1, 'yii\\db\\Exception', 1676650041.4835, '[backend][/product/import-csv]', 'PDOException: SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'1937-_-_\' for column `yii2-starter-kit`.`product`.`date_one` at row 1 in /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php:1302\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1302): PDOStatement->execute()\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1102): yii\\db\\Command->internalExecute(\'INSERT INTO `pr...\')\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php(433): yii\\db\\Command->execute()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(600): yii\\db\\Schema->insert(\'product\', Array)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(566): yii\\db\\ActiveRecord->insertInternal(NULL)\n#5 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#6 /var/www/funerai.com/backend/controllers/ProductController.php(129): yii\\db\\BaseActiveRecord->save()\n#7 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#12 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#14 {main}\n\nNext yii\\db\\Exception: SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect datetime value: \'1937-_-_\' for column `yii2-starter-kit`.`product`.`date_one` at row 1\nThe SQL being executed was: INSERT INTO `product` (`name`, `surname`, `patronymic`, `date_one`, `date_two`, `asset_path`, `asset_base_url`) VALUES (\'Беккер\', \'Рудольф\', \'Беннович\', \'1937-_-_\', \'1938-1-8\', NULL, NULL) in /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php:678\nStack trace:\n#0 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1307): yii\\db\\Schema->convertException(Object(PDOException), \'INSERT INTO `pr...\')\n#1 /var/www/funerai.com/vendor/yiisoft/yii2/db/Command.php(1102): yii\\db\\Command->internalExecute(\'INSERT INTO `pr...\')\n#2 /var/www/funerai.com/vendor/yiisoft/yii2/db/Schema.php(433): yii\\db\\Command->execute()\n#3 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(600): yii\\db\\Schema->insert(\'product\', Array)\n#4 /var/www/funerai.com/vendor/yiisoft/yii2/db/ActiveRecord.php(566): yii\\db\\ActiveRecord->insertInternal(NULL)\n#5 /var/www/funerai.com/vendor/yiisoft/yii2/db/BaseActiveRecord.php(678): yii\\db\\ActiveRecord->insert(true, NULL)\n#6 /var/www/funerai.com/backend/controllers/ProductController.php(129): yii\\db\\BaseActiveRecord->save()\n#7 [internal function]: backend\\controllers\\ProductController->actionImportCsv()\n#8 /var/www/funerai.com/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array(Array, Array)\n#9 /var/www/funerai.com/vendor/yiisoft/yii2/base/Controller.php(181): yii\\base\\InlineAction->runWithParams(Array)\n#10 /var/www/funerai.com/vendor/yiisoft/yii2/base/Module.php(534): yii\\base\\Controller->runAction(\'import-csv\', Array)\n#11 /var/www/funerai.com/vendor/yiisoft/yii2/web/Application.php(104): yii\\base\\Module->runAction(\'product/import-...\', Array)\n#12 /var/www/funerai.com/vendor/yiisoft/yii2/base/Application.php(392): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#13 /var/www/funerai.com/backend/web/index.php(23): yii\\base\\Application->run()\n#14 {main}\nAdditional Information:\nArray\n(\n    [0] => 22007\n    [1] => 1292\n    [2] => Incorrect datetime value: \'1937-_-_\' for column `yii2-starter-kit`.`product`.`date_one` at row 1\n)\n');

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
(1, 'webmaster', '2G8A8BG3AoJ5cD2hfPuk8Sx4Gug9RdIW', '_2Hnt-DJi1IAblQJ9nN0yP8wTc0zJes-oXzwUsg8', '$2y$13$qXDZ5qGtlPlkufybbcOrL.CGM6GBiBC2eLsbTibDn/DnymM8Dh/TO', NULL, NULL, 'webmaster@example.com', 2, 1672045675, 1672045675, 1676648751),
(2, 'manager', 'B6NAj3puSGWtdPlSVVv3I17KMBraOaRq', 'hRmpQUHNOmTtkKQ-A4fQjk0RO2tNsVBBxglnBSCV', '$2y$13$yk2MlvyqLUGSEFcDnpI2G.2Dfd5IUtXzMeACBggBPTdah1n8Cfb3i', NULL, NULL, 'manager@example.com', 2, 1672045675, 1672045675, NULL),
(3, 'user', 'j5LP9FfyVD_zOn5OFlIYfqDCuMYTaKRu', 'n2WLa_DAUii-PlynGlcKpdaUqBIqig88arRDNlCK', '$2y$13$oWsAuk/YuEGGvpAof0FlmerRmHDyYL6n2koK4wEoMqNBGPMub8RNW', NULL, NULL, 'user@example.com', 2, 1672045676, 1672045676, NULL),
(4, 'test-user', 'EEd30RzhhMsKDEwQq4iZQcl0iuDW_Ff6', 'dYIBPHBCKlOdeYwgy8g9iBumhCEweoQcL4r5Zka5', '$2y$13$BD2u9JJ91zwYthqW3qzj7eW2yYR1BRr/UcZPZ62IL0x8De1T./WZS', NULL, NULL, 'test-user@test.ru', 2, 1672067465, 1672067465, 1676476948);

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
-- AUTO_INCREMENT для таблицы `file_storage_item`
--
ALTER TABLE `file_storage_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10266;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

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
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`map_id`) REFERENCES `map` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
