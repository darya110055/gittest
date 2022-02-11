CREATE DATABASE IF NOT EXISTS `furniture`;
USE `furniture`;
CREATE TABLE IF NOT EXISTS `buyers` (
  `CodeBuyer` int(11) NOT NULL AUTO_INCREMENT,
  `NameBuyer` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`CodeBuyer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `furniture` (
  `CodeFurniture` int(11) NOT NULL AUTO_INCREMENT,
  `NameFurniture` text NOT NULL,
  `Model` text NOT NULL,
  `ModelCharacteristic` text NOT NULL,
  `Price` decimal(20,2) NOT NULL,
  PRIMARY KEY (`CodeFurniture`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `treaties` (
  `NumberTreaty` int(11) NOT NULL AUTO_INCREMENT,
  `CodeBuyers` int(11) NOT NULL,
  `DateOfExecutionOfTheContract` date NOT NULL,
  `ContractExecutionDate` date NOT NULL,
  PRIMARY KEY (`NumberTreaty`),
  KEY `FK_treaties_buyers` (`CodeBuyers`),
  CONSTRAINT `FK_treaties_buyers` FOREIGN KEY (`CodeBuyers`) REFERENCES `buyers` (`CodeBuyer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `sales` (
  `NumberTreaties` int(11) NOT NULL,
  `NameFurniture` int(11) NOT NULL,
  `Model` text NOT NULL,
  `Number` int(11) NOT NULL,
  KEY `FK_sales_treaties` (`NumberTreaties`),
  KEY `FK_sales_furniture` (`NameFurniture`),
  CONSTRAINT `FK_sales_furniture` FOREIGN KEY (`NameFurniture`) REFERENCES `furniture` (`CodeFurniture`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_treaties` FOREIGN KEY (`NumberTreaties`) REFERENCES `treaties` (`NumberTreaty`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
