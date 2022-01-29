CREATE DATABASE IF NOT EXISTS `trade` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `trade`;

-- Дамп структуры для таблица trade.department
CREATE TABLE IF NOT EXISTS `department` (
  `CodeDepartment` int(11) NOT NULL,
  `NameDepartment` text DEFAULT NULL,
  `FullNameManager` text DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `SalesPerDay` decimal(10,2) DEFAULT NULL,
  KEY `CodeDepartment` (`CodeDepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица trade.product
CREATE TABLE IF NOT EXISTS `product` (
  `Article` int(11) NOT NULL,
  `NameProduct` text DEFAULT NULL,
  `Unit` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  KEY `Article` (`Article`)
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
  CONSTRAINT `FK_sale_product` FOREIGN KEY (`ArticleProduct`) REFERENCES `product` (`Article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
