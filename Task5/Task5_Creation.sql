-- Дамп структуры базы данных factory
CREATE DATABASE IF NOT EXISTS `factory` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `factory`;
-- Дамп структуры для таблица factory.product
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  PRIMARY KEY (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица factory.model
CREATE TABLE IF NOT EXISTS `model` (
  `CodeModel` int(11) NOT NULL AUTO_INCREMENT,
  `NameModel` text NOT NULL,
  `CodeProduct` int(11) NOT NULL,
  `PriceModel` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CodeModel`),
  KEY `FK_Model_product` (`CodeProduct`),
  CONSTRAINT `FK_model_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица factory.admission
CREATE TABLE IF NOT EXISTS `admission` (
  `CodeAdmission` int(11) NOT NULL AUTO_INCREMENT,
  `CodeModel` int(11) NOT NULL,
  `DateAdmission` date NOT NULL,
  `Number` int(11) NOT NULL,
  `WhoReceived` text DEFAULT NULL,
  PRIMARY KEY (`CodeAdmission`),
  KEY `FK_admission_model` (`CodeModel`),
  CONSTRAINT `FK_admission_model` FOREIGN KEY (`CodeModel`) REFERENCES `model` (`CodeModel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
