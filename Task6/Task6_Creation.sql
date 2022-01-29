-- Дамп структуры базы данных trevel
CREATE DATABASE IF NOT EXISTS `trevel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `trevel`;

-- Дамп структуры для таблица trevel.buy
CREATE TABLE IF NOT EXISTS `buy` (
  `CodeRoute` int(11) NOT NULL,
  `PurposeTravel` int(11) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  KEY `FK_buy_target` (`PurposeTravel`),
  KEY `FK_buy_route` (`CodeRoute`),
  CONSTRAINT `FK_buy_route` FOREIGN KEY (`CodeRoute`) REFERENCES `route` (`CodeRoute`),
  CONSTRAINT `FK_buy_target` FOREIGN KEY (`PurposeTravel`) REFERENCES `target` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица trevel.country
CREATE TABLE IF NOT EXISTS `country` (
  `CodeCountry` int(11) NOT NULL,
  `NameCountry` text DEFAULT NULL,
  `PriceVisa` decimal(10,2) DEFAULT NULL,
  KEY `Код страны` (`CodeCountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица trevel.route
CREATE TABLE IF NOT EXISTS `route` (
  `CodeRoute` int(11) NOT NULL,
  `CodeCountry` int(11) NOT NULL,
  `NameRoute` text DEFAULT NULL,
  KEY `Код маршрута` (`CodeRoute`),
  KEY `FK_route_country` (`CodeCountry`),
  CONSTRAINT `FK_route_country` FOREIGN KEY (`CodeCountry`) REFERENCES `country` (`CodeCountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица trevel.target
CREATE TABLE IF NOT EXISTS `target` (
  `Code` int(11) NOT NULL,
  `PurposeRout` text DEFAULT NULL,
  KEY `Номер` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;