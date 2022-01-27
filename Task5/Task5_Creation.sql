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
/*!40000 ALTER TABLE `model` ENABLE KEYS */;

-- Дамп структуры для таблица factory.product
CREATE TABLE IF NOT EXISTS `product` (
  `Код товара` int(11) DEFAULT NULL,
  `Наименование товара` text DEFAULT NULL,
  KEY `Код товара` (`Код товара`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы factory.product: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
