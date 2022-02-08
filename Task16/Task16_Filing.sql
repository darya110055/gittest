INSERT INTO `bank` (`CodeBank`, `NameBank`, `LegalAddress`) VALUES
	(1, 'Inud', 'fuyfuhvuyfuygkb'),
	(2, 'Unjd', 'fgdfg'),
	(3, 'jMls', 'dfgdgfgfd'),
	(4, 'Ejkid', 'asdavrfg');
INSERT INTO `atms` (`NumberATMs`, `AddressATMs`, `CodeBank`) VALUES
	(1, 'dsgdsgbdrf', 4),
	(2, 'dsgdsgbdrf', 1),
	(3, 'dsgdsgbdrf', 3),
	(4, 'dsgdsgbdrf', 2);
INSERT INTO `clients` (`Customer'sCardNumber`, `FullNameClient`, `AddressClient`, `CodeBank`) VALUES
	(35465341, 'Fnnkjb', 'FG jhc', 1),
	(35465342, 'Fnnkjb', 'FG jhc', 3),
	(35465343, 'Fnnkjb', 'FG jhc', 4),
	(35465344, 'Fnnkjb', 'FG jhc', 4);
INSERT INTO `operation` (`Customer'sCardNumber`, `NumberATM`, `Date`, `Time`, `Commission`, `IssueAmount`) VALUES
	(35465344, 3, '2022-02-08', '00:00:00', b'1', 165.00),
	(35465341, 3, '2022-02-08', '00:00:00', b'1', 53145.00),
	(35465342, 1, '2022-02-08', '00:00:00', b'1', 12345.00),
	(35465342, 2, '2022-02-08', '00:00:00', b'0', 15.21);
