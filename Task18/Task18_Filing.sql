-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.4.22-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных furniture
CREATE DATABASE IF NOT EXISTS `furniture` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `furniture`;

-- Дамп структуры для таблица furniture.buyers
CREATE TABLE IF NOT EXISTS `buyers` (
  `CodeBuyer` int(11) NOT NULL AUTO_INCREMENT,
  `NameBuyer` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`CodeBuyer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы furniture.buyers: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` (`CodeBuyer`, `NameBuyer`, `Address`, `Phone`) VALUES
	(1, 'FJFUDv', 'dsfdsf', '31564'),
	(2, 'Hmmvd', 'dsfdsf', '31564'),
	(3, 'Jjvkjv', 'dsfdsf', '31564'),
	(4, 'Kkjbiv', 'dsfdsf', '31564'),
	(5, 'JVH', 'dsfdsf', '31564');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;

-- Дамп структуры для таблица furniture.furniture
CREATE TABLE IF NOT EXISTS `furniture` (
  `CodeFurniture` int(11) NOT NULL AUTO_INCREMENT,
  `NameFurniture` text NOT NULL,
  `Model` text NOT NULL,
  `ModelCharacteristic` text NOT NULL,
  `Price` decimal(20,2) NOT NULL,
  PRIMARY KEY (`CodeFurniture`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы furniture.furniture: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
INSERT INTO `furniture` (`CodeFurniture`, `NameFurniture`, `Model`, `ModelCharacteristic`, `Price`) VALUES
	(1, 'Bhggh', '1', 'gfgfg', 6595.00),
	(2, 'Jk,ve', '1', 'gfgfg', 6595.00),
	(3, 'P,mlv', '1', 'gfgfg', 6595.00);
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;

-- Дамп структуры для таблица furniture.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `NumberTreaties` int(11) NOT NULL,
  `NameFurniture` int(11) NOT NULL,
  `Model` text NOT NULL,
  `Number` int(11) NOT NULL,
  KEY `FK_sales_treaties` (`NumberTreaties`),
  KEY `FK_sales_furniture` (`NameFurniture`),
  CONSTRAINT `FK_sales_furniture` FOREIGN KEY (`NameFurniture`) REFERENCES `furniture` (`CodeFurniture`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_treaties` FOREIGN KEY (`NumberTreaties`) REFERENCES `treaties` (`NumberTreaty`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы furniture.sales: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`NumberTreaties`, `NameFurniture`, `Model`, `Number`) VALUES
	(167, 1, '15', 1),
	(166, 2, '15', 1),
	(166, 3, '15', 1);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Дамп структуры для таблица furniture.treaties
CREATE TABLE IF NOT EXISTS `treaties` (
  `NumberTreaty` int(11) NOT NULL AUTO_INCREMENT,
  `CodeBuyers` int(11) NOT NULL,
  `DateOfExecutionOfTheContract` date NOT NULL,
  `ContractExecutionDate` date NOT NULL,
  PRIMARY KEY (`NumberTreaty`),
  KEY `FK_treaties_buyers` (`CodeBuyers`),
  CONSTRAINT `FK_treaties_buyers` FOREIGN KEY (`CodeBuyers`) REFERENCES `buyers` (`CodeBuyer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы furniture.treaties: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `treaties` DISABLE KEYS */;
INSERT INTO `treaties` (`NumberTreaty`, `CodeBuyers`, `DateOfExecutionOfTheContract`, `ContractExecutionDate`) VALUES
	(165, 2, '2022-02-10', '2022-02-10'),
	(166, 5, '2022-02-10', '2022-02-10'),
	(167, 4, '2022-02-10', '2022-02-10');
/*!40000 ALTER TABLE `treaties` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
