-- Дамп структуры базы данных supply
CREATE DATABASE IF NOT EXISTS `supply` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `supply`;

-- Дамп структуры для таблица supply.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `Id` int(11) NOT NULL,
  `NameCustomer` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  KEY `Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Дамп структуры для таблица supply.order
CREATE TABLE IF NOT EXISTS `order` (
  `CodeOrder` int(11) NOT NULL,
  `IdCustomer` int(11) NOT NULL,
  `№Treaty` int(11) DEFAULT NULL,
  `DateTreaty` date DEFAULT NULL,
  `CodeProduct` int(11) NOT NULL,
  `ScheduledDelivery` int(11) DEFAULT NULL,
  KEY `CodeOrder` (`CodeOrder`),
  KEY `IdCustomer` (`IdCustomer`),
  KEY `CodeProduct` (`CodeProduct`),
  CONSTRAINT `FK_order_customer` FOREIGN KEY (`IdCustomer`) REFERENCES `customer` (`Id`),
  CONSTRAINT `FK_order_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Дамп структуры для таблица supply.product
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL,
  `NameProduct` text DEFAULT NULL,
  `PriceProduct` decimal(10,2) DEFAULT NULL,
  KEY `CodeProduct` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Дамп структуры для таблица supply.shipment
CREATE TABLE IF NOT EXISTS `shipment` (
  `CodeShipment` int(11) NOT NULL,
  `CodeOrder` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `GoodsShipped` int(11) DEFAULT NULL,
  KEY `CodeOrder` (`CodeOrder`),
  CONSTRAINT `FK_shipment_order` FOREIGN KEY (`CodeOrder`) REFERENCES `order` (`CodeOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
