-- Дамп структуры базы данных retail
CREATE DATABASE IF NOT EXISTS `retail` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `retail`;

-- Дамп структуры для таблица retail.product
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  PRIMARY KEY (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица retail.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `CodeSales` int(11) NOT NULL AUTO_INCREMENT,
  `CodeProduct` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Number` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CodeSales`),
  KEY `FK_sales_product` (`CodeProduct`),
  CONSTRAINT `FK_sales_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица retail.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `CodeSupplier` int(11) NOT NULL AUTO_INCREMENT,
  `NameSupplier` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` decimal(10,0) NOT NULL,
  `Contact` text NOT NULL,
  PRIMARY KEY (`CodeSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица retail.supply
CREATE TABLE IF NOT EXISTS `supply` (
  `CodeSupply` int(11) NOT NULL AUTO_INCREMENT,
  `CodeProduct` int(11) NOT NULL,
  `CodeSupplier` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`CodeSupply`),
  KEY `FK_supply_product` (`CodeProduct`),
  KEY `FK_supply_supplier` (`CodeSupplier`),
  CONSTRAINT `FK_supply_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`),
  CONSTRAINT `FK_supply_supplier` FOREIGN KEY (`CodeSupplier`) REFERENCES `supplier` (`CodeSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
