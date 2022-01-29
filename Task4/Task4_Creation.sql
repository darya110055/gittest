-- Дамп структуры базы данных  audit
CREATE DATABASE IF NOT EXISTS ` audit` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE ` audit`;

-- Дамп структуры для таблица  audit.category
CREATE TABLE IF NOT EXISTS `category` (
  `CodeCategory` int(11) NOT NULL,
  `Category` text DEFAULT NULL,
  `RateFor1Hour` int(11) DEFAULT NULL,
  KEY `Код категории` (`CodeCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица  audit.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `CodeEmployee` int(11) NOT NULL,
  `FullName` text DEFAULT NULL,
  `NPasport` int(11) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  KEY `Код сотрудника` (`CodeEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица  audit.work
CREATE TABLE IF NOT EXISTS `work` (
  `CompanyName` text NOT NULL,
  `CodeEmployee` int(11) NOT NULL,
  `Category` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `NumberOfHoursWorked` int(11) DEFAULT NULL,
  KEY `FK_work_staff` (`CodeEmployee`),
  KEY `FK_work_category` (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;