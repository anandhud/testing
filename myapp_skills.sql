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
-- Table structure for table `myapp_skills`
--

DROP TABLE IF EXISTS `myapp_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_skills` (
  `skillID` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`skillID`),
  UNIQUE KEY `skill` (`skill`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_skills`
--

LOCK TABLES `myapp_skills` WRITE;
/*!40000 ALTER TABLE `myapp_skills` DISABLE KEYS */;
INSERT INTO `myapp_skills` VALUES (1,'Angular','Active','2017-04-08 07:14:29.331000','2017-04-08 07:14:29.331000'),(2,'Selenium','Active','2017-04-08 07:14:35.613000','2017-04-08 07:14:35.613000'),(3,'Java','Active','2017-04-08 07:14:40.860000','2017-04-08 07:14:40.860000'),(4,'C','Active','2017-04-08 07:14:44.665000','2017-04-08 07:14:44.665000'),(5,'C++','Active','2017-04-08 07:15:03.054000','2017-04-08 07:15:03.054000'),(6,'Python','Active','2017-04-08 07:15:05.998000','2017-04-08 07:15:05.998000'),(7,'Networking','Active','2017-04-08 08:30:00.444000','2017-04-08 08:30:00.444000'),(8,'Dev Ops','Active','2017-04-08 08:30:04.260000','2017-04-08 08:30:04.260000'),(9,'Django','Active','2017-04-08 08:30:08.720000','2017-04-08 08:30:08.720000'),(10,'Ruby','Active','2017-04-08 08:30:19.513000','2017-04-08 08:30:19.513000'),(11,'Golang','Active','2017-04-08 08:30:24.473000','2017-04-08 08:30:24.473000'),(12,'Typescript','Active','2017-04-08 08:49:35.745000','2017-04-08 08:49:35.745000'),(13,'Spring','Active','2017-04-08 09:22:12.899000','2017-04-08 09:22:12.899000'),(14,'Hibernate','Active','2017-04-08 09:22:17.182000','2017-04-08 09:22:17.182000');
/*!40000 ALTER TABLE `myapp_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-31 22:04:10
