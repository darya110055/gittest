INSERT INTO `buy` (`CodeRoute`, `PurposeTravel`, `Price`, `Number`, `Date`) VALUES
	(2, 3, 54201.00, 434, '2022-01-29'),
	(4, 4, 54201.00, 434, '2022-01-29'),
	(1, 3, 54201.00, 434, '2022-01-29'),
	(4, 1, 54201.00, 434, '2022-01-29'),
	(5, 1, 54201.00, 434, '2022-01-29');
INSERT INTO `country` (`CodeCountry`, `NameCountry`, `PriceVisa`) VALUES
	(2, 'США', 24.00),
	(3, 'Россия', 0.00),
	(1, 'Китай', 54.00);
INSERT INTO `route` (`CodeRoute`, `CodeCountry`, `NameRoute`) VALUES
	(1, 1, 'мвв'),
	(4, 2, 'кп'),
	(5, 1, 'кепукп'),
	(2, 3, 'мвапавм');
INSERT INTO `target` (`Code`, `PurposeRout`) VALUES
	(2, 'Экскурсия'),
	(3, 'Лечение'),
	(4, 'Обучение'),
	(1, 'Отдых');
