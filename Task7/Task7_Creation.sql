-- Дамп структуры базы данных trade
CREATE DATABASE IF NOT EXISTS `trade` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `trade`;

-- Дамп структуры для таблица trade.department
CREATE TABLE IF NOT EXISTS `department` (
  `CodeDepartment` int(11) NOT NULL AUTO_INCREMENT,
  `NameDepartment` text NOT NULL,
  `FullNameManager` text NOT NULL,
  `Phone` int(11) DEFAULT NULL,
  `SalesPerDay` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CodeDepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица trade.product
CREATE TABLE IF NOT EXISTS `product` (
  `ArticleProduct` int(11) NOT NULL AUTO_INCREMENT,
  `NameProduct` text NOT NULL,
  `Unit` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ArticleProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица trade.sale
CREATE TABLE IF NOT EXISTS `sale` (
  `ArticleProduct` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Departament` int(11) NOT NULL,
  KEY `FK_sale_product` (`ArticleProduct`),
  KEY `FK_sale_department` (`Departament`),
  CONSTRAINT `FK_sale_department` FOREIGN KEY (`Departament`) REFERENCES `department` (`CodeDepartment`),
  CONSTRAINT `FK_sale_product` FOREIGN KEY (`ArticleProduct`) REFERENCES `product` (`ArticleProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
