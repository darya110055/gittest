INSERT INTO `services` (`CodeServices`, `NameServices`, `UnitMeasurement`, `Rate`) VALUES
	(1, 'отопление', 'гКал', 634),
	(2, 'горячее водоснабжение', 'м3', 42),
	(3, 'каналы ТВ', 'шт', 122);
INSERT INTO `tenats` (`PersonalAccount`, `FullName`, `Phone`, `Address`, `NumberResidents`, `Square,m2`) VALUES
	(2654, 'Николаева Анна Кирилловна', 5654632, 'Мщлтмдтщт574', 2, 25.00),
	(6465, 'Кузнецов Александр Тихонович', 456445645, 'Мгомлопмд54', 2, 23.00),
	(16841, 'Федотов Никита Дмитриевич', 1686513, 'Мгомлопмд54', 3, 40.00);
INSERT INTO `payment_for_service` (`PersonalAccount`, `CodeService`, `ActuallySpent`, `PayByDate`, `PaidOnTimeOrNot`, `PaymentDate`) VALUES
	(2654, 2, 545.000, '2022-02-15', b'1', NULL),
	(6465, 3, 946.000, '2022-02-15', b'0', '2022-02-03');