-- Gunnar Forcier
-- 2/17/2023
-- Creating the database and tables for the Dentist office
CREATE DATABASE IF NOT EXISTS `Dentist`;

-- Creating Customer Table
CREATE TABLE `customers` (
	`CustomerID` int unsigned NOT NULL AUTO_INCREMENT,
    `FirstName` varchar(25) DEFAULT NULL,
    `LastName` varchar(25) DEFAULT NULL,
    `Phone` varchar(13) DEFAULT NULL,
    `Email` varchar(100) DEFAULT NULL,
    `DOB` date DEFAULT NULL,
    `Address` varchar(100) DEFAULT NULL,
    `City` varchar(30) DEFAULT NULL,
    `State` varchar(15) DEFAULT NULL,
    `ZIP` varchar(10) DEFAULT NULL,
    PRIMARY KEY (`CustomerID`)
    );
    

-- Creating Dentist Table
CREATE TABLE `dentist` (
`DentistID` int unsigned NOT NULL AUTO_INCREMENT,
`FirstName` varchar(25) DEFAULT NULL,
`LastName` varchar(25) DEFAULT NULL,
`Phone` varchar(13) DEFAULT NULL,
`Email` varchar(100) DEFAULT NULL,
`DOB` date DEFAULT NULL,
`Address` varchar(100) DEFAULT NULL,
`City` varchar(30) DEFAULT NULL,
`State` varchar(15) DEFAULT NULL,
`ZIP` varchar(10) DEFAULT NULL,
PRIMARY KEY (`DentistID`)
);

-- Creating Assistant Table
CREATE TABLE `assistant` (
`AssistantID` int unsigned NOT NULL AUTO_INCREMENT,
`FirstName` varchar(25) DEFAULT NULL,
`LastName` varchar(25) DEFAULT NULL,
`Phone` varchar(13) DEFAULT NULL,
`Email` varchar(100) DEFAULT NULL,
`DOB` date DEFAULT NULL,
`Address` varchar(100) DEFAULT NULL,
`City` varchar(30) DEFAULT NULL,
`State` varchar(15) DEFAULT NULL,
`ZIP` varchar(10) DEFAULT NULL,
PRIMARY KEY (`assistantID`)
);

-- Creating Insurance Table
CREATE TABLE `insurance` (
`InsuranceID` int unsigned NOT NULL AUTO_INCREMENT,
`CustomerID` int unsigned NOT NULL,
`Phone` varchar(13) DEFAULT NULL,
`CompanyName` varchar(50) DEFAULT NULL,
PRIMARY KEY (`InsuranceID`)
);

-- Creating Policy table
CREATE TABLE `policy` (
`PolicyID` int unsigned NOT NULL AUTO_INCREMENT,
`CustomerID` int unsigned NOT NULL,
`InsuranceID` int unsigned NOT NULL,
`PolicyNumber` varchar(15) DEFAULT NULL,
`ExpDate` date DEFAULT NULL,
PRIMARY KEY (`PolicyID`)
);

-- Creating the Services table
CREATE TABLE `services` (
`ServiceID` int unsigned NOT NULL AUTO_INCREMENT,
`ServiceDescr` varchar(50) DEFAULT NULL,
`ServicePrice` varchar(10) DEFAULT NULL,
PRIMARY KEY (`ServiceID`)
);

-- Creating the final appointments table
CREATE TABLE `appointments` (
`AppointmentID` int unsigned NOT NULL AUTO_INCREMENT,
`CustomerID` int unsigned NOT NULL,
`DentistID` int unsigned NOT NULL,
`AssistantID` int unsigned NOT NULL,
`ServiceID` int unsigned NOT NULL,
`PolicyID` int unsigned NOT NULL,
`InsuranceCoverage` varchar(10) DEFAULT NULL,
`ApptStartTime` datetime DEFAULT NULL,
`ApptEndTime` datetime DEFAULT NULL,
PRIMARY KEY (`AppointmentID`)
);