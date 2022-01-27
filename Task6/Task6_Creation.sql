-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.4.18-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных trevel
CREATE DATABASE IF NOT EXISTS `trevel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `trevel`;

-- Дамп структуры для таблица trevel.buy
CREATE TABLE IF NOT EXISTS `buy` (
  `Код маршрута` int(11) DEFAULT NULL,
  `Цель путешествия` int(11) DEFAULT NULL,
  `Цена путевки (руб)` int(11) DEFAULT NULL,
  `Количесвто проданных путевок по маршруту` int(11) DEFAULT NULL,
  `Дата продажи` text DEFAULT NULL,
  KEY `FK_buy_target` (`Цель путешествия`),
  KEY `FK_buy_route` (`Код маршрута`),
  CONSTRAINT `FK_buy_route` FOREIGN KEY (`Код маршрута`) REFERENCES `route` (`Код маршрута`),
  CONSTRAINT `FK_buy_target` FOREIGN KEY (`Цель путешествия`) REFERENCES `target` (`Номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы trevel.buy: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;

-- Дамп структуры для таблица trevel.country
CREATE TABLE IF NOT EXISTS `country` (
  `Код страны` int(11) DEFAULT NULL,
  `Название страны` text DEFAULT NULL,
  `Стоимость визы (руб)` int(11) DEFAULT NULL,
  KEY `Код страны` (`Код страны`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы trevel.country: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Дамп структуры для таблица trevel.route
CREATE TABLE IF NOT EXISTS `route` (
  `Код страны` int(11) DEFAULT NULL,
  `Код маршрута` int(11) DEFAULT NULL,
  `Наименование маршрута` text DEFAULT NULL,
  KEY `Код маршрута` (`Код маршрута`),
  KEY `FK_route_country` (`Код страны`),
  CONSTRAINT `FK_route_country` FOREIGN KEY (`Код страны`) REFERENCES `country` (`Код страны`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы trevel.route: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
/*!40000 ALTER TABLE `route` ENABLE KEYS */;

-- Дамп структуры для таблица trevel.target
CREATE TABLE IF NOT EXISTS `target` (
  `Номер` int(11) DEFAULT NULL,
  `Цель маршрута` text DEFAULT NULL,
  KEY `Номер` (`Номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы trevel.target: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
/*!40000 ALTER TABLE `target` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
