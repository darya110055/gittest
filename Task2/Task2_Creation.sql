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
  `code_product` int(11) DEFAULT NULL,
  `name_product` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `code_suuplier` int(11) DEFAULT NULL,
  KEY `code_product` (`code_product`),
  KEY `FK_product_supplier` (`code_suuplier`),
  CONSTRAINT `FK_product_supplier` FOREIGN KEY (`code_suuplier`) REFERENCES `supplier` (`code_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы retail.product: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица retail.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `code_sales` int(11) DEFAULT NULL,
  `code_product` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  KEY `FK_sales_product` (`code_product`),
  CONSTRAINT `FK_sales_product` FOREIGN KEY (`code_product`) REFERENCES `product` (`code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы retail.sales: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Дамп структуры для таблица retail.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `code_supplier` int(11) DEFAULT NULL,
  `name_supplier` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` float DEFAULT NULL,
  `contact` text DEFAULT NULL,
  KEY `code_supplier` (`code_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы retail.supplier: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
