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
-- Table structure for table `myapp_source`
--

DROP TABLE IF EXISTS `myapp_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_source` (
  `sourceID` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`sourceID`),
  UNIQUE KEY `source` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_source`
--

LOCK TABLES `myapp_source` WRITE;
/*!40000 ALTER TABLE `myapp_source` DISABLE KEYS */;
INSERT INTO `myapp_source` VALUES (1,'Hackerrank','Active','2017-04-08 12:35:30.413000','2017-04-08 12:35:30.414000'),(2,'Monster.com','Active','2017-04-08 12:35:33.372000','2017-04-08 12:35:33.372000'),(3,'Mind Select','Active','2017-04-08 12:35:41.942000','2017-04-08 12:35:41.942000'),(4,'Naukri.com','Active','2017-04-08 12:35:47.683000','2017-04-08 12:35:47.683000');
/*!40000 ALTER TABLE `myapp_source` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-31 22:04:24
