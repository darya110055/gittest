-- Дамп структуры базы данных bank
CREATE DATABASE IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bank`;

-- Дамп структуры для таблица bank.client
CREATE TABLE IF NOT EXISTS `client` (
  `IdClient` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `NPasport` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Phone` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица bank.contributions
CREATE TABLE IF NOT EXISTS `contributions` (
  `CodeContribution` int(11) NOT NULL AUTO_INCREMENT,
  `NameContribution` text NOT NULL,
  `ShelfLife` int(11) NOT NULL,
  `Bid,%` float NOT NULL,
  PRIMARY KEY (`CodeContribution`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица bank.bank
CREATE TABLE IF NOT EXISTS `bank` (
  `№Check` int(11) NOT NULL AUTO_INCREMENT,
  `CodeClient` int(11) NOT NULL,
  `CodeContributin` int(11) NOT NULL,
  `DateOppen` date NOT NULL,
  `DateClose` date DEFAULT NULL,
  `InvestmentAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`№Check`),
  KEY `FK_bank_client` (`CodeClient`),
  KEY `FK_bank_contributions` (`CodeContributin`),
  CONSTRAINT `FK_bank_client` FOREIGN KEY (`CodeClient`) REFERENCES `client` (`IdClient`),
  CONSTRAINT `FK_bank_contributions` FOREIGN KEY (`CodeContributin`) REFERENCES `contributions` (`CodeContribution`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
