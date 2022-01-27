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


-- Дамп структуры базы данных  audit
CREATE DATABASE IF NOT EXISTS ` audit` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE ` audit`;

-- Дамп структуры для таблица  audit.category
CREATE TABLE IF NOT EXISTS `category` (
  `Категория` text DEFAULT NULL,
  `Ставка за 1 час (тыс. руб.)` int(11) DEFAULT NULL,
  `Код категории` int(11) DEFAULT NULL,
  KEY `Код категории` (`Код категории`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы  audit.category: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица  audit.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `Код сотрудника` int(11) DEFAULT NULL,
  `Ф.И.О. сотрудника` text DEFAULT NULL,
  `Номер паспорта` text DEFAULT NULL,
  `Датат рождения` date DEFAULT NULL,
  `Рабочий телефон` int(11) DEFAULT NULL,
  KEY `Код сотрудника` (`Код сотрудника`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы  audit.staff: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

-- Дамп структуры для таблица  audit.work
CREATE TABLE IF NOT EXISTS `work` (
  `Название предприятия` text DEFAULT NULL,
  `Код сотрудника` int(11) DEFAULT NULL,
  `Дата выполнения работы` date DEFAULT NULL,
  `Количество отработанных часов` int(11) DEFAULT NULL,
  `Категория` int(11) DEFAULT NULL,
  KEY `FK_work_staff` (`Код сотрудника`),
  KEY `FK_work_category` (`Категория`),
  CONSTRAINT `FK_work_category` FOREIGN KEY (`Категория`) REFERENCES `category` (`Код категории`),
  CONSTRAINT `FK_work_staff` FOREIGN KEY (`Код сотрудника`) REFERENCES `staff` (`Код сотрудника`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы  audit.work: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
/*!40000 ALTER TABLE `work` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
