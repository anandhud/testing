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
-- Table structure for table `myapp_panelmembersdirectory`
--

DROP TABLE IF EXISTS `myapp_panelmembersdirectory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_panelmembersdirectory` (
  `memberID` int(11) NOT NULL AUTO_INCREMENT,
  `memberName` varchar(100) NOT NULL,
  `memberEmail` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`memberID`),
  UNIQUE KEY `memberName` (`memberName`),
  UNIQUE KEY `memberEmail` (`memberEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_panelmembersdirectory`
--

LOCK TABLES `myapp_panelmembersdirectory` WRITE;
/*!40000 ALTER TABLE `myapp_panelmembersdirectory` DISABLE KEYS */;
INSERT INTO `myapp_panelmembersdirectory` VALUES (1,'Anandhu Dhanpal','anand123@gmail.com','2017-04-08 13:41:08.245000','2017-04-08 13:41:08.245000'),(2,'Shaffath Zakir Hussain','shaffath123@viasat.com','2017-04-08 13:41:13.402000','2017-04-08 13:41:13.402000'),(3,'Sambasiva Reddy','samba123@viasat.com','2017-04-08 13:41:20.272000','2017-04-08 13:41:20.272000'),(4,'Vijay Varma','vijay123@gmail.com','2017-04-08 13:41:31.148000','2017-04-08 13:41:31.148000'),(5,'Rishabh Jain','rishabh.jain@viasat.com','2017-04-08 13:41:36.785000','2017-04-08 13:41:36.785000'),(6,'Rasanth','rasanth123@gmail.com','2017-04-11 18:15:01.697000','2017-04-11 18:15:01.697000'),(7,'Venkatesh','venkatesh123@gmail.com','2017-04-11 18:15:33.145000','2017-04-11 18:15:33.145000'),(8,'Dinesh Gaglani','dinesh123@viasat.com','2017-04-11 18:16:29.705000','2017-04-11 18:16:29.705000');
/*!40000 ALTER TABLE `myapp_panelmembersdirectory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-31 22:02:53
