CREATE DATABASE IF NOT EXISTS `typography`;
USE `typography`;
CREATE TABLE IF NOT EXISTS `gild` (
  `NumberGild` int(11) NOT NULL AUTO_INCREMENT,
  `NameGild` text NOT NULL,
  `Foreman` text NOT NULL,
  `Phone` int(11) NOT NULL,
  PRIMARY KEY (`NumberGild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `products` (
  `CodeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  `NumberGild` int(11) NOT NULL,
  `Price` decimal(20,2) NOT NULL,
  PRIMARY KEY (`CodeProduct`),
  KEY `FK_products_gild` (`NumberGild`),
  CONSTRAINT `FK_products_gild` FOREIGN KEY (`NumberGild`) REFERENCES `gild` (`NumberGild`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `treaty` (
  `NumberTreaty` int(11) NOT NULL AUTO_INCREMENT,
  `NameCustomer` text NOT NULL,
  `Address` text NOT NULL,
  `DateIssue` date NOT NULL,
  `DateCompletion` date NOT NULL,
  PRIMARY KEY (`NumberTreaty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `orders` (
  `NumberTreaty` int(11) NOT NULL,
  `CodeProduct` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`NumberTreaty`,`CodeProduct`),
  KEY `FK_orders_products` (`CodeProduct`),
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`CodeProduct`) REFERENCES `products` (`CodeProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_treaty` FOREIGN KEY (`NumberTreaty`) REFERENCES `treaty` (`NumberTreaty`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

