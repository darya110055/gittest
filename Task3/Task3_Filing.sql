INSERT INTO `client` (`IdClient`, `FullName`, `NPasport`, `Address`, `Phone`) VALUES
	(1, 'Ерофеева Николь Кирилловна', 1465, 'Владимирская область, город Сергиев Посад, пл. Балканская', 365345435),
	(2, 'Киселев Данила Ильич', 5453, 'Рязанская область, город Серпухов, пр. Домодедовская, 59', 2147483647),
	(3, 'Иванова Екатерина Матвеевна', 2545, 'Кемеровская область, город Талдом, бульвар Косиора, 83', 2147483647);
INSERT INTO `contributions` (`CodeContribution`, `NameContribution`, `ShelfLife`, `Bid,%`) VALUES
	(2, 'Капитал (в долларах\r\nСША)', 18, 7),
	(1, 'Накопительный (в рос-', 13, 10),
	(3, 'Победа (в белорусских\r\nрублях)', 13, 2),
	(4, 'К отпуску (в белорус-\r\nских рублях)', 12, 1),
	(5, 'Накопительный (в бело-\r\nрусских рублях)', 36, 18);
INSERT INTO `bank` (`№Check`, `CodeClient`, `CodeContributin`, `DateOppen`, `DateClose`, `InvestmentAmount`) VALUES
	(1, 3, 1, '2022-01-29', '2022-01-29', 45654.00),
	(2, 3, 2, '2022-01-29', '2022-01-29', 245424.00),
	(3, 2, 5, '2022-01-29', '2022-01-29', 453245.00),
	(4, 1, 4, '2022-01-29', '2022-01-29', 54254.00),
	(5, 2, 2, '2022-01-29', '2022-01-29', 45454.00),
	(6, 1, 5, '2022-01-29', '2022-01-29', 45654.00);

