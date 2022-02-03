CREATE DATABASE IF NOT EXISTS `zhes`;
USE `zhes`;

CREATE TABLE IF NOT EXISTS `services` (
  `CodeServices` int(11) NOT NULL AUTO_INCREMENT,
  `NameServices` text NOT NULL,
  `UnitMeasurement` text NOT NULL,
  `Rate` decimal(10,0) NOT NULL,
  PRIMARY KEY (`CodeServices`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `tenats` (
  `PersonalAccount` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Phone` decimal(10,0) NOT NULL,
  `Address` text NOT NULL,
  `NumberResidents` int(11) NOT NULL,
  `Square,m2` decimal(20,2) NOT NULL,
  PRIMARY KEY (`PersonalAccount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `payment_for_service` (
  `PersonalAccount` int(11) NOT NULL,
  `CodeService` int(11) NOT NULL,
  `ActuallySpent` decimal(10,3) NOT NULL,
  `PayByDate` date NOT NULL,
  `PaidOnTimeOrNot` bit(1) NOT NULL DEFAULT b'0',
  `PaymentDate` date DEFAULT NULL,
  PRIMARY KEY (`PersonalAccount`,`CodeService`,`PayByDate`),
  KEY `FK_payment_for_service_services` (`CodeService`),
  CONSTRAINT `FK_payment_for_service_services` FOREIGN KEY (`CodeService`) REFERENCES `services` (`CodeServices`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_payment_for_service_tenats` FOREIGN KEY (`PersonalAccount`) REFERENCES `tenats` (`PersonalAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;