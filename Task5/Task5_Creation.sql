-- Дамп структуры базы данных factory
CREATE DATABASE IF NOT EXISTS `factory` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `factory`;

-- Дамп структуры для таблица factory.admission
CREATE TABLE IF NOT EXISTS `admission` (
  `CodeAdmission` int(11) NOT NULL,
  `CodeModel` int(11) NOT NULL,
  `DateAdmission` date DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `WhoReceived` text DEFAULT NULL,
  KEY `FK_admission_model` (`CodeModel`),
  KEY `CodeAdmission` (`CodeAdmission`),
  CONSTRAINT `FK_admission_model` FOREIGN KEY (`CodeModel`) REFERENCES `model` (`CodeModel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица factory.model
CREATE TABLE IF NOT EXISTS `model` (
  `CodeModel` int(11) NOT NULL,
  `NameModel` text DEFAULT NULL,
  `CodeProduct` int(11) NOT NULL,
  `PriceModel` decimal(10,2) DEFAULT NULL,
  KEY `Код модели` (`CodeModel`),
  KEY `FK_Model_product` (`CodeProduct`),
  CONSTRAINT `FK_model_product` FOREIGN KEY (`CodeProduct`) REFERENCES `product` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица factory.product
CREATE TABLE IF NOT EXISTS `product` (
  `CodeProduct` int(11) NOT NULL,
  `NameProduct` text DEFAULT NULL,
  KEY `Код товара` (`CodeProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
