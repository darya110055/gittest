INSERT INTO `product` (`CodeProduct`, `NameProduct`) VALUES
	(1, 'пальто женское'),
	(2, 'костюм женсикй'),
	(3, 'брюки женские');
INSERT INTO `model` (`CodeModel`, `NameModel`, `CodeProduct`, `PriceModel`) VALUES
	(1, 'ап1651', 2, 165.00),
	(2, '1о1л1', 3, 1505.00),
	(3, 'д1541', 2, 42.00),
	(4, 'л4д25', 1, 4535.00);	
INSERT INTO `admission` (`CodeAdmission`, `CodeModel`, `DateAdmission`, `Number`, `WhoReceived`) VALUES
	(1, 2, '2022-01-29', 55, 'Акпп'),
	(2, 2, '2022-01-29', 35, 'Акпп'),
	(3, 3, '2022-01-29', 835, 'Акпп'),
	(4, 1, '2022-01-29', 25, 'Акии'),
	(5, 4, '2022-01-29', 53254, 'Акпп');

