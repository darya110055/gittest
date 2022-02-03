CREATE DATABASE IF NOT EXISTS `gai`;
USE `gai`;

CREATE TABLE IF NOT EXISTS `drivers` (
  `DriversLicenseNumber` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` decimal(10,0) NOT NULL,
  PRIMARY KEY (`DriversLicenseNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `cars` (
  `NumberCar` int(11) NOT NULL AUTO_INCREMENT,
  `Brand` text NOT NULL,
  `Model` text NOT NULL,
  `Color` text NOT NULL,
  `ReleaseDate` date NOT NULL,
  `DateRegistration` date NOT NULL,
  `Driver` int(11) NOT NULL,
  PRIMARY KEY (`NumberCar`),
  KEY `FK_cars_drivers` (`Driver`),
  CONSTRAINT `FK_cars_drivers` FOREIGN KEY (`Driver`) REFERENCES `drivers` (`DriversLicenseNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `police_inspector` (
  `PersonalNumber` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Pasport` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Phone` decimal(10,0) NOT NULL,
  PRIMARY KEY (`PersonalNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

CREATE TABLE IF NOT EXISTS `violation` (
  `CodeViolation` int(11) NOT NULL AUTO_INCREMENT,
  `ViewViolation` text NOT NULL,
  `RangeSizePenalty` text NOT NULL,
  `Warning` bit(1) NOT NULL DEFAULT b'0',
  `RangeDrivingLicensePeriod` text NOT NULL,
  PRIMARY KEY (`CodeViolation`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `penalty` (
  `CodeViolation` int(11) NOT NULL,
  `DateViolation` date NOT NULL,
  `DriversLicenseNumber` int(11) NOT NULL,
  `AreaViolation` text NOT NULL,
  `SizePenalty` decimal(2,1) NOT NULL,
  `FinesPaid` bit(1) NOT NULL,
  `DrivingLicensePeriod` int(11) NOT NULL,
  `BasicValueViolation(thous.rubles)` int(11) NOT NULL,
  `PersNumberPoliceInspector` int(11) NOT NULL,
  PRIMARY KEY (`CodeViolation`,`DateViolation`,`DriversLicenseNumber`),
  KEY `FK_penalty_police_inspector` (`PersNumberPoliceInspector`),
  KEY `FK_penalty_drivers` (`DriversLicenseNumber`),
  CONSTRAINT `FK_penalty_drivers` FOREIGN KEY (`DriversLicenseNumber`) REFERENCES `drivers` (`DriversLicenseNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_penalty_police_inspector` FOREIGN KEY (`PersNumberPoliceInspector`) REFERENCES `police_inspector` (`PersonalNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_penalty_violation` FOREIGN KEY (`CodeViolation`) REFERENCES `violation` (`CodeViolation`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
