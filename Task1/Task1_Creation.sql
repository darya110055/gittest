-- Дамп структуры базы данных supply
CREATE DATABASE IF NOT EXISTS `supply` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `supply`;

-- Дамп структуры для таблица supply.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NameCustomer` text NOT NULL,
  `Address` text DEFAULT NULL,
  `Phone` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Дамп структуры для таблица supply.product
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  `PriceProduct` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CodeProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Дамп структуры для таблица supply.order
CREATE TABLE IF NOT EXISTS `order` (
  `CodeOrder` int(11) NOT NULL AUTO_INCREMENT,
  `IdCustomer` int(11) NOT NULL,
  `№Treaty` int(11) DEFAULT NULL,
  `DateTreaty` date DEFAULT NULL,
  `CodeProduct` int(11) NOT NULL,
  `ScheduledDelivery` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodeOrder`),
  KEY `IdCustomer` (`IdCustomer`),
  KEY `CodeProduct` (`CodeProduct`),
  CONSTRAINT `FK_order_customer` FOREIGN KEY (`IdCustomer`) REFERENCES `customer` (`Id`),
  CONSTRAINT `FK_order_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Дамп структуры для таблица supply.shipment
CREATE TABLE IF NOT EXISTS `shipment` (
  `CodeShipment` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`CodeShipment`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Дамп структуры для таблица supply.shipment_content
CREATE TABLE IF NOT EXISTS `shipment_content` (
  `ShipmentCode` int(11) NOT NULL,
  `OrderCode` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`ShipmentCode`,`OrderCode`),
  KEY `FK_Shipment_Content_order` (`OrderCode`),
  CONSTRAINT `FK_Shipment_Content_order` FOREIGN KEY (`OrderCode`) REFERENCES `order` (`CodeOrder`),
  CONSTRAINT `FK_Shipment_Content_shipment` FOREIGN KEY (`ShipmentCode`) REFERENCES `shipment` (`CodeShipment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
