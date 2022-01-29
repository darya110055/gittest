-- Дамп структуры базы данных retail
CREATE DATABASE IF NOT EXISTS `retail` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `retail`;

-- Дамп структуры для таблица retail.product
CREATE TABLE IF NOT EXISTS `product` (
  `code_product` int(11) NOT NULL,
  `NameProduct` text DEFAULT NULL,
  KEY `code_product` (`code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE IF NOT EXISTS `supplier` (
  `code_supplier` int(11) NOT NULL,
  `NameSupplier` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  KEY `code_supplier` (`code_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

