-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.4.18-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных bank
CREATE DATABASE IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bank`;

-- Дамп структуры для таблица bank.bank
CREATE TABLE IF NOT EXISTS `bank` (
  `№ Счета` int(11) DEFAULT NULL,
  `Код клиента` int(11) DEFAULT NULL,
  `Код вклада` int(11) DEFAULT NULL,
  `Дата открытия счета` date DEFAULT NULL,
  `Дата закрытия счета` date DEFAULT NULL,
  `Сумма вложения` int(11) DEFAULT NULL,
  KEY `FK_bank_client` (`Код клиента`),
  KEY `FK_bank_contributions` (`Код вклада`),
  CONSTRAINT `FK_bank_client` FOREIGN KEY (`Код клиента`) REFERENCES `client` (`id_client`),
  CONSTRAINT `FK_bank_contributions` FOREIGN KEY (`Код вклада`) REFERENCES `contributions` (`Code_contribution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы bank.bank: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;

-- Дамп структуры для таблица bank.client
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) DEFAULT NULL,
  `FullName` text DEFAULT NULL,
  `N_pasport` int(11) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы bank.client: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Дамп структуры для таблица bank.contributions
CREATE TABLE IF NOT EXISTS `contributions` (
  `Code_contribution` int(11) DEFAULT NULL,
  `Name_contribution` text DEFAULT NULL,
  `Shelf life` int(11) DEFAULT NULL,
  `Bid,%` float DEFAULT NULL,
  KEY `Code_contribution` (`Code_contribution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы bank.contributions: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
/*!40000 ALTER TABLE `contributions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
