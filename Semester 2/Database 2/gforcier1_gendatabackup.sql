CREATE DATABASE  IF NOT EXISTS `dentist` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dentist`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: dentist
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `AppointmentID` int unsigned NOT NULL AUTO_INCREMENT,
  `CustomerID` int unsigned NOT NULL,
  `DentistID` int unsigned NOT NULL,
  `AssistantID` int unsigned NOT NULL,
  `ServiceID` int unsigned NOT NULL,
  `PolicyID` int unsigned NOT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`,`CustomerID`,`DentistID`,`AssistantID`,`ServiceID`,`PolicyID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,1,1,3,1,1,'2023-03-13','08:00:00','08:45:00'),(2,2,2,2,5,2,'2023-03-15','10:30:00','11:30:00'),(3,3,3,1,4,3,'2023-03-14','11:15:00','12:15:00'),(4,4,4,1,2,4,'2023-03-18','07:30:00','08:45:00'),(5,5,5,3,7,5,'2023-03-22','12:45:00','01:45:00');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistants`
--

DROP TABLE IF EXISTS `assistants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistants` (
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
  PRIMARY KEY (`AssistantID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistants`
--

LOCK TABLES `assistants` WRITE;
/*!40000 ALTER TABLE `assistants` DISABLE KEYS */;
INSERT INTO `assistants` VALUES (1,'Bruce','Campbell','666-666-6666','bcampbell@gmail.com','1974-06-02','666 Bagool Ln','Fall Creek','Wisconsin','54742'),(2,'Isabelle','Adjani','666-496-3333','iadjanig@gmail.com','1955-06-27','234 Possession St','Los Angeles','California','23680'),(3,'Heinz','Bennet','909-454-1324','hbennetg@gmail.com','1948-04-29','7098 Monkey Ave','Miami','Florida','94685');
/*!40000 ALTER TABLE `assistants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Brendan','Fraser','231-098-6666','bfraser@gmail.com','1973-05-25','723 Mario Rd','Fall Creek','Wisconsin','54742'),(2,'Darren','Aronofsky','616-496-2351','daronofsky@gmail.com','1901-12-27','294 Requiem St','Los Angeles','California','23680'),(3,'Sadie','Sink','129-632-9802','ssink@gmail.com','1998-07-29','7098 Morton Ave','Miami','Florida','94685'),(4,'Hong','Chau','543-098-1324','hchau@gmail.com','1948-08-10','7098 Silent St','Boise','Idaho','63541'),(5,'Ty','Simpkins','257-000-0122','tsimpkins@gmail.com','1996-09-14','7098 Manchester Ln','Dallas','Texas','57896');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dentists`
--

DROP TABLE IF EXISTS `dentists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dentists` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dentists`
--

LOCK TABLES `dentists` WRITE;
/*!40000 ALTER TABLE `dentists` DISABLE KEYS */;
INSERT INTO `dentists` VALUES (1,'Ryan','Gosling','555-999-6666','rgosling@gmail.com','1987-08-03','520 Bowser Ave','Altoona','Wisconsin','54720'),(2,'Sam','Neill','666-777-2222','sneillg@gmail.com','1954-06-04','969 Peach Ave','Eau Claire','Wisconsin','54701');
/*!40000 ALTER TABLE `dentists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `InsuranceID` int unsigned NOT NULL AUTO_INCREMENT,
  `Phone` varchar(13) DEFAULT NULL,
  `CompanyName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`InsuranceID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'715-565-5555','Movie Insurance'),(2,'828-626-9999','Bowling Insurance'),(3,'656-102-0000','Barnyard Insurance'),(4,'989-841-1511','Kitten Insurance');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `PolicyID` int unsigned NOT NULL AUTO_INCREMENT,
  `CustomerID` int unsigned NOT NULL,
  `InsuranceID` int unsigned NOT NULL,
  `PolicyNumber` varchar(15) DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  PRIMARY KEY (`PolicyID`,`CustomerID`,`InsuranceID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1,1,3,'548965741256984','2025-05-30'),(2,2,1,'457125489632548','2023-06-18'),(3,3,2,'987456214587632','2025-10-12'),(4,4,1,'165874359862548','2024-11-11'),(5,5,4,'456982365418965','2026-01-16');
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `ServiceID` int unsigned NOT NULL AUTO_INCREMENT,
  `ServiceDescr` varchar(50) DEFAULT NULL,
  `ServicePrice` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'General Cleaning','100.00'),(2,'X-Rays','300.00'),(3,'Crowns','250.00'),(4,'Install Braces','500.00'),(5,'Adjust Braces','100.00'),(6,'Cavity Repair','200.00'),(7,'Enamel Sealant','150.00');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 18:09:48
