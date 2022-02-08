CREATE DATABASE IF NOT EXISTS `atms`;
USE `atms`;
CREATE TABLE IF NOT EXISTS `bank` (
  `CodeBank` int(11) NOT NULL AUTO_INCREMENT,
  `NameBank` text NOT NULL,
  `LegalAddress` text NOT NULL,
  PRIMARY KEY (`CodeBank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `atms` (
  `NumberATMs` int(11) NOT NULL AUTO_INCREMENT,
  `AddressATMs` text NOT NULL,
  `CodeBank` int(11) NOT NULL,
  PRIMARY KEY (`NumberATMs`),
  KEY `FK_atms_bank` (`CodeBank`),
  CONSTRAINT `FK_atms_bank` FOREIGN KEY (`CodeBank`) REFERENCES `bank` (`CodeBank`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `clients` (
  `Customer'sCardNumber` int(11) NOT NULL AUTO_INCREMENT,
  `FullNameClient` text NOT NULL,
  `AddressClient` text NOT NULL,
  `CodeBank` int(11) NOT NULL,
  PRIMARY KEY (`Customer'sCardNumber`),
  KEY `FK_clients_bank` (`CodeBank`),
  CONSTRAINT `FK_clients_bank` FOREIGN KEY (`CodeBank`) REFERENCES `bank` (`CodeBank`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `operation` (
  `Customer'sCardNumber` int(11) NOT NULL,
  `NumberATM` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Commission` bit(1) NOT NULL DEFAULT b'0',
  `IssueAmount` decimal(20,2) NOT NULL,
  KEY `FK_operation_clients` (`Customer'sCardNumber`),
  KEY `FK_operation_atms` (`NumberATM`),
  CONSTRAINT `FK_operation_atms` FOREIGN KEY (`NumberATM`) REFERENCES `atms` (`NumberATMs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_operation_clients` FOREIGN KEY (`Customer'sCardNumber`) REFERENCES `clients` (`Customer'sCardNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;