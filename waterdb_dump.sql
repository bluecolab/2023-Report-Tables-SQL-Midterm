/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.6.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: waterreports25
-- ------------------------------------------------------
-- Server version	11.6.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `1isabella_leadcopper2023`
--
use waterreport;
DROP TABLE IF EXISTS `1isabella_leadcopper2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1isabella_leadcopper2023` (
  `test_id` int(15) NOT NULL AUTO_INCREMENT,
  `contaminant` varchar(25) NOT NULL,
  `violation` enum('Yes','No') DEFAULT NULL,
  `date_of_sample` date NOT NULL,
  `level_detected` decimal(10,4) DEFAULT NULL,
  `level_detected_90th_percent_value_range` varchar(20) DEFAULT NULL,
  `unit_measurement` varchar(10) DEFAULT NULL,
  `regulatory_limit_al` decimal(10,4) DEFAULT NULL,
  `MCLG` decimal(10,4) DEFAULT NULL,
  `num_samples_collected` tinyint(4) DEFAULT NULL,
  `num_samples_exceed_al_range` tinyint(4) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1isabella_leadcopper2023`
--

LOCK TABLES `1isabella_leadcopper2023` WRITE;
/*!40000 ALTER TABLE `1isabella_leadcopper2023` DISABLE KEYS */;
INSERT INTO `1isabella_leadcopper2023` VALUES
(1,'Lead','No','2021-01-01',0.0000,'(ND-1.2)','ug/L',15.0000,0.0000,10,0,'adjusted date to January 1st of that year; level detected is ND\r'),
(2,'Copper','No','2021-01-01',0.0110,'(0.001-0.011)','mg/L',1.3000,1.3000,10,0,'adjusted date to January 1st of that year\r');
/*!40000 ALTER TABLE `1isabella_leadcopper2023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2detectedcontaminants2023`
--

DROP TABLE IF EXISTS `2detectedcontaminants2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2detectedcontaminants2023` (
  `test_id` int(15) NOT NULL AUTO_INCREMENT,
  `contaminant` varchar(150) NOT NULL,
  `violation` enum('Yes','No') DEFAULT NULL,
  `date_of_sample` date DEFAULT NULL,
  `level_detected` decimal(10,4) DEFAULT NULL,
  `level_detected_avg_max` varchar(50) DEFAULT NULL,
  `level_detected_range` varchar(50) DEFAULT NULL,
  `unit_measurement` varchar(10) DEFAULT NULL,
  `MCLG` decimal(10,4) DEFAULT NULL,
  `regulatory_limit` decimal(10,4) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2detectedcontaminants2023`
--

LOCK TABLES `2detectedcontaminants2023` WRITE;
/*!40000 ALTER TABLE `2detectedcontaminants2023` DISABLE KEYS */;
INSERT INTO `2detectedcontaminants2023` VALUES
(1,'Alkalinity','No','2023-12-21',15.4000,'','','mg/l',NULL,NULL,''),
(2,'Barium','No','2023-12-21',0.0049,'','','mg/l',2.0000,2.0000,''),
(3,'Calcium','No','2023-12-21',5.6000,'','','mg/l',NULL,NULL,''),
(4,'Calcium as Calcium Carbonate','No','2023-12-01',14.0000,'','','mg/l',NULL,NULL,'original date of 12/2023 was adjusted to 12/1/2023; level detected mg/L as CACO3'),
(5,'Chloride','No','2023-12-21',11.6000,'','','mg/l',NULL,250.0000,''),
(6,'Corrosivity by Calculation','No','2019-01-01',-2.1900,'','','mg/l',NULL,NULL,'adjusted date to January 1st of that year'),
(7,'Fluoride','No','2023-01-01',0.7000,'','(0.44-0.98)','mg/l',NULL,2.2000,'adjusted date to January 1st of that year'),
(8,'Hardness','No','2023-12-21',14.0000,'','','mg/L',NULL,NULL,''),
(9,'Nickel','No','2023-12-21',0.2900,'','','ug/l',NULL,NULL,''),
(10,'Nitrate','No','2023-12-21',0.0640,'','','mg/l',10.0000,10.0000,''),
(11,'pH','No','2023-12-21',7.7200,'','','units',NULL,NULL,''),
(12,'Sodium','No','2023-12-21',10.0000,'','','mg/l',NULL,NULL,'See health effect for regulatory limit'),
(13,'Sulfate','No','2023-12-21',2.9800,'','','mg/l',NULL,250.0000,''),
(14,'Total Dissolved Solids','No','2023-12-01',55.6000,'','','mg/l',NULL,NULL,'original date of 12/2023 was adjusted to 12/1/2023'),
(15,'Zinc','No','2023-12-21',0.0037,'','','mg/l',NULL,5.0000,''),
(16,'Gross Alpha (Including radium-226 but excluding radon and uranium)','No','2018-04-24',0.4640,'','','pCi/L',NULL,15.0000,''),
(17,'Beta particles and photon activity from man-made\nradionuclides','No','2018-04-24',0.9230,'','','pCi/L',NULL,50.0000,''),
(18,'Combined radium-226 and 228','No','2018-04-24',1.0860,'','','pCi/L',NULL,5.0000,''),
(19,'Uranium','No','2018-04-24',0.1250,'','','ug/L',NULL,30.0000,''),
(20,'Total Haloacetic Acids','No','2023-01-01',15.0000,'','(10.7-17.6)','ug/L',NULL,60.0000,'adjusted date to January 1st of that year'),
(21,'Total Trihalomethanes','No','2023-01-01',42.9300,'','(23.60-51.70)','ug/L',NULL,80.0000,'adjusted date to January 1st of that year'),
(22,'Chlorine Residual','No','2023-01-01',1.2000,'','(0.7-1.7)','mg/L',NULL,4.0000,'adjusted date to January 1st of that year'),
(23,'Distribution Turbidity','No','2023-01-01',1.0800,'(0.42/0.65)','(0.32-1.08)','NTU',NULL,5.0000,'adjusted date to January 1st of that year; regulatory limit is >5'),
(24,'Perfluorooctanoic Acid (PFOA) New Croton ','No','2023-12-15',3.7000,'','','ng/L',NULL,10.0000,''),
(25,'Perfluorooctanoic Acid (PFOA) Catskill','No','2023-12-15',NULL,'','','ng/L',NULL,10.0000,'level detected is ND'),
(26,'Perfluorooctanesulfonic Acid (PFOS) New Croton ','No','2023-12-15',NULL,'','','ng/L',NULL,10.0000,'level detected is ND'),
(27,'Perfluorooctanesulfonic Acid (PFOS) Catskill','No','2023-12-15',NULL,'','','ng/L',NULL,10.0000,'level detected is ND');
/*!40000 ALTER TABLE `2detectedcontaminants2023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2isabella_leadcopper2023`
--

DROP TABLE IF EXISTS `2isabella_leadcopper2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2isabella_leadcopper2023` (
  `test_id` int(15) NOT NULL AUTO_INCREMENT,
  `contaminant` varchar(25) NOT NULL,
  `violation` enum('Yes','No') DEFAULT NULL,
  `date_of_sample` date NOT NULL,
  `level_detected` decimal(10,4) DEFAULT NULL,
  `level_detected_90th_percent_value_range` varchar(20) DEFAULT NULL,
  `unit_measurement` varchar(10) DEFAULT NULL,
  `regulatory_limit_al` decimal(10,4) DEFAULT NULL,
  `MCLG` decimal(10,4) DEFAULT NULL,
  `num_samples_collected` tinyint(4) DEFAULT NULL,
  `num_samples_exceed_al_range` tinyint(4) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2isabella_leadcopper2023`
--

LOCK TABLES `2isabella_leadcopper2023` WRITE;
/*!40000 ALTER TABLE `2isabella_leadcopper2023` DISABLE KEYS */;
INSERT INTO `2isabella_leadcopper2023` VALUES
(1,'Lead','No','2021-01-01',NULL,'(ND-1.2)','ug/L',15.0000,0.0000,10,0,'adjusted date to January 1st of that year; level detected is ND\r'),
(2,'Copper','No','2021-01-01',0.0110,'(0.001-0.011)','mg/L',1.3000,1.3000,10,0,'adjusted date to January 1st of that year\r');
/*!40000 ALTER TABLE `2isabella_leadcopper2023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detectedcontaminants2023`
--

DROP TABLE IF EXISTS `detectedcontaminants2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detectedcontaminants2023` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Contaminant` varchar(150) DEFAULT NULL,
  `Violation` enum('Yes','No') DEFAULT NULL,
  `Date_of_Sample` date DEFAULT NULL,
  `Level_Detected` decimal(10,4) DEFAULT NULL,
  `Level_Detected_Range` varchar(50) DEFAULT NULL,
  `Level_Detected_MaxMin` varchar(50) DEFAULT NULL,
  `Unit_Measurement` varchar(50) DEFAULT NULL,
  `MCLG` decimal(10,4) DEFAULT NULL,
  `Regulatory_Limit` decimal(10,4) DEFAULT NULL,
  `Notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detectedcontaminants2023`
--

LOCK TABLES `detectedcontaminants2023` WRITE;
/*!40000 ALTER TABLE `detectedcontaminants2023` DISABLE KEYS */;
INSERT INTO `detectedcontaminants2023` VALUES
(1,'Alkalinity','No','2023-12-21',15.4000,'','','mg/l',NULL,NULL,''),
(2,'Barium','No','2023-12-21',0.0049,'','','mg/l',2.0000,2.0000,''),
(3,'Calcium','No','2023-12-21',5.6000,'','','mg/l',NULL,NULL,''),
(4,'Calcium as Calcium Carbonate','No','2023-12-01',14.0000,'','','mg/l',NULL,NULL,'original date of 12/2023 was adjusted to 12/1/2023; level detected mg/L as CACO3'),
(5,'Chloride','No','2023-12-21',11.6000,'','','mg/l',NULL,250.0000,''),
(6,'Corrosivity by Calculation','No','2019-01-01',-2.1900,'','','mg/l',NULL,NULL,'adjusted date to January 1st of that year'),
(7,'Fluoride','No','2023-01-01',0.7000,'','(0.44-0.98)','mg/l',NULL,2.2000,'adjusted date to January 1st of that year'),
(8,'Hardness','No','2023-12-21',14.0000,'','','mg/L',NULL,NULL,''),
(9,'Nickel','No','2023-12-21',0.2900,'','','ug/l',NULL,NULL,''),
(10,'Nitrate','No','2023-12-21',0.0640,'','','mg/l',10.0000,10.0000,''),
(11,'pH','No','2023-12-21',7.7200,'','','units',NULL,NULL,''),
(12,'Sodium','No','2023-12-21',10.0000,'','','mg/l',NULL,NULL,'See health effect for regulatory limit'),
(13,'Sulfate','No','2023-12-21',2.9800,'','','mg/l',NULL,250.0000,''),
(14,'Total Dissolved Solids','No','2023-12-01',55.6000,'','','mg/l',NULL,NULL,'original date of 12/2023 was adjusted to 12/1/2023'),
(15,'Zinc','No','2023-12-21',0.0037,'','','mg/l',NULL,5.0000,''),
(16,'Gross Alpha (Including radium-226 but excluding radon and uranium)','No','2018-04-24',0.4640,'','','pCi/L',NULL,15.0000,''),
(17,'Beta particles and photon activity from man-made\nradionuclides','No','2018-04-24',0.9230,'','','pCi/L',NULL,50.0000,''),
(18,'Combined radium-226 and 228','No','2018-04-24',1.0860,'','','pCi/L',NULL,5.0000,''),
(19,'Uranium','No','2018-04-24',0.1250,'','','ug/L',NULL,30.0000,''),
(20,'Total Haloacetic Acids','No','2023-01-01',15.0000,'','(10.7-17.6)','ug/L',NULL,60.0000,'adjusted date to January 1st of that year'),
(21,'Total Trihalomethanes','No','2023-01-01',42.9300,'','(23.60-51.70)','ug/L',NULL,80.0000,'adjusted date to January 1st of that year'),
(22,'Chlorine Residual','No','2023-01-01',1.2000,'','(0.7-1.7)','mg/L',NULL,4.0000,'adjusted date to January 1st of that year'),
(23,'Distribution Turbidity','No','2023-01-01',1.0800,'(0.42/0.65)','(0.32-1.08)','NTU',NULL,5.0000,'adjusted date to January 1st of that year; regulatory limit is >5'),
(24,'Perfluorooctanoic Acid (PFOA) New Croton ','','2023-12-15',3.7000,'','','ng/L',NULL,10.0000,''),
(25,'Perfluorooctanoic Acid (PFOA) Catskill','','2023-12-15',NULL,'','','ng/L',NULL,10.0000,'level detected is ND'),
(26,'Perfluorooctanesulfonic Acid (PFOS) New Croton ','No','2023-12-15',NULL,'','','ng/L',NULL,10.0000,'level detected is ND'),
(27,'Perfluorooctanesulfonic Acid (PFOS) Catskill','No','2023-12-15',NULL,'','','ng/L',NULL,10.0000,'level detected is ND');
/*!40000 ALTER TABLE `detectedcontaminants2023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isabella_leadcopper2023`
--

DROP TABLE IF EXISTS `isabella_leadcopper2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isabella_leadcopper2023` (
  `test_id` int(15) NOT NULL AUTO_INCREMENT,
  `contaminant` varchar(25) NOT NULL,
  `violation` enum('Yes','No','N/A') DEFAULT 'N/A',
  `date_of_sample` date NOT NULL,
  `level_detected` varchar(20) DEFAULT NULL,
  `level_detected_90th_percent_value_range` varchar(20) DEFAULT NULL,
  `unit_measurement` varchar(10) DEFAULT NULL,
  `regulatory_limit_al` decimal(10,4) DEFAULT NULL,
  `MCLG` decimal(10,4) DEFAULT NULL,
  `num_samples_collected` tinyint(4) DEFAULT NULL,
  `num_samples_exceed_al_range` tinyint(4) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isabella_leadcopper2023`
--

LOCK TABLES `isabella_leadcopper2023` WRITE;
/*!40000 ALTER TABLE `isabella_leadcopper2023` DISABLE KEYS */;
INSERT INTO `isabella_leadcopper2023` VALUES
(1,'Lead','No','2021-01-01','ND','(ND-1.2)','ug/L',15.0000,0.0000,10,0,'adjusted date to January 1st of that year\r'),
(2,'Copper','No','2021-01-01','0.011','(0.001-0.011)','mg/L',1.3000,1.3000,10,0,'adjusted date to January 1st of that year\r');
/*!40000 ALTER TABLE `isabella_leadcopper2023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testingdetected`
--

DROP TABLE IF EXISTS `testingdetected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testingdetected` (
  `test_id` int(15) NOT NULL AUTO_INCREMENT,
  `contaminant` varchar(150) NOT NULL,
  `violation` enum('Yes','No') DEFAULT NULL,
  `date_of_sample` date DEFAULT NULL,
  `level_detected` decimal(10,4) DEFAULT NULL,
  `level_detected_avg_max` varchar(50) DEFAULT NULL,
  `level_detected_range` varchar(50) DEFAULT NULL,
  `unit_measurement` varchar(50) DEFAULT NULL,
  `MCLG` decimal(10,4) DEFAULT NULL,
  `regulatory_limit` decimal(10,4) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testingdetected`
--

LOCK TABLES `testingdetected` WRITE;
/*!40000 ALTER TABLE `testingdetected` DISABLE KEYS */;
INSERT INTO `testingdetected` VALUES
(1,'Alkalinity','No','2023-12-21',15.4000,'','','mg/l',0.0000,0.0000,''),
(2,'Barium','No','2023-12-21',0.0049,'','','mg/l',2.0000,2.0000,''),
(3,'Calcium','No','2023-12-21',5.6000,'','','mg/l',0.0000,0.0000,''),
(4,'Calcium as Calcium Carbonate','No','2023-12-01',14.0000,'','','mg/l',0.0000,0.0000,'original date of 12/2023 was adjusted to 12/1/2023; level detected mg/L as CACO3'),
(5,'Chloride','No','2023-12-21',11.6000,'','','mg/l',0.0000,250.0000,''),
(6,'Corrosivity by Calculation','No','2019-01-01',-2.1900,'','','mg/l',0.0000,0.0000,'adjusted date to January 1st of that year'),
(7,'Fluoride','No','2023-01-01',0.7000,'','(0.44-0.98)','mg/l',0.0000,2.2000,'adjusted date to January 1st of that year'),
(8,'Hardness','No','2023-12-21',14.0000,'','','mg/L',0.0000,0.0000,''),
(9,'Nickel','No','2023-12-21',0.2900,'','','ug/l',0.0000,0.0000,''),
(10,'Nitrate','No','2023-12-21',0.0640,'','','mg/l',10.0000,10.0000,''),
(11,'pH','No','2023-12-21',7.7200,'','','units',0.0000,0.0000,''),
(12,'Sodium','No','2023-12-21',10.0000,'','','mg/l',0.0000,0.0000,'See health effect for regulatory limit'),
(13,'Sulfate','No','2023-12-21',2.9800,'','','mg/l',0.0000,250.0000,''),
(14,'Total Dissolved Solids','No','2023-12-01',55.6000,'','','mg/l',0.0000,0.0000,'original date of 12/2023 was adjusted to 12/1/2023'),
(15,'Zinc','No','2023-12-21',0.0037,'','','mg/l',0.0000,5.0000,''),
(16,'Gross Alpha (Including radium-226 but excluding radon and uranium)','No','2018-04-24',0.4640,'','','pCi/L',0.0000,15.0000,''),
(17,'\"Beta particles and photon activity from man-made',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(18,'No','','0000-00-00',NULL,'','pCi/L','0',50.0000,0.0000,''),
(19,'Combined radium-226 and 228','No','2018-04-24',1.0860,'','','pCi/L',0.0000,5.0000,''),
(20,'Uranium','No','2018-04-24',0.1250,'','','ug/L',0.0000,30.0000,''),
(21,'Total Haloacetic Acids','No','2023-01-01',15.0000,'','(10.7-17.6)','ug/L',0.0000,60.0000,'adjusted date to January 1st of that year'),
(22,'Total Trihalomethanes','No','2023-01-01',42.9300,'','(23.60-51.70)','ug/L',0.0000,80.0000,'adjusted date to January 1st of that year'),
(23,'Chlorine Residual','No','2023-01-01',1.2000,'','(0.7-1.7)','mg/L',0.0000,4.0000,'adjusted date to January 1st of that year'),
(24,'Distribution Turbidity','No','2023-01-01',1.0800,'(0.42/0.65)','(0.32-1.08)','NTU',0.0000,5.0000,'adjusted date to January 1st of that year; regulatory limit is >5'),
(25,'Perfluorooctanoic Acid (PFOA) New Croton ','No','2023-12-15',0.0000,NULL,NULL,NULL,NULL,NULL,NULL),
(26,'','','0000-00-00',NULL,'10','','',0.0000,NULL,NULL),
(27,'Perfluorooctanoic Acid (PFOA) Catskill','No','2023-12-15',NULL,'','','ng/L',0.0000,10.0000,'level detected is ND'),
(28,'Perfluorooctanesulfonic Acid (PFOS) New Croton ','No','2023-12-15',NULL,'','','ng/L',0.0000,10.0000,'level detected is ND'),
(29,'Perfluorooctanesulfonic Acid (PFOS) Catskill','No','2023-12-15',NULL,'','','ng/L',0.0000,10.0000,'level detected is ND'),
(30,'','','0000-00-00',NULL,'','','',0.0000,0.0000,'');
/*!40000 ALTER TABLE `testingdetected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trial`
--

DROP TABLE IF EXISTS `trial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trial` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `create_time` datetime DEFAULT NULL COMMENT 'Create Time',
  `name` varchar(255) DEFAULT NULL,
  `violation` enum('Yes','No') DEFAULT NULL,
  `date_of_sample` date DEFAULT NULL,
  `date_string` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trial`
--

LOCK TABLES `trial` WRITE;
/*!40000 ALTER TABLE `trial` DISABLE KEYS */;
INSERT INTO `trial` VALUES
(1,NULL,'Bill',NULL,NULL,NULL),
(2,NULL,'kmdfve','No','2023-12-21',NULL),
(3,NULL,'slkfmdv','No',NULL,'12/22/2023');
/*!40000 ALTER TABLE `trial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unregulatedsubstances2023`
--

DROP TABLE IF EXISTS `unregulatedsubstances2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unregulatedsubstances2023` (
  `test_id` int(15) NOT NULL AUTO_INCREMENT,
  `contaminant` varchar(150) NOT NULL,
  `violation` enum('Yes','No') DEFAULT NULL,
  `date_of_sample` date DEFAULT NULL,
  `level_detected` decimal(10,4) DEFAULT NULL,
  `level_detected_avg_max` varchar(50) DEFAULT NULL,
  `level_detected_range` varchar(50) DEFAULT NULL,
  `unit_measurement` varchar(50) DEFAULT NULL,
  `MCLG` decimal(10,4) DEFAULT NULL,
  `regulatory_limit` decimal(10,4) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unregulatedsubstances2023`
--

LOCK TABLES `unregulatedsubstances2023` WRITE;
/*!40000 ALTER TABLE `unregulatedsubstances2023` DISABLE KEYS */;
INSERT INTO `unregulatedsubstances2023` VALUES
(1,'Bromochloroacetic Acid','No','2023-01-01',1.7000,'','(1.3-1.7)','ug/L',NULL,NULL,'Adjusted date to January 1st of that year');
/*!40000 ALTER TABLE `unregulatedsubstances2023` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-09 11:13:48


