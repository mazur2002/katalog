-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Бер 03 2021 р., 19:13
-- Версія сервера: 8.0.19
-- Версія PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `katalog`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'ІТ-фахівці', 1, 1),
(2, 'SMM-менеджери', 2, 1),
(3, 'Юристи', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `local` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_recommended` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`id`, `name1`, `category_id`, `company`, `local`, `employment`, `experience`, `position`, `description`, `contacts`, `is_recommended`, `status`) VALUES
(1, 'Middle/Senior Magento2 Developer', 1, 'TranSoftGroup', 'Uzhgorod', 'Senior', '', 'Middle/Senior Magento2 Developer', 'Вимоги:\r\n\r\n3+ роки досвіду в Backend web-розробці (PHP+MySQL)\r\n\r\n2+ роки досвіду роботи з Magento 2\r\n\r\nВідмінне розуміння архітектури Magento, досвід в розробці модулів\r\n\r\nДосвід роботи з PHP 7.2+\r\n\r\nРозуміння ООП, дотримування принципів SOLID\r\n\r\nЗнання і досвід роботи з Linux, Git, nginx, Redis, Varnish, Docker, ElasticSearch\r\n\r\nБажання розвиватися і ділитися досвідом з колегами\r\n\r\nЗнання англійського на рівні вільного читання документації\r\n\r\nБуде перевагою:\r\n\r\nДосвід роботи з Magento 1\r\n\r\nДосвід в міграції сайтів з Magento 1 на Magento 2\r\n\r\nНаявність сертифіката розробника Magento ½\r\n\r\nЗнання HTML, CSS, JavaScript, JQuery, Ajax\r\n\r\nЩо ми пропонуємо Вам:\r\n\r\nРоботу з Middle/Senior спеціалістами\r\n\r\nКонкурентноспроможна компенсація відповідно до досвіду та навичок\r\n\r\nОплачувані конференції\r\n\r\nГнучкий робочий графік\r\n\r\nКейтерінг (кава, чай, печиво)\r\n\r\nКорпоративи, тімбілдинги – must have\r\n\r\nМожливість професійно зростати: від стажера до тімліда\r\n\r\nКомпенсація оплати за спортзал\r\n\r\nСоціальний пакет: мед. страхування, оплата відпусток, лікарняних\r\n\r\nБезкоштовні курси з англійської.\r\n\r\nЗарплата: від 2000$ до 4300', '\r\npersonal@transoftgroup.com.', 0, 1),
(3, 'Адвокат', 3, 'Юридичний факультет', 'Мукачево', 'Віддалена робота', 'Досвід від 2 років', 'Юрист-консультант', 'Шукаємо юриста на віддалену роботу.', '+38 050 299 13 30', 0, 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
