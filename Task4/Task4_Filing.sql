INSERT INTO `category` (`CodeCategory`, `Category`, `RateFor1Hour`) VALUES
	(1, 'Первая категория', 12),
	(2, 'Вторя категория', 10),
	(3, 'Третья категория', 8);
INSERT INTO `staff` (`CodeEmployee`, `FullName`, `NPasport`, `DateOfBirth`, `Phone`, `Category`) VALUES
	(1, 'Григорьева Варвара Яковлевна', 1852, '2022-01-29', 546453232, 2),
	(2, 'Фирсова Василиса Ярославовна', 5645, '2022-01-29', 45343453, 1),
	(3, 'Лебедев Тимур Олегович', 4535, '2022-01-29', 453421354, 1);
	INSERT INTO `work` (`CompanyName`, `CodeEmployee`, `Date`, `NumberOfHoursWorked`) VALUES
    	('ооо Компани', 1, '2022-02-01', 45),
    	('ОГтмы', 2, '2022-02-01', 35),
    	('ооо Компани', 3, '2022-02-01', 46);

