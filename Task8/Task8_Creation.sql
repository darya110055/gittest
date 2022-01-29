CREATE DATABASE IF NOT EXISTS `publications` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `publications`;

CREATE TABLE IF NOT EXISTS `publications` (
  `Index` int(11) NOT NULL,
  `PublicationType` text DEFAULT NULL,
  `NamePublication` text DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  KEY `Index` (`Index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `recipient` (
  `CodeRecipient` int(11) NOT NULL,
  `FullName` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  KEY `CodeRecipient` (`CodeRecipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `subscription` (
  `CodePecipient` int(11) NOT NULL,
  `IndexPublication` int(11) NOT NULL,
  `Period` int(11) DEFAULT NULL,
  `Month` int(11) DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  KEY `FK_subscription_recipient` (`CodePecipient`),
  KEY `FK_subscription_publications` (`IndexPublication`),
  CONSTRAINT `FK_subscription_publications` FOREIGN KEY (`IndexPublication`) REFERENCES `publications` (`Index`),
  CONSTRAINT `FK_subscription_recipient` FOREIGN KEY (`CodePecipient`) REFERENCES `recipient` (`CodeRecipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
