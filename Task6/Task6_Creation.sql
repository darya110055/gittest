-- Дамп структуры базы данных travel
CREATE DATABASE IF NOT EXISTS `travel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `travel`;

-- Дамп структуры для таблица travel.country
CREATE TABLE IF NOT EXISTS `country` (
  `CodeCountry` int(11) NOT NULL AUTO_INCREMENT,
  `NameCountry` text NOT NULL,
  `PriceVisa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CodeCountry`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица travel.route
CREATE TABLE IF NOT EXISTS `route` (
  `CodeRoute` int(11) NOT NULL AUTO_INCREMENT,
  `CodeCountry` int(11) NOT NULL,
  `NameRoute` text DEFAULT NULL,
  PRIMARY KEY (`CodeRoute`),
  KEY `FK_route_country` (`CodeCountry`),
  CONSTRAINT `FK_route_country` FOREIGN KEY (`CodeCountry`) REFERENCES `country` (`CodeCountry`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица travel.target
CREATE TABLE IF NOT EXISTS `target` (
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `PurposeRout` text DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица travel.buy
CREATE TABLE IF NOT EXISTS `buy` (
  `CodeRoute` int(11) NOT NULL,
  `PurposeTravel` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Number` int(11) NOT NULL,
  `Date` date NOT NULL,
  KEY `FK_buy_target` (`PurposeTravel`),
  KEY `FK_buy_route` (`CodeRoute`),
  CONSTRAINT `FK_buy_route` FOREIGN KEY (`CodeRoute`) REFERENCES `route` (`CodeRoute`),
  CONSTRAINT `FK_buy_target` FOREIGN KEY (`PurposeTravel`) REFERENCES `target` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
