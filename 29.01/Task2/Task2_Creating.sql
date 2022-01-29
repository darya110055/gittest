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


-- Дамп структуры базы данных retail
CREATE DATABASE IF NOT EXISTS `retail` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `retail`;

-- Дамп структуры для таблица retail.product
CREATE TABLE IF NOT EXISTS `product` (
  `code_product` int(11) NOT NULL,
  `NameProduct` text DEFAULT NULL,
  KEY `code_product` (`code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы retail.product: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица retail.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `CodeSales` int(11) NOT NULL,
  `CodeProduct` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  KEY `FK_sales_product` (`CodeProduct`),
  KEY `code_sales` (`CodeSales`),
  CONSTRAINT `FK_sales_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы retail.sales: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Дамп структуры для таблица retail.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `code_supplier` int(11) NOT NULL,
  `NameSupplier` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  KEY `code_supplier` (`code_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы retail.supplier: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

-- Дамп структуры для таблица retail.supply
CREATE TABLE IF NOT EXISTS `supply` (
  `CodeSupply` int(11) NOT NULL,
  `CodeProduct` int(11) NOT NULL,
  `CodeSupplier` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  KEY `CodeSupply` (`CodeSupply`),
  KEY `FK_supply_product` (`CodeProduct`),
  KEY `FK_supply_supplier` (`CodeSupplier`),
  CONSTRAINT `FK_supply_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`code_product`),
  CONSTRAINT `FK_supply_supplier` FOREIGN KEY (`CodeSupplier`) REFERENCES `supplier` (`code_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы retail.supply: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
