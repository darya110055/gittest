-- Дамп структуры базы данных bank
CREATE DATABASE IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bank`;

-- Дамп структуры для таблица bank.bank
CREATE TABLE IF NOT EXISTS `bank` (
  `№Check` int(11) NOT NULL,
  `CodeClient` int(11) NOT NULL,
  `CodeContributin` int(11) NOT NULL,
  `DateOppen` date DEFAULT NULL,
  `DateClose` date DEFAULT NULL,
  `InvestmentAmount` decimal(10,2) DEFAULT NULL,
  KEY `FK_bank_client` (`CodeClient`),
  KEY `FK_bank_contributions` (`CodeContributin`),
  CONSTRAINT `FK_bank_client` FOREIGN KEY (`CodeClient`) REFERENCES `client` (`IdClient`),
  CONSTRAINT `FK_bank_contributions` FOREIGN KEY (`CodeContributin`) REFERENCES `contributions` (`CodeContribution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица bank.client
CREATE TABLE IF NOT EXISTS `client` (
  `IdClient` int(11) NOT NULL,
  `FullName` text DEFAULT NULL,
  `NPasport` int(11) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  KEY `id_client` (`IdClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица bank.contributions
CREATE TABLE IF NOT EXISTS `contributions` (
  `CodeContribution` int(11) NOT NULL,
  `NameContribution` text DEFAULT NULL,
  `ShelfLife` int(11) DEFAULT NULL,
  `Bid,%` float DEFAULT NULL,
  KEY `Code_contribution` (`CodeContribution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;