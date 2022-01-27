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
INSERT INTO `bank` (`№ Счета`, `Код клиента`, `Код вклада`, `Дата открытия счета`, `Дата закрытия счета`, `Сумма вложения`) VALUES
	(1, 1, 5, '2025-01-27', '2026-09-27', 748748),
	(2, 2, 4, '2014-01-27', '2014-01-27', 54),
	(3, 5, 2, '2022-01-27', '2023-01-27', 653248),
	(4, 4, 5, '2022-01-27', '2023-01-27', 75754),
	(5, 3, 4, '2022-01-27', '2023-01-27', 5525252);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;

-- Дамп структуры для таблица bank.client
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) DEFAULT NULL,
  `FullName` text DEFAULT NULL,
  `N_pasport` text DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы bank.client: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`id_client`, `FullName`, `N_pasport`, `Address`, `Phone`) VALUES
	(1, 'А.Н.Приданнокова', '1234 4988', 'Ленина 134', 5859274),
	(2, 'Л.П.Лукъянов', '5234 4815', 'Сталеворов 13', 5242),
	(3, 'Ю.Г.Джиганчина', '4531 4875', 'Казакова 11', 5456786),
	(4, 'Л.С.Туваев', '4834 7551', 'К Маркса 160', 78367485),
	(5, 'А.П.Ивлев', '4835 2597', 'К Маркса 128', 32452542);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Дамп структуры для таблица bank.contributions
CREATE TABLE IF NOT EXISTS `contributions` (
  `Code_contribution` int(11) DEFAULT NULL,
  `Name_contribution` text DEFAULT NULL,
  `Shelf life` int(11) DEFAULT NULL,
  `Bid,%` text DEFAULT NULL,
  KEY `Code_contribution` (`Code_contribution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы bank.contributions: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
INSERT INTO `contributions` (`Code_contribution`, `Name_contribution`, `Shelf life`, `Bid,%`) VALUES
	(1, 'Накопительный (в российских рублях)', 13, '10%'),
	(2, 'Капитал (в долларах США)', 18, '7%'),
	(3, 'Победа (в белорусских рублях)', 13, 'Ставка рефинансирования + 2 %'),
	(4, 'К отпуску (в белорусских рублях)', 12, 'Ставка рефинансирования - 1 %'),
	(5, 'Накопительный (в белорусских рублях)', 36, '18%');
/*!40000 ALTER TABLE `contributions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
