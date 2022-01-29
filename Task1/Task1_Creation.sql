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
  `DateTreaty` int(11) DEFAULT NULL,
  `CodeProduct` int(11) NOT NULL,
  `ScheduledDelivery` int(11) DEFAULT NULL,
  KEY `FK_order_customer` (`IdCustomer`),
  KEY `FK_order_product` (`CodeProduct`),
  KEY `Code order` (`CodeOrder`),
  CONSTRAINT `FK_order_customer` FOREIGN KEY (`IdCustomer`) REFERENCES `customer` (`Id`),
  CONSTRAINT `FK_order_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Дамп структуры для таблица supply.product
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL,
  `NameProduct` text DEFAULT NULL,
  `PriceProduct` decimal(10,2) DEFAULT NULL,
  KEY `Code product` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Дамп структуры для таблица supply.shipment
CREATE TABLE IF NOT EXISTS `shipment` (
  `CodeShipment` int(11) NOT NULL,
  `CodeOrder` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `GoodsShipped` int(11) DEFAULT NULL,
  KEY `FK_shipment_order` (`CodeOrder`),
  CONSTRAINT `FK_shipment_order` FOREIGN KEY (`CodeOrder`) REFERENCES `order` (`Codeorder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;