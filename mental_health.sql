CREATE DATABASE  IF NOT EXISTS `mental_health` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mental_health`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: mental_health
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `Accessibility`
--

DROP TABLE IF EXISTS `Accessibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accessibility` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `ServiceID` int DEFAULT NULL,
  `accessibilitytype` char(30) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ServiceID` (`ServiceID`),
  CONSTRAINT `accessibility_ibfk_1` FOREIGN KEY (`ServiceID`) REFERENCES `Services` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accessibility`
--

LOCK TABLES `Accessibility` WRITE;
/*!40000 ALTER TABLE `Accessibility` DISABLE KEYS */;
INSERT INTO `Accessibility` VALUES (1,1,'Wheelchair Access'),(2,1,'Elevator access'),(3,1,'accessible parking'),(4,1,'flexible scheduling'),(5,1,'remote service availability'),(6,2,'Wheelchair Access'),(7,2,'Elevator access'),(8,2,'accessible parking'),(9,2,'flexible scheduling'),(10,2,'remote service availability'),(11,3,'Sensory-Friendly Environment'),(12,4,'Sensory-Friendly Environment'),(13,4,'Flexible Scheduling'),(14,4,'Remote Service Availability'),(15,4,'Service Animal Friendly'),(16,5,'Flexible Scheduling'),(17,5,'Remote Service Availability'),(18,5,'Sensory-Friendly Environment'),(19,6,'Wheelchair Access'),(20,6,'Hearing Impaired Support'),(21,6,'accessible parking'),(22,6,'flexible scheduling'),(23,6,'remote service availability'),(24,6,'Mobility Assistance'),(25,6,'Service Animal Friendly'),(26,6,'Elevator Access'),(27,6,'Flexible Scheduling'),(28,6,'Remote Service Availability'),(29,6,'Sensory-Friendly Environment'),(30,7,'Wheelchair Access'),(31,7,'Hearing Impaired Support'),(32,7,'accessible parking'),(33,7,'flexible scheduling'),(34,7,'remote service availability'),(35,7,'Mobility Assistance'),(36,7,'Service Animal Friendly'),(37,7,'Elevator Access'),(38,7,'Flexible Scheduling'),(39,7,'Remote Service Availability'),(40,7,'Sensory-Friendly Environment'),(41,8,'Hearing Impaired Support'),(42,8,'Visual Impairment Support'),(43,8,'Flexible Scheduling'),(44,8,'Remote Service Availability'),(45,8,'Sensory-Friendly Environment'),(46,9,'Wheelchair Access'),(47,9,'Hearing Impaired Support'),(48,9,'accessible parking'),(49,9,'flexible scheduling'),(50,9,'remote service availability'),(51,9,'Mobility Assistance'),(52,9,'Service Animal Friendly'),(53,9,'Elevator Access'),(54,9,'Flexible Scheduling'),(55,9,'Remote Service Availability'),(56,9,'Sensory-Friendly Environment'),(57,10,'Wheelchair Access'),(58,10,'Hearing Impaired Support'),(59,10,'accessible parking'),(60,10,'flexible scheduling'),(61,10,'remote service availability'),(62,10,'Mobility Assistance'),(63,10,'Service Animal Friendly'),(64,10,'Elevator Access'),(65,10,'Flexible Scheduling'),(66,10,'Remote Service Availability'),(67,10,'Sensory-Friendly Environment'),(68,11,'Wheelchair Access'),(69,11,'Hearing Impaired Support'),(70,11,'accessible parking'),(71,11,'flexible scheduling'),(72,11,'remote service availability'),(73,11,'Mobility Assistance'),(74,11,'Service Animal Friendly'),(75,11,'Elevator Access'),(76,11,'Flexible Scheduling'),(77,11,'Remote Service Availability'),(78,11,'Sensory-Friendly Environment'),(79,12,'Hearing Impaired Support'),(80,12,'accessible parking'),(81,12,'flexible scheduling'),(82,12,'remote service availability'),(83,12,'Mobility Assistance'),(84,12,'Service Animal Friendly'),(85,12,'Elevator Access'),(86,12,'Flexible Scheduling'),(87,12,'Remote Service Availability'),(88,12,'Sensory-Friendly Environment'),(89,13,'Wheelchair Access'),(90,13,'Hearing Impaired Support'),(91,13,'accessible parking'),(92,13,'flexible scheduling'),(93,13,'remote service availability'),(94,13,'Mobility Assistance'),(95,13,'Service Animal Friendly'),(96,13,'Elevator Access'),(97,13,'Flexible Scheduling'),(98,13,'Remote Service Availability'),(99,13,'Sensory-Friendly Environment'),(100,14,'Wheelchair Access'),(101,14,'Hearing Impaired Support'),(102,14,'accessible parking'),(103,14,'flexible scheduling'),(104,14,'remote service availability'),(105,14,'Mobility Assistance'),(106,14,'Service Animal Friendly'),(107,14,'Elevator Access'),(108,14,'Flexible Scheduling'),(109,14,'Remote Service Availability'),(110,14,'Sensory-Friendly Environment'),(111,15,'Wheelchair Access'),(112,15,'Hearing Impaired Support'),(113,15,'accessible parking'),(114,15,'flexible scheduling'),(115,15,'remote service availability'),(116,15,'Mobility Assistance'),(117,15,'Service Animal Friendly'),(118,15,'Elevator Access'),(119,15,'Flexible Scheduling'),(120,15,'Remote Service Availability'),(121,15,'Sensory-Friendly Environment'),(122,16,'Wheelchair Access'),(123,16,'Hearing Impaired Support'),(124,16,'accessible parking'),(125,16,'flexible scheduling'),(126,16,'remote service availability'),(127,16,'Mobility Assistance'),(128,16,'Service Animal Friendly'),(129,16,'Elevator Access'),(130,16,'Flexible Scheduling'),(131,16,'Remote Service Availability'),(132,16,'Sensory-Friendly Environment'),(133,17,'Wheelchair Access'),(134,17,'Hearing Impaired Support'),(135,17,'accessible parking'),(136,17,'flexible scheduling'),(137,17,'remote service availability'),(138,17,'Mobility Assistance'),(139,17,'Service Animal Friendly'),(140,17,'Elevator Access'),(141,17,'Flexible Scheduling'),(142,17,'Remote Service Availability'),(143,17,'Sensory-Friendly Environment');
/*!40000 ALTER TABLE `Accessibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Admin_Method`
--

DROP TABLE IF EXISTS `Admin_Method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin_Method` (
  `amid` int NOT NULL AUTO_INCREMENT,
  `adminmethod` char(30) DEFAULT NULL,
  PRIMARY KEY (`amid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin_Method`
--

LOCK TABLES `Admin_Method` WRITE;
/*!40000 ALTER TABLE `Admin_Method` DISABLE KEYS */;
INSERT INTO `Admin_Method` VALUES (1,'In-Center'),(2,'By Phone'),(3,'By Email'),(4,'Home Visit'),(5,'Online');
/*!40000 ALTER TABLE `Admin_Method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Language`
--

DROP TABLE IF EXISTS `Language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Language` (
  `lid` int NOT NULL AUTO_INCREMENT,
  `language` char(30) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Language`
--

LOCK TABLES `Language` WRITE;
/*!40000 ALTER TABLE `Language` DISABLE KEYS */;
INSERT INTO `Language` VALUES (1,'English'),(2,'French'),(3,'Spanish'),(4,'Mandarin'),(5,'German');
/*!40000 ALTER TABLE `Language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Language_Support`
--

DROP TABLE IF EXISTS `Language_Support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Language_Support` (
  `lsid` int NOT NULL AUTO_INCREMENT,
  `ServiceID` int DEFAULT NULL,
  `LanguageID` int DEFAULT NULL,
  PRIMARY KEY (`lsid`),
  KEY `ServiceID` (`ServiceID`),
  KEY `LanguageID` (`LanguageID`),
  CONSTRAINT `language_support_ibfk_1` FOREIGN KEY (`ServiceID`) REFERENCES `Services` (`sid`),
  CONSTRAINT `language_support_ibfk_2` FOREIGN KEY (`LanguageID`) REFERENCES `Language` (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Language_Support`
--

LOCK TABLES `Language_Support` WRITE;
/*!40000 ALTER TABLE `Language_Support` DISABLE KEYS */;
INSERT INTO `Language_Support` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,1),(6,3,2),(7,4,1),(8,4,2),(9,5,1),(10,6,1),(11,6,2),(12,7,1),(13,7,2),(14,8,1),(15,8,2),(16,9,1),(17,9,2),(18,10,1),(19,10,2),(20,11,1),(21,11,2),(22,12,2),(23,13,1),(24,13,2),(25,14,1),(26,14,2),(27,15,1),(28,16,2),(29,17,1),(30,17,2);
/*!40000 ALTER TABLE `Language_Support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locations`
--

DROP TABLE IF EXISTS `Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Locations` (
  `lid` int NOT NULL AUTO_INCREMENT,
  `address` char(255) DEFAULT NULL,
  `city` char(30) DEFAULT NULL,
  `postalcode` char(10) DEFAULT NULL,
  `publictransportaccess` char(5) DEFAULT NULL,
  `wheelchairaccess` char(5) DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  PRIMARY KEY (`lid`),
  KEY `ServiceID` (`ServiceID`),
  CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`ServiceID`) REFERENCES `Services` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locations`
--

LOCK TABLES `Locations` WRITE;
/*!40000 ALTER TABLE `Locations` DISABLE KEYS */;
INSERT INTO `Locations` VALUES (1,'1234 Saint-Catherine St W','Montreal','H3H 1M1','Yes','Yes',1),(2,'5678 Sherbrooke St E','Montreal','H1X 2P4','Yes','Yes',2),(3,'91011 Peel Ave','Montreal','H3A 1T2','No','No',3),(4,'1415 Crescent St','Montreal','H3G 2C1','Yes','Yes',4),(5,'1617 De Maisonneuve Blvd','Montreal','H3H 2N2','Yes','Yes',5),(6,'1820 Sainte-Famille St','Montreal','H2X 2Y4','No','No',6),(7,'2022 Jeanne-Mance St','Montreal','H2X 1L3','Yes','Yes',7),(8,'2224 Rene-Levesque Blvd','Montreal','H3H 1R1','Yes','Yes',8),(9,'2426 Parc Ave','Montreal','H2X 2E2','No','Yes',9),(10,'2628 Saint-Denis St','Montreal','H2X 3K6','Yes','No',10),(11,'2829 Sainte-Catherine St E','Montreal','H1W 2E2','Yes','Yes',11),(12,'3031 Papineau Ave','Montreal','H2K 4J5','Yes','Yes',12),(13,'3233 Laurier Ave','Montreal','H2J 1E1','No','No',13),(14,'3435 Atwater Ave','Montreal','H3H 1S2','Yes','Yes',14),(15,'3637 Outremont Ave','Montreal','H2V 3A8','Yes','Yes',15),(16,'3839 Stanley St','Montreal','H3A 1P8','No','No',16),(17,'4041 Bishop St','Montreal','H3G 1L9','Yes','Yes',17);
/*!40000 ALTER TABLE `Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organizations`
--

DROP TABLE IF EXISTS `Organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Organizations` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `contactinfo` char(30) DEFAULT NULL,
  `areaserved` char(30) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organizations`
--

LOCK TABLES `Organizations` WRITE;
/*!40000 ALTER TABLE `Organizations` DISABLE KEYS */;
INSERT INTO `Organizations` VALUES (1,'projet collectif en inclusion a montreal','5142551054','Montreal Island;'),(2,'centrami','5147611509','Montreal Island;'),(3,'mouvement sante mentale quebec','5148493291','Province of Quebec;'),(4,'vers l\'equilibre','5142511200','Montreal Island;'),(5,'survivre','5142569000','Montreal Island;'),(6,'access open minds','18337616131','Angrignon;'),(7,'up house','5147645599','Province of Quebec;'),(8,'carrefour populaire de saintmichel','5147221211','Saint-Michel;'),(9,'children\'s crossroads','5142596127','Island of Montreal;'),(10,'mousseau crossroads','4504684926','Old Longueuil;'),(11,'crossroads marguerite bourgeoys','5145271871','Ville-Marie;'),(12,'crossroads the turning point','4506510418','Quebec;'),(13,'Carrefour le moutier sentinel network','4506797111','Monteregie;'),(14,'abri en ville','5149322199','Greater Montreal;'),(15,'acco-loisirs','4504335559','Laurentians;'),(16,'accolade sante mentale','8666997059','Jardins Roussillon;'),(17,'action sante de pointe st charles','5149335771','Le Sud Ouest;'),(18,'aidants unis pour recreer ensemble des soutiens','8195570789','Gatineau');
/*!40000 ALTER TABLE `Organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provider`
--

DROP TABLE IF EXISTS `Provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Provider` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT NULL,
  `specialty` char(30) DEFAULT NULL,
  `licensenumber` char(30) DEFAULT NULL,
  `contactinfo` char(40) DEFAULT NULL,
  `OrgID` int DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `OrgID` (`OrgID`),
  CONSTRAINT `provider_ibfk_1` FOREIGN KEY (`OrgID`) REFERENCES `Organizations` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provider`
--

LOCK TABLES `Provider` WRITE;
/*!40000 ALTER TABLE `Provider` DISABLE KEYS */;
INSERT INTO `Provider` VALUES (1,'Jean Tremblay','Community Mental Health Worker','P9876543210','jean.tremblay@reseausante.org',2),(2,'Sophie Lefebvre','Psychologist','M1122334455','sophie.lefebvre@centrami.org',3),(3,'Luc Gagnon','Mental Health Educator','C6677889900','luc.gagnon@msmq.qc.ca',4),(4,'Isabelle Martin','Wellness Coach','D4455667788','isabelle.martin@versequilibre.ca',5),(5,'Marc Boucher','Peer Support Specialist','P2233445566','marc.boucher@survivre.org',6),(6,'Emilie Roy','Mental Health Advocate','M3344556677','emilie.roy@actionautonomie.ca',7),(7,'Antoine Pelletier','Youth Counselor','D7788990011','antoine.pelletier@accessopenminds.ca',8),(8,'Claire Fortin','Rehabilitation Specialist','C9900112233','claire.fortin@uphouse.org',9),(9,'Nicolas Morin','Social Worker','P5566778899','nicolas.morin@carrefourstmichel.ca',10),(10,'Valerie Lapointe','Child Psychologist','D1122446688','valerie.lapointe@childrenscrossroads.ca',11),(11,'Daniel Ouellet','Crisis Intervention Counselor','M3344778899','daniel.ouellet@mousseaucrossroads.ca',12),(12,'Caroline Gervais','Addiction Counselor','C5566889900','caroline.gervais@margueritebourgeoys.org',13),(13,'Philippe Desjardins','Psychotherapist','P7788001122','philippe.desjardins@theturningpoint.ca',14),(14,'Amelie Caron','Outreach Worker','D9900114455','amelie.caron@carrefourlemoutier.ca',15),(15,'Thomas Belanger','Housing Support Specialist','C1122336677','thomas.belanger@abrienville.ca',16),(16,'Julie Renaud','Recreational Therapist','M3344558899','julie.renaud@accoloisirs.ca',17),(17,'Mathieu Girard','Family Counselor','P5566770011','mathieu.girard@accoladesantementale.ca',18);
/*!40000 ALTER TABLE `Provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Service_Admin_Method`
--

DROP TABLE IF EXISTS `Service_Admin_Method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Service_Admin_Method` (
  `said` int NOT NULL AUTO_INCREMENT,
  `ServiceID` int DEFAULT NULL,
  `AdminMethodID` int DEFAULT NULL,
  PRIMARY KEY (`said`),
  KEY `ServiceID` (`ServiceID`),
  KEY `AdminMethodID` (`AdminMethodID`),
  CONSTRAINT `service_admin_method_ibfk_1` FOREIGN KEY (`ServiceID`) REFERENCES `Services` (`sid`),
  CONSTRAINT `service_admin_method_ibfk_2` FOREIGN KEY (`AdminMethodID`) REFERENCES `Admin_Method` (`amid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service_Admin_Method`
--

LOCK TABLES `Service_Admin_Method` WRITE;
/*!40000 ALTER TABLE `Service_Admin_Method` DISABLE KEYS */;
INSERT INTO `Service_Admin_Method` VALUES (1,1,4),(2,1,5),(3,1,1),(4,2,1),(5,2,4),(6,2,5),(7,3,1),(8,3,4),(9,4,1),(10,4,4),(11,4,5),(12,5,1),(13,5,4),(14,5,5),(15,6,1),(16,6,4),(17,6,5),(18,7,1),(19,7,4),(20,7,5),(21,8,5),(22,9,1),(23,9,4),(24,9,5),(25,10,1),(26,10,2),(27,10,3),(28,10,4),(29,10,5),(30,11,1),(31,11,4),(32,11,5),(33,12,1),(34,12,5),(35,13,1),(36,13,5),(37,14,1),(38,14,5),(39,15,1),(40,15,5),(41,16,1),(42,16,5),(43,17,1),(44,17,5);
/*!40000 ALTER TABLE `Service_Admin_Method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Service_Provider`
--

DROP TABLE IF EXISTS `Service_Provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Service_Provider` (
  `psid` int NOT NULL AUTO_INCREMENT,
  `ProviderID` int DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  PRIMARY KEY (`psid`),
  KEY `ProviderID` (`ProviderID`),
  KEY `ServiceID` (`ServiceID`),
  CONSTRAINT `service_provider_ibfk_1` FOREIGN KEY (`ProviderID`) REFERENCES `Provider` (`pid`),
  CONSTRAINT `service_provider_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `Services` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service_Provider`
--

LOCK TABLES `Service_Provider` WRITE;
/*!40000 ALTER TABLE `Service_Provider` DISABLE KEYS */;
INSERT INTO `Service_Provider` VALUES (1,1,2),(2,1,5),(3,2,3),(4,2,6),(5,3,7),(6,3,8),(7,4,9),(8,5,10),(9,6,11),(10,7,12),(11,8,13),(12,9,14),(13,10,15),(14,11,16),(15,12,17);
/*!40000 ALTER TABLE `Service_Provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Services`
--

DROP TABLE IF EXISTS `Services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Services` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `type` char(80) DEFAULT NULL,
  `cost` char(30) DEFAULT NULL,
  `onlineavability` char(30) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Services`
--

LOCK TABLES `Services` WRITE;
/*!40000 ALTER TABLE `Services` DISABLE KEYS */;
INSERT INTO `Services` VALUES (1,'Individual Psychotherapy','20','NO;'),(2,'Couple Psychotherapy','70','NO;'),(3,'Assessment of ADHD','20','YES;'),(4,'Treatment of anxiety','20','NO;'),(5,'Treatment of depression','25','YES;'),(6,'Assessment and psychotherapy services for children teens and adults','30','YES;'),(7,'Support Groups','15','YES;'),(8,'Online Training Services','20','YES;'),(9,'Psychosocial services','5','NO;'),(10,'Reintegration process accompaniment','0','NO;'),(11,'Employment training program','0','NO;'),(12,'Self help groups for people living with anxiety','40','YES;'),(13,'Self help groups for people living with depression','40','YES;'),(14,'Self help groups for people living with bipolar disorder','40','YES;'),(15,'Self management workshops for depression','555','YES;'),(16,'Self management workshops for anxiety','555','YES;'),(17,'Self management workshops for bipolarity','555','YES');
/*!40000 ALTER TABLE `Services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Service_Favorites`
--

DROP TABLE IF EXISTS `User_Service_Favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Service_Favorites` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `UserID` (`UserID`),
  KEY `ServiceID` (`ServiceID`),
  CONSTRAINT `user_service_favorites_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`uid`),
  CONSTRAINT `user_service_favorites_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `Services` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Service_Favorites`
--

LOCK TABLES `User_Service_Favorites` WRITE;
/*!40000 ALTER TABLE `User_Service_Favorites` DISABLE KEYS */;
INSERT INTO `User_Service_Favorites` VALUES (1,1,1),(2,2,2),(3,3,8),(4,4,5),(5,5,9),(6,6,4),(7,7,2),(8,8,8),(9,9,6),(10,10,14),(11,11,16),(12,12,2),(13,13,7),(14,14,5),(15,15,3),(16,16,12),(17,17,15);
/*!40000 ALTER TABLE `User_Service_Favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `fname` char(30) DEFAULT NULL,
  `lname` char(30) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `usertype` char(30) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `PreferredLanguageID` int DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `PreferredLanguageID` (`PreferredLanguageID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`PreferredLanguageID`) REFERENCES `Language` (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Rachel','Anderson',28,'Senior Citizen','4563 Rue Saint-Denis Verdun',1),(2,'Laura','Garcia',78,'Senior Citizen','8140 Avenue du Parc',2),(3,'Alice','Martin',57,'Student','1255 Rue Jean-Talon',2),(4,'Ulysses','Allen',53,'General Public','2061 Rue Notre-Dame',2),(5,'Diana','Robinson',51,'Senior Citizen','978 Rue Sainte-Catherine',2),(6,'Michael','Rodriguez',53,'Senior Citizen','9302 Rue Notre-Dame',2),(7,'Xenia','Anderson',46,'General Public','4468 Boulevard Rene-Levesque',1),(8,'Oscar','Clark',87,'General Public','3934 Rue Jean-Talon',2),(9,'Xenia','Martinez',64,'Student','8564 Boulevard Rene-Levesque',1),(10,'Kevin','Adams',24,'General Public','7935 Rue Wellington',2),(11,'William','Lee',51,'Student','9448 Rue Crescent',2),(12,'Steven','Lee',84,'Student','2448 Avenue du Parc',2),(13,'Rachel','Martin',77,'General Public','7327 Rue Wellington',1),(14,'Oscar','Robinson',85,'General Public','5094 Avenue Laurier',2),(15,'Tina','Lewis',89,'General Public','2235 Boulevard Henri-Bourassa',1),(16,'Alice','Baker',28,'General Public','5928 Avenue Papineau',2),(17,'Victoria','Garcia',51,'Senior Citizen','1569 Rue Notre-Dame',2),(18,'Rachel','Clark',56,'Senior Citizen','2502 Avenue du Parc',2),(19,'Oscar','Brown',36,'General Public','6902 Boulevard Rene-Levesque',1),(20,'Diana','Johnson',67,'Student','8993 Rue Crescent',2),(21,'Ian','White',29,'Student','3738 Boulevard Henri-Bourassa',2),(22,'Diana','King',81,'Student','9115 Avenue Papineau',2),(23,'Rachel','Green',53,'Student','6273 Rue Wellington',1),(24,'Diana','Martin',41,'Senior Citizen','3743 Rue Saint-Hubert',2),(25,'Paula','Harris',50,'Senior Citizen','2233 Rue Saint-Hubert',2),(26,'William','Lewis',28,'Student','4497 Avenue Laurier',2),(27,'Edward','Scott',60,'General Public','7145 Boulevard Henri-Bourassa',1),(28,'Kevin','Jackson',85,'General Public','7270 Avenue du Parc',2),(29,'Julia','Anderson',81,'General Public','1369 Rue Beaubien',2),(30,'Victoria','Young',47,'General Public','5531 Rue Crescent',1);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 22:12:51
