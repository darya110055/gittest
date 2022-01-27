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


-- Дамп структуры базы данных test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Дамп структуры для таблица test.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `Id` int(11) DEFAULT NULL,
  `Name Customer` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы test.customer: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`Id`, `Name Customer`, `Address`, `Phone`) VALUES
	(1, 'Boris', 'pr. Lenina', 7234612),
	(2, 'Lev', 'str. Bellorus', 168733);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Дамп структуры для таблица test.order
CREATE TABLE IF NOT EXISTS `order` (
  `Code order` int(11) DEFAULT NULL,
  `Id customer` int(11) DEFAULT NULL,
  `№ treaty` int(11) DEFAULT NULL,
  `Code product` int(11) DEFAULT NULL,
  `Scheduled delivery` int(11) DEFAULT NULL,
  KEY `FK_order_customer` (`Id customer`),
  KEY `FK_order_product` (`Code product`),
  KEY `Code order` (`Code order`),
  CONSTRAINT `FK_order_customer` FOREIGN KEY (`Id customer`) REFERENCES `customer` (`Id`),
  CONSTRAINT `FK_order_product` FOREIGN KEY (`Code product`) REFERENCES `product` (`Code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы test.order: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`Code order`, `Id customer`, `№ treaty`, `Code product`, `Scheduled delivery`) VALUES
	(1, 1, 157524, 1, 20),
	(2, 2, 28562, 1, 50),
	(3, 2, 38598, 3, 10);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Дамп структуры для таблица test.product
CREATE TABLE IF NOT EXISTS `product` (
  `Code_product` int(11) DEFAULT NULL,
  `Name_product` text DEFAULT NULL,
  `Price_product` int(11) DEFAULT NULL,
  KEY `Code product` (`Code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы test.product: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`Code_product`, `Name_product`, `Price_product`) VALUES
	(1, 'A', 5432),
	(2, 'B', 144),
	(3, 'C', 5438);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица test.shipment
CREATE TABLE IF NOT EXISTS `shipment` (
  `Code shipment` int(11) DEFAULT NULL,
  `Code order` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Goods shipped` int(11) DEFAULT NULL,
  KEY `FK_shipment_order` (`Code order`),
  CONSTRAINT `FK_shipment_order` FOREIGN KEY (`Code order`) REFERENCES `order` (`Code order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы test.shipment: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` (`Code shipment`, `Code order`, `Date`, `Goods shipped`) VALUES
	(1, 1, '2022-01-27', 20),
	(2, 3, '2022-02-05', 10),
	(2, 2, '2022-02-05', 50);
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
