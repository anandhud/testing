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
-- Table structure for table `myapp_request`
--

DROP TABLE IF EXISTS `myapp_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_request` (
  `requestID` int(11) NOT NULL AUTO_INCREMENT,
  `requestStatus` varchar(100) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `experienceYears` int(11) NOT NULL,
  `experienceMonths` int(11) NOT NULL,
  `position_id` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `department_id` varchar(100) NOT NULL,
  `designation_id` varchar(100) NOT NULL,
  `recruiter_id` varchar(150) NOT NULL,
  PRIMARY KEY (`requestID`),
  KEY `myapp_request_department_id_0db6ac95_fk_myapp_dep` (`department_id`),
  KEY `myapp_request_designation_id_93d34ba7_fk_myapp_des` (`designation_id`),
  KEY `myapp_request_recruiter_id_1759ad8d_fk_auth_user_username` (`recruiter_id`),
  KEY `myapp_request_position_id_53c3faf5` (`position_id`),
  CONSTRAINT `myapp_request_department_id_0db6ac95_fk_myapp_dep` FOREIGN KEY (`department_id`) REFERENCES `myapp_department` (`departmentName`),
  CONSTRAINT `myapp_request_designation_id_93d34ba7_fk_myapp_des` FOREIGN KEY (`designation_id`) REFERENCES `myapp_designation` (`designation`),
  CONSTRAINT `myapp_request_position_id_53c3faf5_fk_myapp_position_position` FOREIGN KEY (`position_id`) REFERENCES `myapp_position` (`position`),
  CONSTRAINT `myapp_request_recruiter_id_1759ad8d_fk_auth_user_username` FOREIGN KEY (`recruiter_id`) REFERENCES `auth_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_request`
--

LOCK TABLES `myapp_request` WRITE;
/*!40000 ALTER TABLE `myapp_request` DISABLE KEYS */;
INSERT INTO `myapp_request` VALUES (12,'Open','Angular,Typescript',5,5,'UI Developer','2017-04-08 12:29:45.700000','2017-04-08 12:30:59.233000','App','Software Developer I','rjain'),(13,'Open','Angular,Python,Django,Typescript',8,0,'Web Developer','2017-04-09 15:38:30.595000','2017-04-09 15:38:30.595000','App','Software Developer II','rjain'),(14,'Open','Java,Spring,Hibernate',8,0,'Java Developer','2017-04-10 08:14:29.646000','2017-04-10 08:14:29.646000','Sys','Software Developer II','rjain'),(15,'Open','Angular,Typescript',5,0,'Web Developer','2017-04-10 08:24:02.941000','2017-04-10 08:24:02.941000','Sys','Software Developer I','rjain'),(16,'Open','Golang,Typescript,Hibernate',8,0,'UI Developer','2017-04-12 13:02:15.495000','2017-04-12 13:02:15.495000','Sys','Software Developer II','rjain'),(17,'Open','Java,Python,Typescript,Spring,Hibernate',5,0,'Java Developer','2017-04-12 13:18:23.597000','2017-04-12 13:18:23.597000','Sys','Software Developer I','rjain');
/*!40000 ALTER TABLE `myapp_request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-31 22:03:36
