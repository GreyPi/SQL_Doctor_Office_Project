-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2020 at 08:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DocOffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `DoctorID` varchar(6) NOT NULL,
  `MedicalDegrees` varchar(255) DEFAULT NULL,
  `PersonID` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`DoctorID`, `MedicalDegrees`, `PersonID`) VALUES
('FF2222', 'Cardiologist', '106163'),
('LS3333', 'Pediatrician', '204533'),
('RM4621', 'Surgeon', '128332'),
('RS1234', 'Family Medicine', '123456'),
('RS3846', 'Nursing', '129723');

-- --------------------------------------------------------

--
-- Table structure for table `DoctorSpecialty`
--

CREATE TABLE `DoctorSpecialty` (
  `DoctorID` varchar(6) DEFAULT NULL,
  `SpecialtyID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DoctorSpecialty`
--

INSERT INTO `DoctorSpecialty` (`DoctorID`, `SpecialtyID`) VALUES
('FF2222', '10'),
('LS3333', '11'),
('RM4621', '12'),
('RS1234', '13'),
('RS3846', '14');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `PatientID` varchar(10) NOT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `PersonID` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES
('AY2168', '9412465520', '12/20/1990', 'AY9974'),
('EM8134', '7143458852', '10/05/2000', 'EM9751'),
('HO5421', '6482176620', '04/30/2000', 'HO3642'),
('MS4328', '7349724480', '3/10/1998', 'MS7249'),
('PR9726', '7143145249', '04/28/2015', 'PR4721');

-- --------------------------------------------------------

--
-- Table structure for table `PatientVisit`
--

CREATE TABLE `PatientVisit` (
  `VisitID` varchar(8) NOT NULL,
  `PatientID` varchar(10) DEFAULT NULL,
  `DoctorID` varchar(6) DEFAULT NULL,
  `VisitDate` varchar(10) DEFAULT NULL,
  `DocNote` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PatientVisit`
--

INSERT INTO `PatientVisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`, `DocNote`) VALUES
('24681382', 'PR9726', 'RM4621', '12/20/2012', 'Scheduled for next year'),
('32145658', 'AY2168', 'RM4621', '02/25/2012', 'Patient Doing Great'),
('64851328', 'HO5421', 'RS3846', '10/20/2020', 'Great on routine checkup'),
('67845149', 'EM8134', 'RS3846', '04/20/2020', 'Patient in remedial care'),
('97513254', 'MS4328', 'RS3846', '04/15/2000', 'Needs more tests');

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `PersonID` varchar(6) NOT NULL,
  `FirstName` char(10) DEFAULT NULL,
  `LastName` char(10) DEFAULT NULL,
  `StreetAddress` varchar(60) DEFAULT NULL,
  `City` char(15) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` varchar(5) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `SSN` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`PersonID`, `FirstName`, `LastName`, `StreetAddress`, `City`, `State`, `Zip`, `PhoneNumber`, `SSN`) VALUES
('106163', 'Fran', 'Forber', '95891 Vera Drive', 'Albany', 'NY', '97492', '3579233853', '142717945'),
('122307', 'Lynna', 'Franzman', '51827 Welch Lane', 'Baton Rouge', 'LA', '43267', '4439729320', '719299288'),
('123456', 'Robert', 'Stevens', '1234 Rainbow Rd.', 'Fullerton', 'CA', '92832', '1234567890', '123456789'),
('128332', 'Richard', 'Mills', '12436 Neeson St', 'Orange', 'CA', '91463', '7214687730', '267957135'),
('129723', 'Robert', 'Stevens', '79454 Artery Dr', 'Orange', 'CA', '72168', '9721467822', '971387510'),
('204533', 'Lurline', 'Skein', '03245 Ryan Lane', 'Arlington', 'VA', '59491', '5052608702', '383782635'),
('206013', 'Abel', 'Beurich', '9808 Clove Lane', 'Charleston', 'SC', '83996', '1974986870', '233977311'),
('213147', 'Trudy', 'Kendell', '823 Dovetail Hill', 'Minneapolis', 'MN', '82432', '6215043945', '431217379'),
('218141', 'Herc', 'Skirvane', '6 Toban Way', 'White Plains', 'NY', '61294', '7219881705', '149978565'),
('280409', 'Alexandros', 'Gorler', '7 Merchant Terrace', 'Stamford', 'CT', '13549', '7995666185', '788647915'),
('348445', 'Rodrick', 'Kraut', '19 Moose Terrace', 'Peoria', 'IL', '23858', '5600720993', '265324538'),
('387577', 'Tirrell', 'Haymes', '520 Londonderry Trail', 'Escondido', 'CA', '96146', '5631152454', '573878487'),
('388013', 'Danie', 'Jone', '4 Marcy Street', 'Norman', 'OK', '95690', '4264799475', '344066062'),
('543760', 'Sarah', 'Kincla', '6184 Shelley Center', 'Olympia', 'WA', '95135', '5525337143', '504346346'),
('645831', 'Olive', 'Tringham', '020 Eagan Park', 'Reno', 'NV', '40265', '8388671373', '462275776'),
('706841', 'Kenny', 'Tills', '713 Carberry Hill', 'Albuquerque', 'NM', '94847', '6909141374', '966742522'),
('738689', 'Cornelius', 'Johantges', '175 Kennedy Way', 'Erie', 'PA', '11735', '5453618500', '838714231'),
('785317', 'Avrit', 'Bordiss', '13 Ilene Trail', 'Saint Augustine', 'FL', '78990', '6350339597', '833997997'),
('793355', 'Krystle', 'Readshaw', '3 Buhler Center', 'Albuquerque', 'NM', '95271', '8837561653', '814279014'),
('798462', 'Peri', 'Addionisio', '084 Manley Way', 'Washington', 'DC', '59274', '8151008509', '749135170'),
('832797', 'Delmor', 'Wither', '307 Bowman Crossing', 'Jacksonville', 'FL', '20938', '3416128486', '164067241'),
('848781', 'Hedwig', 'Dwelly', '2473 4th Street', 'Hartford', 'CT', '18825', '9356864919', '192418620'),
('855498', 'Federico', 'Perfili', '23683 Ryan Alley', 'Tampa', 'FL', '50720', '2969114004', '397858994'),
('910536', 'Justen', 'Fabb', '5750 Northport Circle', 'Montgomery', 'AL', '86295', '5214908413', '118214315'),
('912262', 'Wanda', 'Shafto', '6267 Rusk Drive', 'Washington', 'DC', '86049', '7275798136', '361796008'),
('956419', 'Maressa', 'Brennans', '1 Declaration Point', 'Philadelphia', 'PA', '96295', '8726683269', '658989440'),
('971469', 'Twila', 'Harrowell', '03696 Commercial Avenue', 'San Antonio', 'TX', '27747', '8759479431', '480160467'),
('AY9974', 'Andrew', 'Yang', '471 Lesson St', 'Irvine', 'CA', '61384', '9412465520', '971347842'),
('EM9751', 'Eric', 'Micheals', '4622 Deacon Ave', 'Anaheim', 'CA', '92467', '7143458852', '124567812'),
('HO3642', 'Hunter', 'Oakes', '3321 Beckam St.', 'Fullerton', 'CA', '97813', '6482176620', '761385555'),
('MS7249', 'Mark', 'Sherman', '8824 Method Dr.', 'Anaheim', 'CA', '91468', '7349724480', '349721746'),
('PR4721', 'Paige', 'Reeves', '3421 Blight St', 'Santa Ana', 'CA', '92473', '7143145249', '948137461');

-- --------------------------------------------------------

--
-- Table structure for table `Prescription`
--

CREATE TABLE `Prescription` (
  `PrescriptionID` varchar(10) NOT NULL,
  `PrescriptionName` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Prescription`
--

INSERT INTO `Prescription` (`PrescriptionID`, `PrescriptionName`) VALUES
('013459752', 'Vicodin'),
('014978531', 'Amoxicillin'),
('213478561', 'Paracetamol'),
('315495135', 'Claritan'),
('315795412', 'Proactive'),
('871324584', 'Benadryl'),
('971248532', 'Adderall'),
('974123524', 'Tylenol'),
('978410246', 'Acutane');

-- --------------------------------------------------------

--
-- Table structure for table `PVisitPrescription`
--

CREATE TABLE `PVisitPrescription` (
  `VisitID` varchar(8) DEFAULT NULL,
  `PrescriptionID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PVisitPrescription`
--

INSERT INTO `PVisitPrescription` (`VisitID`, `PrescriptionID`) VALUES
('24681382', '013459752'),
('32145658', '971248532'),
('64851328', '013459752'),
('67845149', '213478561'),
('97513254', '013459752');

-- --------------------------------------------------------

--
-- Table structure for table `PVisitTest`
--

CREATE TABLE `PVisitTest` (
  `VisitID` varchar(10) DEFAULT NULL,
  `TestID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PVisitTest`
--

INSERT INTO `PVisitTest` (`VisitID`, `TestID`) VALUES
('24681382', '9781447531'),
('32145658', '6481245784'),
('64851328', '6481222474'),
('67845149', '3458712498'),
('97513254', '1245678541');

-- --------------------------------------------------------

--
-- Table structure for table `Specialty`
--

CREATE TABLE `Specialty` (
  `SpecialtyID` varchar(10) NOT NULL,
  `SpecialtyName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Specialty`
--

INSERT INTO `Specialty` (`SpecialtyID`, `SpecialtyName`) VALUES
('10', 'Surgery'),
('11', 'Internal Medicine'),
('12', 'Dermatology'),
('13', 'Pediatrics'),
('14', 'Orthopaedics'),
('15', 'Radiology'),
('54', 'Dentistry');

-- --------------------------------------------------------

--
-- Stand-in structure for view `StevensPatients`
-- (See below for the actual view)
--
CREATE TABLE `StevensPatients` (
`firstname` char(10)
,`lastname` char(10)
,`PhoneNumber` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `Test`
--

CREATE TABLE `Test` (
  `TestID` varchar(10) NOT NULL,
  `TestName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Test`
--

INSERT INTO `Test` (`TestID`, `TestName`) VALUES
('1245678541', 'Blood Test'),
('2483174987', 'Urine Test'),
('3124588791', 'Tonsil Test'),
('314874682', 'Weight Test'),
('3458712498', 'Swab Test'),
('6481222474', 'Cardio Test'),
('6481245784', 'Spit Test'),
('9781447531', 'Eye Test');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ViewDoctors`
-- (See below for the actual view)
--
CREATE TABLE `ViewDoctors` (
`FirstName` char(10)
,`LastName` char(10)
,`SpecialtyName` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ViewVicodin`
-- (See below for the actual view)
--
CREATE TABLE `ViewVicodin` (
`FirstName` char(10)
,`LastName` char(10)
);

-- --------------------------------------------------------

--
-- Structure for view `StevensPatients`
--
DROP TABLE IF EXISTS `StevensPatients`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `StevensPatients`  AS  select distinct `pe2`.`FirstName` AS `firstname`,`pe2`.`LastName` AS `lastname`,`pe2`.`PhoneNumber` AS `PhoneNumber` from ((((`Person` `pe` join `Doctor` `d` on(`pe`.`PersonID` = `d`.`PersonID`)) join `PatientVisit` `pv` on(`d`.`DoctorID` = `pv`.`DoctorID`)) join `Patient` `pa` on(`pa`.`PatientID` = `pv`.`PatientID`)) join `Person` `pe2` on(`pe2`.`PersonID` = `pa`.`PersonID`)) where `pe`.`FirstName` = 'Robert' and `pe`.`LastName` = 'Stevens' ;

-- --------------------------------------------------------

--
-- Structure for view `ViewDoctors`
--
DROP TABLE IF EXISTS `ViewDoctors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ViewDoctors`  AS  select `p`.`FirstName` AS `FirstName`,`p`.`LastName` AS `LastName`,`s`.`SpecialtyName` AS `SpecialtyName` from (((`Person` `p` join `Doctor` `d` on(`p`.`PersonID` = `d`.`PersonID`)) left join `DoctorSpecialty` `ds` on(`d`.`DoctorID` = `ds`.`DoctorID`)) join `Specialty` `s` on(`ds`.`SpecialtyID` = `s`.`SpecialtyID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `ViewVicodin`
--
DROP TABLE IF EXISTS `ViewVicodin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ViewVicodin`  AS  select `p`.`FirstName` AS `FirstName`,`p`.`LastName` AS `LastName` from ((((`Person` `p` join `Doctor` `d`) join `PatientVisit` `pv`) join `PVisitPrescription` `pvd`) join `Prescription` `pr`) where `p`.`PersonID` = `d`.`PersonID` and `d`.`DoctorID` = `pv`.`DoctorID` and `pv`.`VisitID` = `pvd`.`VisitID` and `pvd`.`PrescriptionID` = `pr`.`PrescriptionID` and `pr`.`PrescriptionName` = 'Vicodin' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`DoctorID`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `DoctorSpecialty`
--
ALTER TABLE `DoctorSpecialty`
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `SpecialtyID` (`SpecialtyID`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`PatientID`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `PatientVisit`
--
ALTER TABLE `PatientVisit`
  ADD PRIMARY KEY (`VisitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `Prescription`
--
ALTER TABLE `Prescription`
  ADD PRIMARY KEY (`PrescriptionID`);

--
-- Indexes for table `PVisitPrescription`
--
ALTER TABLE `PVisitPrescription`
  ADD KEY `VisitID` (`VisitID`),
  ADD KEY `PrescriptionID` (`PrescriptionID`);

--
-- Indexes for table `PVisitTest`
--
ALTER TABLE `PVisitTest`
  ADD KEY `TestID` (`TestID`),
  ADD KEY `VisitID` (`VisitID`);

--
-- Indexes for table `Specialty`
--
ALTER TABLE `Specialty`
  ADD PRIMARY KEY (`SpecialtyID`);

--
-- Indexes for table `Test`
--
ALTER TABLE `Test`
  ADD PRIMARY KEY (`TestID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD CONSTRAINT `Doctor_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`);

--
-- Constraints for table `DoctorSpecialty`
--
ALTER TABLE `DoctorSpecialty`
  ADD CONSTRAINT `DoctorSpecialty_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `DOCTOR` (`DoctorID`),
  ADD CONSTRAINT `DoctorSpecialty_ibfk_2` FOREIGN KEY (`SpecialtyID`) REFERENCES `Specialty` (`SpecialtyID`);

--
-- Constraints for table `Patient`
--
ALTER TABLE `Patient`
  ADD CONSTRAINT `Patient_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`);

--
-- Constraints for table `PatientVisit`
--
ALTER TABLE `PatientVisit`
  ADD CONSTRAINT `PatientVisit_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`),
  ADD CONSTRAINT `PatientVisit_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`PatientID`);

--
-- Constraints for table `PVisitPrescription`
--
ALTER TABLE `PVisitPrescription`
  ADD CONSTRAINT `PVisitPrescription_ibfk_1` FOREIGN KEY (`VisitID`) REFERENCES `PatientVisit` (`VisitID`),
  ADD CONSTRAINT `PVisitPrescription_ibfk_2` FOREIGN KEY (`PrescriptionID`) REFERENCES `Prescription` (`PrescriptionID`);

--
-- Constraints for table `PVisitTest`
--
ALTER TABLE `PVisitTest`
  ADD CONSTRAINT `PVisitTest_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `Test` (`TestID`),
  ADD CONSTRAINT `PVisitTest_ibfk_2` FOREIGN KEY (`VisitID`) REFERENCES `PatientVisit` (`VisitID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
