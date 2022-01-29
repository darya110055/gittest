INSERT INTO `diagnosis` (`CodeDiagnosis`, `Name`) VALUES
	(2, 'астма'),
	(3, 'ковид'),
	(4, 'диарея'),
	(1, 'насморк');
INSERT INTO `doctor` (`CodeDoctor`, `FullName`, `Speciality`, `Category`) VALUES
	(1, 'Ильин Артём Сергеевич', 'лор', 1),
	(2, 'Ефимова София Никитична', 'педиатр', 1),
	(3, 'Трофимов Андрей Аркадьевич', 'педиатр', 2),
	(4, 'Данилов Матвей Константинович', 'кардиолог', 3),
	(5, 'Басов Макар Лукич ', 'хирург', 2);
INSERT INTO `patients` (`NumberCard`, `FullName`, `DateBirth`, `Address`, `Gender`, `Sale`) VALUES
	(1, 'Березин Арсений Евгеньевич', '2022-01-29', 'Челябинская область, город Орехово-Зуево, проезд Будапештсткая, 24', 'м', 0.00),
	(2, 'Смирнова Мария Никитична', '2022-01-29', 'Новосибирская область, город Егорьевск, проезд Косиора, 16', 'ж', 12.00),
	(3, 'Крюков Иван Антонович', '2022-01-29', 'Новосибирская область, город Одинцово, бульвар Домодедовская, 03', 'м', 10.00);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
INSERT INTO `purpose` (`CodePurpose`, `Purpose`) VALUES
	(2, 'обследование'),
	(3, 'лечение'),
	(1, 'консультация');
INSERT INTO `reception` (`NumberReception`, `Date`, `Purpose`, `Price`, `Doctor`, `Patients`, `Pre-admissionDiagnosis`, `DiagnosisAfterAdmission`) VALUES
	(234, '2022-01-29', 3, 454.00, 5, 3, 4, 4),
	(454, '2022-01-29', 1, 54.00, 5, 3, NULL, 1);
