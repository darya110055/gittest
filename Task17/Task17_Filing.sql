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


-- Дамп структуры базы данных repair
CREATE DATABASE IF NOT EXISTS `repair` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `repair`;

-- Дамп структуры для таблица repair.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `CodeEmployees` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Position` text NOT NULL,
  PRIMARY KEY (`CodeEmployees`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы repair.employees: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`CodeEmployees`, `FullName`, `Position`) VALUES
	(1, 'gfhgfh', 'dfgdfg'),
	(2, 'dgdg', 'dfgdfg'),
	(3, 'dfgdf', 'dfgdfg'),
	(4, 'gfdfgjg', 'dfgdfg'),
	(5, 'gfhgkjhgkhgfh', 'dfgdfg');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Дамп структуры для таблица repair.firm
CREATE TABLE IF NOT EXISTS `firm` (
  `CodeFirm` int(11) NOT NULL AUTO_INCREMENT,
  `NameFirm` text NOT NULL,
  PRIMARY KEY (`CodeFirm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы repair.firm: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `firm` DISABLE KEYS */;
INSERT INTO `firm` (`CodeFirm`, `NameFirm`) VALUES
	(1, 'dfg');
/*!40000 ALTER TABLE `firm` ENABLE KEYS */;

-- Дамп структуры для таблица repair.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `CodeOrder` int(11) NOT NULL AUTO_INCREMENT,
  `FullNameClient` text NOT NULL,
  `CodeProduct` int(11) NOT NULL,
  `Guarantee` bit(1) NOT NULL DEFAULT b'0',
  `Date` date NOT NULL,
  PRIMARY KEY (`CodeOrder`),
  KEY `FK_orders_product` (`CodeProduct`),
  CONSTRAINT `FK_orders_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы repair.orders: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`CodeOrder`, `FullNameClient`, `CodeProduct`, `Guarantee`, `Date`) VALUES
	(1, 'JHGv', 3, b'0', '2022-02-10'),
	(2, 'JHGv', 4, b'1', '2022-02-10'),
	(3, 'JHGv', 1, b'0', '2022-02-10');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Дамп структуры для таблица repair.order_fulfillment
CREATE TABLE IF NOT EXISTS `order_fulfillment` (
  `CodeOrder` int(11) NOT NULL,
  `TypeRepair` text NOT NULL,
  `RepairAmount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `OrderExecutionDate` date NOT NULL,
  `MessageClient` bit(1) NOT NULL DEFAULT b'0',
  `DateReceiptGoods` date NOT NULL,
  `Price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `CodeEmployee` int(11) NOT NULL,
  PRIMARY KEY (`CodeOrder`),
  KEY `FK_order_fulfillment_employees` (`CodeEmployee`),
  CONSTRAINT `FK_order_fulfillment_employees` FOREIGN KEY (`CodeEmployee`) REFERENCES `employees` (`CodeEmployees`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_order_fulfillment_orders` FOREIGN KEY (`CodeOrder`) REFERENCES `orders` (`CodeOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы repair.order_fulfillment: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `order_fulfillment` DISABLE KEYS */;
INSERT INTO `order_fulfillment` (`CodeOrder`, `TypeRepair`, `RepairAmount`, `OrderExecutionDate`, `MessageClient`, `DateReceiptGoods`, `Price`, `CodeEmployee`) VALUES
	(1, 'klh', 568.00, '2022-02-10', b'1', '2022-02-10', 681.00, 2),
	(2, 'klh', 568.00, '2022-02-10', b'1', '2022-02-10', 681.00, 2);
/*!40000 ALTER TABLE `order_fulfillment` ENABLE KEYS */;

-- Дамп структуры для таблица repair.product
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  `Firm` int(11) NOT NULL,
  `Model` text NOT NULL,
  `TechnicalSpecifcations` text NOT NULL,
  `WarrantyPeriod` int(11) NOT NULL,
  `Picture` blob NOT NULL,
  PRIMARY KEY (`CodeProduct`),
  KEY `FK_product_firm` (`Firm`),
  CONSTRAINT `FK_product_firm` FOREIGN KEY (`Firm`) REFERENCES `firm` (`CodeFirm`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы repair.product: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`CodeProduct`, `NameProduct`, `Firm`, `Model`, `TechnicalSpecifcations`, `WarrantyPeriod`, `Picture`) VALUES
	(1, 'ghgf', 1, 'fg', ';lj;ojopjn', 2, _binary ''),
	(2, 'hghg', 1, 'fg', ';lj;ojopjn', 5, _binary ''),
	(3, 'kmjh', 1, 'fg', ';lj;ojopjn', 8, _binary ''),
	(4, 'wfvv', 1, 'fg', ';lj;ojopjn', 3, _binary '');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
