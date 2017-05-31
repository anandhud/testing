-- MySQL dump 10.16  Distrib 10.1.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `myapp_engagementactions`
--

DROP TABLE IF EXISTS `myapp_engagementactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_engagementactions` (
  `actionID` int(11) NOT NULL AUTO_INCREMENT,
  `actionName` longtext NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`actionID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_engagementactions`
--

LOCK TABLES `myapp_engagementactions` WRITE;
/*!40000 ALTER TABLE `myapp_engagementactions` DISABLE KEYS */;
INSERT INTO `myapp_engagementactions` VALUES (2,'Email Offer, call & explain offer & benefits to candidate, Also share mobile number','2017-04-17 11:50:04.746000','2017-04-17 11:53:40.052000'),(3,'Follow up for signed offer & insurance dependent form','2017-04-17 11:50:36.733000','2017-04-17 11:53:25.441000'),(4,'Resignation confirmation & Schedule Call with Hiring Manager','2017-04-17 11:50:47.131000','2017-04-17 11:53:28.788000'),(5,'Connecting through LinkedIn','2017-04-17 11:51:15.765000','2017-04-17 11:53:44.882000'),(6,'Warmup call with Hiring Manager','2017-04-17 11:51:42.095000','2017-04-17 11:53:48.905000'),(7,'Lunch/Call with Sathya','2017-04-17 11:52:06.525000','2017-04-17 11:53:52.364000'),(8,'Check Naukri status of the candidate','2017-04-17 11:52:21.194000','2017-04-17 11:53:55.832000'),(9,'Share Insurance documents','2017-04-17 11:52:46.958000','2017-04-17 11:54:00.085000'),(10,'Update activates done / Share some articles, Newsletters etc. Ask for referrals','2017-04-17 11:53:04.085000','2017-04-17 11:54:03.456000'),(11,'Share onboarding instructions with documents to be filled','2017-04-17 11:53:21.363000','2017-04-17 11:54:06.665000');
/*!40000 ALTER TABLE `myapp_engagementactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-31 22:01:15
