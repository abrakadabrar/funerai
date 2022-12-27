-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Дек 26 2022 г., 15:12
-- Версия сервера: 8.0.31
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
-- Структура таблицы `category`
--

CREATE TABLE `category` (
                            `id` int NOT NULL,
                            `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                            `text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

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
-- Структура таблицы `product`
--

CREATE TABLE `product` (
                           `id` int NOT NULL,
                           `category_id` int DEFAULT NULL,
                           `sku` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
                           `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
                           `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
                           `price` float DEFAULT NULL,
                           `asset_base_url` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
                           `asset_path` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `sku`, `title`, `description`, `price`, `asset_base_url`, `asset_path`) VALUES
                                                                                                                        (1, 4, '1001', 'Asus', '<p>Asus knows what it&#39;s doing. It knows that the MacBook Air laptops are old news,\n		 deliberately left to tread water to make way for the all-singing,\n		 (mostly) all-dancing 12in. Asus thinks there&#39;s life left for a 13in &#39;ultrabook&#39; still. The Asus ZenBook UX305 is pretty much everything the 13in should be at this point,\n		 but isn&#39;t. What do I mean? Well,\n		 it&#39;s pretty affordable at &pound;650 and has a really rather good screen,\n		 while still looking and feeling fantastic. Of course,\n		 as it runs Windows 8.1 rather than it&#39;s not going to convert many obsessives. But if you&#39;re on the cusp of being swayed,\n		 let the Asus ZenBook UX305 sway you.</p>\n', 700, '', ''),
                                                                                                                        (2, 4, '1002', 'MacBook', 'MacBook Air is nice computer', 1200, '', ''),
                                                                                                                        (3, 7, '1003', 'Samsung J5', '', 250, '', ''),
                                                                                                                        (4, 1, '1004', 'TV', '', 200, '', ''),
                                                                                                                        (5, 17, '1005', 'Porshe design', '', 100, '', ''),
                                                                                                                        (6, 18, '1006', 'EMPORIO ARMANI', '', 100, '', ''),
                                                                                                                        (7, 17, '1007', 'PRADA', '', 90, '', ''),
                                                                                                                        (8, 13, '1008', 'Fanta', '', 0.75, '', ''),
                                                                                                                        (9, 13, '1009', 'Fanta 1.5 L', '', 0.95, '', ''),
                                                                                                                        (10, 15, '1010', 'Milavitsa', '', 100, '', ''),
                                                                                                                        (11, 15, '1011', 'Victoria\'s secret', '', 90, '', ''),
                                                                                                                        (12, 15, '1012', 'Clovia', '', 90, '', ''),
                                                                                                                        (13, 15, '1013', 'Amante', '', 90, '', ''),
                                                                                                                        (15, 19, '1015', 'Mouse', '', 10, '', ''),
                                                                                                                        (16, 19, '1016', 'Bag', '', 15, '', ''),
                                                                                                                        (17, 1, '777777', 'Test', '<p>test descr</p>', 100500, 'http://storage.aws_products.ruz/source', '1/mVrUvlSqsrmB-dHlUO0OhyQy4zBA29xB.gif');

-- --------------------------------------------------------

--
-- Структура таблицы `product_like`
--

CREATE TABLE `product_like` (
                                `id` int NOT NULL,
                                `product_id` int NOT NULL,
                                `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product_like`
--

INSERT INTO `product_like` (`id`, `product_id`, `user_id`) VALUES
    (2, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`id`),
    ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `product_like`
--
ALTER TABLE `product_like`
    ADD PRIMARY KEY (`id`),
    ADD KEY `product_id` (`product_id`),
    ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `product_like`
--
ALTER TABLE `product_like`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
    ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_like`
--
ALTER TABLE `product_like`
    ADD CONSTRAINT `product_like_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT `product_like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
