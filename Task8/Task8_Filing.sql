INSERT INTO `publications` (`Index`, `NamePublication`, `PublicationType`, `Price`) VALUES
	(2, 'ФКР', 'газета', 245),
	(3, 'мпвт', 'журнал', 45244),
	(4, 'Рикр', 'газета', 26),
	(1, 'УВии', 'газета', 442);
INSERT INTO `recipient` (`CodeRecipient`, `FullName`, `Address`) VALUES
	(2, 'Федоров Леонид Арсентьевич', 'пр. Чехова, 31'),
	(3, 'Свешникова Анна Дмитриевна', 'спуск Чехова, 56'),
	(4, 'Беляев Али Александрович', 'пр. Ладыгина, 91'),
	(1, 'Козлова Ульяна Петровна', 'бульвар Славы, 31');
INSERT INTO `subscription` (`CodePecipient`, `IndexPublication`, `Period`, `Month`, `Year`) VALUES
	(4, 3, 2, 5, '2022'),
	(3, 1, 5, 4, '2022'),
	(2, 4, 8, 7, '2022'),
	(4, 4, 7, 11, '2022'),
	(1, 1, 4, 3, '2022'),
	(1, 2, 24, 4, '2022');
