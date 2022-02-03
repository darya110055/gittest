CREATE DATABASE IF NOT EXISTS `overalls`;
USE `overalls`;
CREATE TABLE IF NOT EXISTS `overalls` (
  `CodeOveralls` int(11) NOT NULL AUTO_INCREMENT,
  `ViewOveralls` text NOT NULL,
  `WearPeriodInMonths` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CodeOveralls`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `position` (
  `CodePosition` int(11) NOT NULL,
  `NamePosition` text NOT NULL,
  `Sale, %` decimal(2,0) NOT NULL,
  PRIMARY KEY (`CodePosition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `workshops` (
  `CodeWorkshops` int(11) NOT NULL AUTO_INCREMENT,
  `NameWorkshops` text NOT NULL,
  `FullNameChiefWorkshops` text NOT NULL,
  PRIMARY KEY (`CodeWorkshops`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `workers` (
  `CodeWorkers` int(11) NOT NULL AUTO_INCREMENT,
  `Workshop` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Post` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`CodeWorkers`),
  KEY `FK_workers_workshops` (`Workshop`),
  KEY `FK_workers_position` (`Post`),
  CONSTRAINT `FK_workers_position` FOREIGN KEY (`Post`) REFERENCES `position` (`CodePosition`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_workers_workshops` FOREIGN KEY (`Workshop`) REFERENCES `workshops` (`CodeWorkshops`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `receiving` (
  `CodeWorkers` int(11) NOT NULL,
  `CodeOveralls` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Painting` text NOT NULL,
  KEY `FK_receiving_workers` (`CodeWorkers`),
  KEY `FK_receiving_overalls` (`CodeOveralls`),
  CONSTRAINT `FK_receiving_overalls` FOREIGN KEY (`CodeOveralls`) REFERENCES `overalls` (`CodeOveralls`),
  CONSTRAINT `FK_receiving_workers` FOREIGN KEY (`CodeWorkers`) REFERENCES `workers` (`CodeWorkers`)

