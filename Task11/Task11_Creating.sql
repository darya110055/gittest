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


-- Дамп структуры базы данных overalls
CREATE DATABASE IF NOT EXISTS `overalls` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `overalls`;

-- Дамп структуры для таблица overalls.overalls
CREATE TABLE IF NOT EXISTS `overalls` (
  `CodeOveralls` int(11) NOT NULL AUTO_INCREMENT,
  `ViewOveralls` text NOT NULL,
  `WearPeriod` int(11) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CodeOveralls`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы overalls.overalls: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `overalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `overalls` ENABLE KEYS */;

-- Дамп структуры для таблица overalls.receiving
CREATE TABLE IF NOT EXISTS `receiving` (
  `CodeWorkers` int(11) NOT NULL,
  `CodeOveralls` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Painting` text NOT NULL,
  KEY `FK_receiving_workers` (`CodeWorkers`),
  KEY `FK_receiving_overalls` (`CodeOveralls`),
  CONSTRAINT `FK_receiving_overalls` FOREIGN KEY (`CodeOveralls`) REFERENCES `overalls` (`CodeOveralls`),
  CONSTRAINT `FK_receiving_workers` FOREIGN KEY (`CodeWorkers`) REFERENCES `workers` (`CodeWorkers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы overalls.receiving: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `receiving` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiving` ENABLE KEYS */;

-- Дамп структуры для таблица overalls.workers
CREATE TABLE IF NOT EXISTS `workers` (
  `CodeWorkers` int(11) NOT NULL AUTO_INCREMENT,
  `Workshop` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Post` text NOT NULL,
  `Sale, %` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`CodeWorkers`),
  KEY `FK_workers_workshops` (`Workshop`),
  CONSTRAINT `FK_workers_workshops` FOREIGN KEY (`Workshop`) REFERENCES `workshops` (`CodeWorkshops`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы overalls.workers: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;

-- Дамп структуры для таблица overalls.workshops
CREATE TABLE IF NOT EXISTS `workshops` (
  `CodeWorkshops` int(11) NOT NULL AUTO_INCREMENT,
  `NameWorkshops` text NOT NULL,
  `FullNameChiefWorkshops` text NOT NULL,
  PRIMARY KEY (`CodeWorkshops`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы overalls.workshops: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `workshops` DISABLE KEYS */;
/*!40000 ALTER TABLE `workshops` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
