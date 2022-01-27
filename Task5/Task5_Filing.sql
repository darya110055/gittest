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


-- Дамп структуры базы данных factory
CREATE DATABASE IF NOT EXISTS `factory` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `factory`;

-- Дамп структуры для таблица factory.admission
CREATE TABLE IF NOT EXISTS `admission` (
  `Код поступления` int(11) DEFAULT NULL,
  `Код модели` int(11) DEFAULT NULL,
  `Дата поступления модели товара` date DEFAULT NULL,
  `Количство (шт)` int(11) DEFAULT NULL,
  `Кто принял товар` text DEFAULT NULL,
  KEY `FK_admission_model` (`Код модели`),
  CONSTRAINT `FK_admission_model` FOREIGN KEY (`Код модели`) REFERENCES `model` (`Код модели`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы factory.admission: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` (`Код поступления`, `Код модели`, `Дата поступления модели товара`, `Количство (шт)`, `Кто принял товар`) VALUES
	(1, 1, '2022-01-27', 542, 'АВари'),
	(2, 1, '2022-02-03', 114, 'АВари'),
	(3, 2, '2022-01-17', 345, 'Всяч'),
	(4, 4, '2021-09-20', 42, 'АВари'),
	(5, 5, '2022-02-17', 4545, 'АВари'),
	(6, 3, '2022-02-14', 453, 'Всяч'),
	(7, 4, '2022-01-11', 455, 'АВари');
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;

-- Дамп структуры для таблица factory.model
CREATE TABLE IF NOT EXISTS `model` (
  `Код модели` int(11) DEFAULT NULL,
  `Наименование модели` text DEFAULT NULL,
  `Код товара` int(11) DEFAULT NULL,
  `Цена модели(тыс. руб.)` int(11) DEFAULT NULL,
  KEY `Код модели` (`Код модели`),
  KEY `FK_Model_product` (`Код товара`),
  CONSTRAINT `FK_Model_product` FOREIGN KEY (`Код товара`) REFERENCES `product` (`Код товара`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы factory.model: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` (`Код модели`, `Наименование модели`, `Код товара`, `Цена модели(тыс. руб.)`) VALUES
	(1, 'а4358в', 3, 468),
	(2, 'вао587', 3, 487),
	(3, 'паи565', 2, 154),
	(4, 'а654а', 1, 479),
	(5, 'и14епи', 4, 168);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;

-- Дамп структуры для таблица factory.product
CREATE TABLE IF NOT EXISTS `product` (
  `Код товара` int(11) DEFAULT NULL,
  `Наименование товара` text DEFAULT NULL,
  KEY `Код товара` (`Код товара`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы factory.product: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`Код товара`, `Наименование товара`) VALUES
	(1, 'пальто женское'),
	(2, 'костюм женский'),
	(3, 'куртка женская'),
	(4, 'обувь женская');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
