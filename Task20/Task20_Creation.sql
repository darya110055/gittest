CREATE DATABASE IF NOT EXISTS `pharmacy_warehouse`;
USE `pharmacy_warehouse`;
CREATE TABLE IF NOT EXISTS `medicines` (
  `CodeMedicines` int(11) NOT NULL AUTO_INCREMENT,
  `NameMedicines` text COLLATE utf8mb4_estonian_ci NOT NULL,
  `Manufacturer` text COLLATE utf8mb4_estonian_ci NOT NULL,
  `Price` decimal(20,2) NOT NULL,
  PRIMARY KEY (`CodeMedicines`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_estonian_ci;
CREATE TABLE IF NOT EXISTS `pharmacies` (
  `NumberPharmacies` int(11) NOT NULL AUTO_INCREMENT,
  `NamePharmacies` text COLLATE utf8mb4_estonian_ci NOT NULL,
  `Address` text COLLATE utf8mb4_estonian_ci NOT NULL,
  `Phone` text COLLATE utf8mb4_estonian_ci NOT NULL,
  PRIMARY KEY (`NumberPharmacies`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_estonian_ci;
CREATE TABLE IF NOT EXISTS `applications` (
  `NumberApplications` int(11) NOT NULL AUTO_INCREMENT,
  `DatePreparation` date NOT NULL,
  `NumberPharmacies` int(11) NOT NULL,
  `DateСompletion` date NOT NULL,
  PRIMARY KEY (`NumberApplications`),
  KEY `FK_applications_pharmacies` (`NumberPharmacies`),
  CONSTRAINT `FK_applications_pharmacies` FOREIGN KEY (`NumberPharmacies`) REFERENCES `pharmacies` (`NumberPharmacies`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_estonian_ci;
CREATE TABLE IF NOT EXISTS `purchase` (
  `NumberApplication` int(11) NOT NULL,
  `CodeMedicine` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`NumberApplication`,`CodeMedicine`),
  KEY `FK_purchase_medicines` (`CodeMedicine`),
  CONSTRAINT `FK_purchase_applications` FOREIGN KEY (`NumberApplication`) REFERENCES `applications` (`NumberApplications`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_purchase_medicines` FOREIGN KEY (`CodeMedicine`) REFERENCES `medicines` (`CodeMedicines`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_estonian_ci;
