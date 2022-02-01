INSERT INTO `overalls` (`CodeOveralls`, `ViewOveralls`, `WearPeriod`, `Price`) VALUES
	(1, 'A', 12, 56.41),
	(2, 'B', 77, 56.41),
	(3, 'C', 5, 56.41),
	(4, 'D', 55, 56.41);
INSERT INTO `workshops` (`CodeWorkshops`, `NameWorkshops`, `FullNameChiefWorkshops`) VALUES
	(1, 'FGnbdfn', 'Шапошников Максим Львович'),
	(2, 'BGndnm', 'Гусев Святослав Владимирович'),
	(3, 'BHrtth', 'Галкин Ярослав Артемьевич'),
	(4, 'BHnfg', 'Богомолова Марьям Никитична'),
	(5, 'Vgftfmk', 'Мухина Анна Алексеевна');
INSERT INTO `workers` (`CodeWorkers`, `Workshop`, `FullName`, `Post`, `Sale, %`) VALUES
	(1, 3, 'Константинова Елизавета Андреевна', 'djhd', NULL),
	(2, 3, 'Кудрявцев Фёдор Кириллович', 'djhd', 50),
	(3, 4, 'Михайлова Мария Михайловна', 'djhd', 30),
	(4, 1, 'Кузнецова Ксения Саввична', 'djhd', 45),
	(5, 2, 'Соколов Артемий Александрович', 'djhd', NULL);
INSERT INTO `receiving` (`CodeWorkers`, `CodeOveralls`, `Date`, `Painting`) VALUES
	(2, 3, '2022-02-01', 'fdhg'),
	(4, 1, '2022-02-01', 'dhdg'),
	(3, 1, '2022-02-01', 'gdg'),
	(5, 4, '2022-02-01', 'dfg'),
	(1, 2, '2022-02-01', 'dh');


