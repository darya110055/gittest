-- Дамп структуры базы данных overalls
CREATE DATABASE IF NOT EXISTS `overalls` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `overalls`;
-- Дамп структуры для таблица overalls.overalls
CREATE TABLE IF NOT EXISTS `overalls` (
  `CodeOveralls` int(11) NOT NULL AUTO_INCREMENT,
  `ViewOveralls` text NOT NULL,
  `WearPeriod` int(11) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CodeOveralls`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица overalls.workshops
CREATE TABLE IF NOT EXISTS `workshops` (
  `CodeWorkshops` int(11) NOT NULL AUTO_INCREMENT,
  `NameWorkshops` text NOT NULL,
  `FullNameChiefWorkshops` text NOT NULL,
  PRIMARY KEY (`CodeWorkshops`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица overalls.workers
CREATE TABLE IF NOT EXISTS `workers` (
  `CodeWorkers` int(11) NOT NULL AUTO_INCREMENT,
  `Workshop` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Post` text NOT NULL,
  `Sale, %` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`CodeWorkers`),
  KEY `FK_workers_workshops` (`Workshop`),
  CONSTRAINT `FK_workers_workshops` FOREIGN KEY (`Workshop`) REFERENCES `workshops` (`CodeWorkshops`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица overalls.receiving
CREATE TABLE IF NOT EXISTS `receiving` (
  `CodeWorkers` int(11) NOT NULL,
  `CodeOveralls` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Painting` text NOT NULL,
  KEY `FK_receiving_workers` (`CodeWorkers`),
  KEY `FK_receiving_overalls` (`CodeOveralls`),
  CONSTRAINT `FK_receiving_overalls` FOREIGN KEY (`CodeOveralls`) REFERENCES `overalls` (`CodeOveralls`),
  CONSTRAINT `FK_receiving_workers` FOREIGN KEY (`CodeWorkers`) REFERENCES `workers` (`CodeWorkers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


