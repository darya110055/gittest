INSERT INTO `medicines` (`CodeMedicines`, `NameMedicines`, `Manufacturer`, `Price`) VALUES
	(1, 'Hknv', 'hbvcb', 6.00),
	(2, 'Njbv', 'hbvcb', 26.00),
	(3, 'Pmknv', 'hbvcb', 98.00),
	(4, 'Dsbjv', 'hbvcb', 8.00);
INSERT INTO `pharmacies` (`NumberPharmacies`, `NamePharmacies`, `Address`, `Phone`) VALUES
	(1, 'VCn n', 'bvvcvcbvcvcv', '15151'),
	(2, 'Hvvb', 'bvcbvcb', '15151'),
	(3, 'Pkmm', 'dgbnx', '15151'),
	(4, 'Wxvc', 'astfgsg', '15151');
INSERT INTO `applications` (`NumberApplications`, `DatePreparation`, `NumberPharmacies`, `DateСompletion`) VALUES
	(1, '2022-02-11', 3, '2022-02-11'),
	(2, '2022-02-11', 4, '2022-02-11'),
	(3, '2022-02-11', 2, '2022-02-11');
INSERT INTO `purchase` (`NumberApplication`, `CodeMedicine`, `Number`) VALUES
	(1, 4, 4),
	(2, 4, 4),
	(3, 4, 4);
