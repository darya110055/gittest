INSERT INTO `drivers` (`DriversLicenseNumber`, `FullName`, `Address`, `Phone`) VALUES
	(1, 'Новикова Марина Матвеевна', 'Калининградская область, город Сергиев Посад, пер. Космонавтов, 29', 2164548),
	(2, 'Соловьев Данил Константинович', 'Томская область, город Шатура, спуск Ломоносова, 24', 2164548),
	(3, 'Быкова Варвара Александровна', ' Оренбургская область, город Озёры, спуск Ленина, 53', 2164548),
	(4, 'Панин Дмитрий Ильич', 'Оренбургская область, город Ногинск, шоссе Косиора, 89', 2164548);
INSERT INTO `cars` (`NumberCar`, `Brand`, `Model`, `Color`, `ReleaseDate`, `DateRegistration`, `Driver`) VALUES
	(1, 'Vdfh', 'fbb', 'Black', '2022-02-03', '2022-02-03', 1),
	(2, 'Vdfh', 'th', 'Black', '2022-02-03', '2022-02-03', 1),
	(3, 'Vdfh', 'bnvbn', 'Black', '2022-02-03', '2022-02-03', 2),
	(4, 'dfhdf', 'fghf', 'Black', '2022-02-03', '2022-02-03', 3),
	(5, 'dhfh', 'fghfg', 'Black', '2022-02-03', '2022-02-03', 3),
	(6, 'hdGVr', 'ghgfhtr', 'Black', '2022-02-03', '2022-02-03', 4);
INSERT INTO `police_inspector` (`PersonalNumber`, `FullName`, `Pasport`, `Address`, `Phone`) VALUES
	(1, 'Кузнецов Александр Тихонович', 5645, 'Липецкая область, город Мытищи, бульвар Ладыгина, 07', 9999999999),
	(2, 'Куприянов Иван Ильич', 4567, 'Липецкая область, город Мытищи, бульвар Ладыгина, 07', 45646456),
	(3, 'Назаров Василий Демьянович', 6876, 'Липецкая область, город Мытищи, бульвар Ладыгина, 07', 456875),
	(4, 'Федотов Никита Дмитриевич', 4687, 'Липецкая область, город Мытищи, бульвар Ладыгина, 07', 456464567),
	(5, 'Герасимова Анастасия Васильевна', 4568, 'Липецкая область, город Мытищи, бульвар Ладыгина, 07', 343894);
INSERT INTO `violation` (`CodeViolation`, `ViewViolation`, `RangeSizePenalty`, `Warning`, `RangeDrivingLicensePeriod`) VALUES
	(1, 'Vdrfjndfjn', '2-5', b'0', '10-15'),
	(2, 'Bgjmgf', '2-5', b'1', '10-15'),
	(3, 'Cgkfk,m', '1-10', b'0', '10-15'),
	(4, 'C,ililgf', '5-6', b'1', '10-15'),
	(5, 'Cdshbdf', '2-5', b'1', '10-15');
INSERT INTO `penalty` (`CodeViolation`, `DateViolation`, `DriversLicenseNumber`, `AreaViolation`, `SizePenalty`, `FinesPaid`, `DrivingLicensePeriod`, `BasicValueViolation(thous.rubles)`, `PersNumberPoliceInspector`) VALUES
	(5, '2022-02-03', 4, 'jhgfjngfj', 2.0, b'1', 6, 1, 1);