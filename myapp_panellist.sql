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
-- Table structure for table `myapp_panellist`
--

DROP TABLE IF EXISTS `myapp_panellist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_panellist` (
  `panellistID` int(11) NOT NULL AUTO_INCREMENT,
  `notes` longtext NOT NULL,
  `comments` longtext NOT NULL,
  `panellistDecision` varchar(100) NOT NULL,
  `secretKey` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `panellistEmail_id` varchar(100) NOT NULL,
  `panellistName_id` varchar(100) NOT NULL,
  `roundID_id` int(11) NOT NULL,
  PRIMARY KEY (`panellistID`),
  KEY `myapp_panellist_panellistEmail_id_4066474a_fk_myapp_pan` (`panellistEmail_id`),
  KEY `myapp_panellist_panellistName_id_b402e004_fk_myapp_pan` (`panellistName_id`),
  KEY `myapp_panellist_roundID_id_3f34d426_fk_myapp_int` (`roundID_id`),
  CONSTRAINT `myapp_panellist_panellistEmail_id_4066474a_fk_myapp_pan` FOREIGN KEY (`panellistEmail_id`) REFERENCES `myapp_panelmembersdirectory` (`memberEmail`),
  CONSTRAINT `myapp_panellist_panellistName_id_b402e004_fk_myapp_pan` FOREIGN KEY (`panellistName_id`) REFERENCES `myapp_panelmembersdirectory` (`memberName`),
  CONSTRAINT `myapp_panellist_roundID_id_3f34d426_fk_myapp_int` FOREIGN KEY (`roundID_id`) REFERENCES `myapp_interviewround` (`roundID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_panellist`
--

LOCK TABLES `myapp_panellist` WRITE;
/*!40000 ALTER TABLE `myapp_panellist` DISABLE KEYS */;
INSERT INTO `myapp_panellist` VALUES (1,'<ol>\n	<li>Data Structure Covered</li>\n	<li>Computer Networks Covered</li>\n	<li>Algorithms covered</li>\n</ol>','<p><strong>Has A good experience in computer networks and operating system.</strong></p>\n\n<p><strong>Lars has Done large number of projects in the field of automation too.</strong></p>','Recommend Hire','SL15NlMnyB0MHmOFNV0QJUKhOZKYCOek2XJ9','InActive','2017-04-08 13:42:07.776000','2017-04-10 17:51:56.206000','anand123@gmail.com','Anandhu Dhanpal',1),(2,'<p><strong>Covered Business logics of the projects done by the Phoebe.</strong></p>\n\n<p><strong>Seems like a good candidate for this Position.</strong></p>','<ol>\n	<li>Has large number of experience in computer networks</li>\n	<li>Has worked in CISCO Before which gives her a edge over other candidates.</li>\n	<li>Has a prior experience in leading a team of 4 members</li>\n</ol>','Recommend Hire','Ez803xrDao4KbuCQRD8LkeoBOL2ttNt3kYCi','InActive','2017-04-10 17:58:23.173000','2017-04-10 18:04:44.869000','rishabh.jain@viasat.com','Rishabh Jain',2),(3,'<ul>\n	<li>Ross has done 4 Google summer of code which is a good thing</li>\n	<li>Ross has been constantly winning hackerrank contest from the last 2 years .</li>\n	<li>Excellent python programming skills</li>\n	<li>definitely YES</li>\n</ul>','<p><strong>HIRE HIM ASAP!</strong></p>\n\n<p><strong>WON&quot;T GET SUCH CANDIDATE EVER...</strong></p>','Recommend Hire','i9kyxnseZHAEbNfLb9wE9joI8YH4ogwP1ByL','InActive','2017-04-10 19:42:13.924000','2017-04-10 19:50:35.420000','shaffath123@viasat.com','Shaffath Zakir Hussain',3),(4,'','','','p2edH0BnWB4S2gyfgsibSRUDksa7hlK3QLQ1','','2017-04-11 14:56:37.934000','2017-04-11 14:56:37.934000','vijay123@gmail.com','Vijay Varma',4),(5,'','','','S82jne3DoqN6KqBu554puwLoppXPRkV4hHc8','','2017-04-11 14:58:44.962000','2017-04-11 14:58:44.962000','shaffath123@viasat.com','Shaffath Zakir Hussain',5),(6,'','','','KSM3v6KiBu7n7j2wb18jdIlqIug7t5qQRHR6','','2017-04-11 14:59:53.606000','2017-04-11 14:59:53.606000','samba123@viasat.com','Sambasiva Reddy',6),(7,'','','','humzsjA0clt1OfCUEYkXTwVRYBoizHgVipv5','','2017-04-11 15:05:11.053000','2017-04-11 15:05:11.053000','vijay123@gmail.com','Vijay Varma',7),(8,'','','','0qp2nEQVKQfw7X7n95AJXBcR0mHir6vko9N0','','2017-04-11 15:09:41.057000','2017-04-11 15:09:41.057000','samba123@viasat.com','Sambasiva Reddy',8),(9,'','','','K0klayl5pTpNkVYVFq7ffqapDVRDQsY602eW','','2017-04-11 15:14:35.165000','2017-04-11 15:14:35.166000','anand123@gmail.com','Anandhu Dhanpal',9),(10,'','','','XldEaDmRubXA5z2n5dPi7gVg4w9u6lfoVBqw','','2017-04-11 18:30:23.997000','2017-04-11 18:30:23.997000','anand123@gmail.com','Anandhu Dhanpal',10),(11,'','','','3RQrZwBOfIIRfzMyamfns2Y31D6524fxME9Z','','2017-04-11 18:30:24.002000','2017-04-11 18:30:24.002000','dinesh123@viasat.com','Dinesh Gaglani',10),(12,'','','','QUgM4YrJYd1o7CKeXXsvo97manqx7SNkpK9R','','2017-04-11 18:35:14.157000','2017-04-11 18:35:14.157000','rasanth123@gmail.com','Rasanth',11),(13,'','','','Q3cNAPFUYblgDWgKQHdVxiz2jvkhYXbdTCz4','','2017-04-11 18:35:14.162000','2017-04-11 18:35:14.162000','venkatesh123@gmail.com','Venkatesh',11),(14,'','','','uXgWGDquVB3BKIcCvaWHjInZgJXB8wKNDXFu','','2017-04-11 18:52:01.825000','2017-04-11 18:52:01.825000','anand123@gmail.com','Anandhu Dhanpal',12),(15,'','','','NghKlzZKiqFNweozvxZhqTXWxQxIHMltrbsr','','2017-04-11 18:52:01.830000','2017-04-11 18:52:01.830000','shaffath123@viasat.com','Shaffath Zakir Hussain',12),(16,'','','','uCTwq1OiD0OUDXadgt9wGMXQHnsNmL5bF0Th','Active','2017-04-12 10:38:58.697000','2017-04-12 10:41:12.060000','samba123@viasat.com','Sambasiva Reddy',13),(17,'<ul>\n	<li>She is GOOOD.</li>\n	<li>&nbsp;</li>\n</ul>','','','lkHpV9GGqVxp8jIGHWlwPFtDNxpwmP0JjojO','Active','2017-04-12 10:46:36.450000','2017-04-12 10:50:13.207000','dinesh123@viasat.com','Dinesh Gaglani',14),(18,'','','','j8D30m5BqOVK0GpjiOD5mEeoMWrJmwMinW2u','','2017-04-12 10:55:11.398000','2017-04-12 10:56:27.268000','venkatesh123@gmail.com','Venkatesh',15),(19,'','','','RHrLQVYPiyOXFn1yijZSYmJjlH7PibTqEUhu','','2017-04-12 13:23:46.891000','2017-04-12 13:23:46.891000','rishabh.jain@viasat.com','Rishabh Jain',16),(20,'','<p>Good Candidate with great potential and has a good experience.</p>','Recommend Hire','Sgquaq7pRdR46PNE9NB6D5trkmFlHmkBPYDV','InActive','2017-04-12 20:02:19.706000','2017-04-12 20:04:16.858000','venkatesh123@gmail.com','Venkatesh',17),(21,'','<p><span style=\"font-size:larger\"><strong>Basic Logics Not Clear.</strong></span></p>','Not Recommended - Explain Below','NpN9Tu02ClsGwUcxOYDRtCAg7X6lkjl3dFq9','InActive','2017-04-15 06:51:10.903000','2017-04-15 16:55:55.392000','dinesh123@viasat.com','Dinesh Gaglani',18),(22,'<p>Always involved in office politics. And has no desire of working for good.</p>','<p>Outsource the code for the project assigned to him. NO GOOD!</p>','Not Recommended - Explain Below','zMGIpwpXCSspJGF4pTjfYzKMWR62Ck1tH2Rk','InActive','2017-04-15 07:56:34.652000','2017-04-15 16:58:57.949000','venkatesh123@gmail.com','Venkatesh',19),(23,'<p>Venkatesh is Right...Doesn&#39;t seem acknowledged&nbsp;about the projects he has worked for.</p>','<p>Has zero knowledge about computer networks.</p>','Not Recommended - Explain Below','FpuD4mL78Nv8PdVx4JPW6uyRk4seWp6F5XiX','InActive','2017-04-15 16:49:19.556000','2017-04-15 17:16:39.708000','rishabh.jain@viasat.com','Rishabh Jain',20);
/*!40000 ALTER TABLE `myapp_panellist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-31 22:02:33
