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


-- Дамп структуры базы данных gai
CREATE DATABASE IF NOT EXISTS `gai` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `gai`;

-- Дамп структуры для таблица gai.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `NumberCar` int(11) NOT NULL AUTO_INCREMENT,
  `Brand` text NOT NULL,
  `Model` text NOT NULL,
  `Color` text NOT NULL,
  `ReleaseDate` date NOT NULL,
  `DateRegistration` date NOT NULL,
  PRIMARY KEY (`NumberCar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы gai.cars: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;

-- Дамп структуры для таблица gai.drivers
CREATE TABLE IF NOT EXISTS `drivers` (
  `DriversLicenseNumber` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`DriversLicenseNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы gai.drivers: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
