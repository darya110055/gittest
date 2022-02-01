-- Дамп структуры базы данных publications
CREATE DATABASE IF NOT EXISTS `publications` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `publications`;

-- Дамп структуры для таблица publications.publications
CREATE TABLE IF NOT EXISTS `publications` (
  `Index` int(11) NOT NULL AUTO_INCREMENT,
  `PublicationType` text NOT NULL,
  `NamePublication` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица publications.recipient
CREATE TABLE IF NOT EXISTS `recipient` (
  `CodeRecipient` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`CodeRecipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица publications.subscription
CREATE TABLE IF NOT EXISTS `subscription` (
  `CodePecipient` int(11) NOT NULL,
  `IndexPublication` int(11) NOT NULL,
  `Period` int(11) NOT NULL,
  `Month` int(11) NOT NULL,
  `Year` year(4) NOT NULL,
  KEY `FK_subscription_recipient` (`CodePecipient`),
  KEY `FK_subscription_publications` (`IndexPublication`),
  CONSTRAINT `FK_subscription_publications` FOREIGN KEY (`IndexPublication`) REFERENCES `publications` (`Index`),
  CONSTRAINT `FK_subscription_recipient` FOREIGN KEY (`CodePecipient`) REFERENCES `recipient` (`CodeRecipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
