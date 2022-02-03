CREATE DATABASE IF NOT EXISTS `catering` ;
USE `catering`;
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `view_dish` (
  `CodeViewDish` int(11) NOT NULL AUTO_INCREMENT,
  `NameViewDish` text NOT NULL,
  PRIMARY KEY (`CodeViewDish`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `cooking` (
  `CodeDish` int(11) NOT NULL AUTO_INCREMENT,
  `NumberPortions` int(11) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`CodeDish`,`Date`),
  CONSTRAINT `FK_cooking_dish` FOREIGN KEY (`CodeDish`) REFERENCES `dish` (`CodeDish`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  `CaloricContent` int(11) NOT NULL,
  `ProductWeight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`CodeProduct`)
CREATE TABLE IF NOT EXISTS `dish` (
  `CodeDish` int(11) NOT NULL AUTO_INCREMENT,
  `NameDish` text NOT NULL,
  `ViewDish` int(11) NOT NULL,
  `ServingWeight,g` decimal(3,0) NOT NULL DEFAULT 0,
  `Pucture` blob DEFAULT NULL,
  `CookingTime` int(11) NOT NULL,
  `Recipe` text NOT NULL,
  PRIMARY KEY (`CodeDish`),
  KEY `FK_dish_view_dish` (`ViewDish`),
  CONSTRAINT `FK_dish_view_dish` FOREIGN KEY (`ViewDish`) REFERENCES `view_dish` (`CodeViewDish`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `dish_product` (
  `Dish` int(11) NOT NULL,
  `Product` int(11) NOT NULL,
  KEY `FK_dich_product_dish` (`Dish`),
  KEY `FK_dish_product_product` (`Product`),
  CONSTRAINT `FK_dich_product_dish` FOREIGN KEY (`Dish`) REFERENCES `dish` (`CodeDish`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_dish_product_product` FOREIGN KEY (`Product`) REFERENCES `product` (`CodeProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;