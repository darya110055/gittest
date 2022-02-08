CREATE DATABASE IF NOT EXISTS `internet_sales`;
USE `internet_sales`;
CREATE TABLE IF NOT EXISTS `firm` (
  `CodeFirm` int(11) NOT NULL AUTO_INCREMENT,
  `NameFirm` text NOT NULL,
  PRIMARY KEY (`CodeFirm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `internet_sales` (
  `CodeSales` int(11) NOT NULL AUTO_INCREMENT,
  `EmailAddress` text NOT NULL,
  `PaymentDelivery` bit(1) NOT NULL,
  PRIMARY KEY (`CodeSales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  `Firm` int(11) NOT NULL,
  `Model` text NOT NULL,
  `TechnicalSpecifcations` text NOT NULL,
  `Price` decimal(20,2) NOT NULL,
  `WarrantyPeriod` int(11) NOT NULL,
  `Picture` blob NOT NULL,
  PRIMARY KEY (`CodeProduct`),
  KEY `FK_product_firm` (`Firm`),
  CONSTRAINT `FK_product_firm` FOREIGN KEY (`Firm`) REFERENCES `firm` (`CodeFirm`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `orders` (
  `CodeOrders` int(11) NOT NULL AUTO_INCREMENT,
  `CodeSales` int(11) NOT NULL,
  `CodeProduct` int(11) NOT NULL,
  `DateOrder` date NOT NULL,
  `TimeOrder` time NOT NULL,
  `Number` int(11) NOT NULL,
  `FullNameCustomer` text NOT NULL,
  `Phone` decimal(20,0) NOT NULL DEFAULT 0,
  `OrderConfirmation` bit(1) NOT NULL DEFAULT b'0',
  `DateDelivery` date DEFAULT NULL,
  `TimeDelivery` time DEFAULT NULL,
  `AddressDelivery` text DEFAULT NULL,
  `FullNameCourier` text DEFAULT NULL,
  PRIMARY KEY (`CodeOrders`),
  KEY `FK_orders_internet_sales` (`CodeSales`),
  KEY `FK_orders_product` (`CodeProduct`),
  CONSTRAINT `FK_orders_internet_sales` FOREIGN KEY (`CodeSales`) REFERENCES `internet_sales` (`CodeSales`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `sales_product` (
  `CodeProduct` int(11) NOT NULL,
  `CodeSales` int(11) NOT NULL,
  KEY `FK_sales_product_product` (`CodeProduct`),
  KEY `FK_sales_product_internet_sales` (`CodeSales`),
  CONSTRAINT `FK_sales_product_internet_sales` FOREIGN KEY (`CodeSales`) REFERENCES `internet_sales` (`CodeSales`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_product_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
