-- Дамп структуры базы данных policlinic
CREATE DATABASE IF NOT EXISTS `policlinic` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `policlinic`;

-- Дамп структуры для таблица policlinic.diagnosis
CREATE TABLE IF NOT EXISTS `diagnosis` (
  `CodeDiagnosis` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`CodeDiagnosis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица policlinic.doctor
CREATE TABLE IF NOT EXISTS `doctor` (
  `CodeDoctor` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Speciality` text NOT NULL,
  `Category` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodeDoctor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица policlinic.coupon
CREATE TABLE IF NOT EXISTS `coupon` (
  `CodeCoupon` int(11) NOT NULL AUTO_INCREMENT,
  `Doctor` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  PRIMARY KEY (`CodeCoupon`,`Date`),
  KEY `FK_coupon_doctor` (`Doctor`),
  CONSTRAINT `FK_coupon_doctor` FOREIGN KEY (`Doctor`) REFERENCES `doctor` (`CodeDoctor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица policlinic.patients
CREATE TABLE IF NOT EXISTS `patients` (
  `NumberCard` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `DateBirth` date NOT NULL,
  `Address` text NOT NULL,
  `Gender` text NOT NULL,
  `Sale` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`NumberCard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица policlinic.purpose
CREATE TABLE IF NOT EXISTS `purpose` (
  `CodePurpose` int(11) NOT NULL AUTO_INCREMENT,
  `Purpose` text NOT NULL,
  PRIMARY KEY (`CodePurpose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп структуры для таблица policlinic.reception
CREATE TABLE IF NOT EXISTS `reception` (
  `CodeCoupon` int(11) NOT NULL,
  `Purpose` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Patients` int(11) NOT NULL,
  `Pre-admissionDiagnosis` int(11) DEFAULT NULL,
  `DiagnosisAfterAdmission` int(11) NOT NULL,
  KEY `FK_reception_purpose` (`Purpose`),
  KEY `FK_reception_patients` (`Patients`),
  KEY `FK_reception_diagnosis` (`Pre-admissionDiagnosis`),
  KEY `FK_reception_diagnosis_2` (`DiagnosisAfterAdmission`),
  KEY `FK_reception_coupon` (`CodeCoupon`),
  CONSTRAINT `FK_reception_coupon` FOREIGN KEY (`CodeCoupon`) REFERENCES `coupon` (`CodeCoupon`),
  CONSTRAINT `FK_reception_diagnosis` FOREIGN KEY (`Pre-admissionDiagnosis`) REFERENCES `diagnosis` (`CodeDiagnosis`),
  CONSTRAINT `FK_reception_diagnosis_2` FOREIGN KEY (`DiagnosisAfterAdmission`) REFERENCES `diagnosis` (`CodeDiagnosis`),
  CONSTRAINT `FK_reception_patients` FOREIGN KEY (`Patients`) REFERENCES `patients` (`NumberCard`),
  CONSTRAINT `FK_reception_purpose` FOREIGN KEY (`Purpose`) REFERENCES `purpose` (`CodePurpose`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
