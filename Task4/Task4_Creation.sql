-- Дамп структуры базы данных  audit
CREATE DATABASE IF NOT EXISTS ` audit` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE ` audit`;

-- Дамп структуры для таблица  audit.category
CREATE TABLE IF NOT EXISTS `category` (
  `CodeCategory` int(11) NOT NULL AUTO_INCREMENT,
  `Category` text DEFAULT NULL,
  `RateFor1Hour` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodeCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица  audit.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `CodeEmployee` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `NPasport` int(11) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Phone` decimal(10,0) DEFAULT NULL,
  `Category` int(11) NOT NULL,
  PRIMARY KEY (`CodeEmployee`),
  KEY `FK_staff_category` (`Category`),
  CONSTRAINT `FK_staff_category` FOREIGN KEY (`Category`) REFERENCES `category` (`CodeCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица  audit.work
CREATE TABLE IF NOT EXISTS `work` (
  `CompanyName` text NOT NULL,
  `CodeEmployee` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `NumberOfHoursWorked` int(11) DEFAULT NULL,
  KEY `FK_work_staff` (`CodeEmployee`),
  CONSTRAINT `FK_work_staff` FOREIGN KEY (`CodeEmployee`) REFERENCES `staff` (`CodeEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

