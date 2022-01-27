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
  `Категория` int(11) DEFAULT NULL,
  `Ставка за 1 час (тыс. руб.)` int(11) DEFAULT NULL,
  KEY `Категория` (`Категория`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы  audit.category: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`Категория`, `Ставка за 1 час (тыс. руб.)`) VALUES
	(1, 6),
	(2, 3),
	(3, 459);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица  audit.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `Код сотрудника` int(11) DEFAULT NULL,
  `Ф.И.О. сотрудника` text DEFAULT NULL,
  `Номер паспорта` int(11) DEFAULT NULL,
  `Датат рождения` date DEFAULT NULL,
  `Рабочий телефон` int(11) DEFAULT NULL,
  KEY `Код сотрудника` (`Код сотрудника`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы  audit.staff: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`Код сотрудника`, `Ф.И.О. сотрудника`, `Номер паспорта`, `Датат рождения`, `Рабочий телефон`) VALUES
	(1, 'В.П.Вреон', 4586, '1992-01-27', 858842698),
	(2, 'К.А.Пгшынк', 1434, '1984-07-15', 2147483647),
	(3, 'В.Е.Орника', 5894, '2022-01-27', 8993224);
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
  CONSTRAINT `FK_work_category` FOREIGN KEY (`Категория`) REFERENCES `category` (`Категория`),
  CONSTRAINT `FK_work_staff` FOREIGN KEY (`Код сотрудника`) REFERENCES `staff` (`Код сотрудника`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы  audit.work: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` (`Название предприятия`, `Код сотрудника`, `Дата выполнения работы`, `Количество отработанных часов`, `Категория`) VALUES
	('Смарт-Инвест', 2, '2022-01-27', 5, 1),
	('Паеко ООО', 3, '2022-01-27', 5, 3);
/*!40000 ALTER TABLE `work` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
