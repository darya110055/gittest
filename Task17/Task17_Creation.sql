CREATE DATABASE IF NOT EXISTS `repair`;
USE `repair`;
CREATE TABLE IF NOT EXISTS `employees` (
  `CodeEmployees` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Position` text NOT NULL,
  PRIMARY KEY (`CodeEmployees`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `firm` (
  `CodeFirm` int(11) NOT NULL AUTO_INCREMENT,
  `NameFirm` text NOT NULL,
  PRIMARY KEY (`CodeFirm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
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
