CREATE DATABASE IF NOT EXISTS `policlinic` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `policlinic`;

-- Дамп структуры для таблица policlinic.diagnosis
CREATE TABLE IF NOT EXISTS `diagnosis` (
  `CodeDiagnosis` int(11) NOT NULL,
  `Name` text DEFAULT NULL,
  KEY `CodeDiagnosis` (`CodeDiagnosis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `doctor` (
  `CodeDoctor` int(11) NOT NULL,
  `FullName` text DEFAULT NULL,
  `Speciality` text DEFAULT NULL,
  `Category` int(11) DEFAULT NULL,
  KEY `CodeDoctor` (`CodeDoctor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `patients` (
  `NumberCard` int(11) NOT NULL,
  `FullName` text DEFAULT NULL,
  `DateBirth` date DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Gender` text DEFAULT NULL,
  `Sale` decimal(10,2) DEFAULT NULL,
  KEY `NumberCard` (`NumberCard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `purpose` (
  `CodePurpose` int(11) NOT NULL,
  `Purpose` text DEFAULT NULL,
  KEY `Столбец 1` (`CodePurpose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS `reception` (
  `NumberReception` int(11) NOT NULL,
  `Date` int(11) DEFAULT NULL,
  `Purpose` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Doctor` int(11) NOT NULL,
  `Patients` int(11) NOT NULL,
  `Pre-admissionDiagnosis` int(11) DEFAULT NULL,
  `DiagnosisAfterAdmission` int(11) NOT NULL,
  KEY `NumberReception` (`NumberReception`),
  KEY `FK_reception_doctor` (`Doctor`),
  KEY `FK_reception_patients` (`Patients`),
  KEY `FK_reception_purpose` (`Purpose`),
  KEY `FK_reception_diagnosis` (`Pre-admissionDiagnosis`),
  KEY `FK_reception_diagnosis_2` (`DiagnosisAfterAdmission`),
  CONSTRAINT `FK_reception_diagnosis` FOREIGN KEY (`Pre-admissionDiagnosis`) REFERENCES `diagnosis` (`CodeDiagnosis`),
  CONSTRAINT `FK_reception_diagnosis_2` FOREIGN KEY (`DiagnosisAfterAdmission`) REFERENCES `diagnosis` (`CodeDiagnosis`),
  CONSTRAINT `FK_reception_doctor` FOREIGN KEY (`Doctor`) REFERENCES `doctor` (`CodeDoctor`),
  CONSTRAINT `FK_reception_patients` FOREIGN KEY (`Patients`) REFERENCES `patients` (`NumberCard`),
  CONSTRAINT `FK_reception_purpose` FOREIGN KEY (`Purpose`) REFERENCES `purpose` (`CodePurpose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
