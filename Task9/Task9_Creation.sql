CREATE DATABASE IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `library`;

-- Дамп структуры для таблица library.book
CREATE TABLE IF NOT EXISTS `book` (
  `CodeBook` int(11) NOT NULL,
  `NameBook` text DEFAULT NULL,
  `PublHous` int(11) NOT NULL,
  `Author` text DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `NumberCopies` int(11) DEFAULT NULL,
  KEY `CodeBook` (`CodeBook`),
  KEY `FK_book_publishing_house` (`PublHous`),
  CONSTRAINT `FK_book_publishing_house` FOREIGN KEY (`PublHous`) REFERENCES `publishing_house` (`CodePublHouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица library.extradition
CREATE TABLE IF NOT EXISTS `extradition` (
  `CodeReaders` int(11) NOT NULL,
  `CodeBook` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Painting` text DEFAULT NULL,
  KEY `FK_extradition_readers` (`CodeReaders`),
  KEY `FK_extradition_book` (`CodeBook`),
  CONSTRAINT `FK_extradition_book` FOREIGN KEY (`CodeBook`) REFERENCES `book` (`CodeBook`),
  CONSTRAINT `FK_extradition_readers` FOREIGN KEY (`CodeReaders`) REFERENCES `readers` (`CodeReaders`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица library.publishing_house
CREATE TABLE IF NOT EXISTS `publishing_house` (
  `CodePublHouse` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  `City` text DEFAULT NULL,
  KEY `CodePublHouse` (`CodePublHouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Дамп структуры для таблица library.readers
CREATE TABLE IF NOT EXISTS `readers` (
  `CodeReaders` int(11) NOT NULL,
  `FullName` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  KEY `CodeReaders` (`CodeReaders`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
