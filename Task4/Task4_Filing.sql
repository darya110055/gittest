INSERT INTO `category` (`CodeCategory`, `Category`, `RateFor1Hour`) VALUES
	(1, 'Первая категория', 12),
	(2, 'Вторя категория', 10),
	(3, 'Третья категория', 8);
INSERT INTO `staff` (`CodeEmployee`, `FullName`, `NPasport`, `DateOfBirth`, `Phone`) VALUES
	(1, 'Григорьева Варвара Яковлевна', 1852, '2022-01-29', 546453232),
	(2, 'Фирсова Василиса Ярославовна', 5645, '2022-01-29', 45343453),
	(3, 'Лебедев Тимур Олегович', 4535, '2022-01-29', 453421354);
INSERT INTO `work` (`CompanyName`, `CodeEmployee`, `Category`, `Date`, `NumberOfHoursWorked`) VALUES
	('ооо Компани', 2, 2, '2022-01-29', 10),
	('ооо Компани', 1, 3, '2022-01-29', 15),
	('ип Ковалев', 3, 2, '2022-01-29', 10),
	('ип Ковалев', 2, 1, '2022-01-29', 12);
