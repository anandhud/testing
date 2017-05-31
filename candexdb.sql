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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add email templates',7,'add_emailtemplates'),(20,'Can change email templates',7,'change_emailtemplates'),(21,'Can delete email templates',7,'delete_emailtemplates'),(22,'Can add skills',8,'add_skills'),(23,'Can change skills',8,'change_skills'),(24,'Can delete skills',8,'delete_skills'),(25,'Can add candidate offer',9,'add_candidateoffer'),(26,'Can change candidate offer',9,'change_candidateoffer'),(27,'Can delete candidate offer',9,'delete_candidateoffer'),(28,'Can add panel members directory',10,'add_panelmembersdirectory'),(29,'Can change panel members directory',10,'change_panelmembersdirectory'),(30,'Can delete panel members directory',10,'delete_panelmembersdirectory'),(31,'Can add candidate skill',11,'add_candidateskill'),(32,'Can change candidate skill',11,'change_candidateskill'),(33,'Can delete candidate skill',11,'delete_candidateskill'),(34,'Can add panellist',12,'add_panellist'),(35,'Can change panellist',12,'change_panellist'),(36,'Can delete panellist',12,'delete_panellist'),(37,'Can add candidate personal',13,'add_candidatepersonal'),(38,'Can change candidate personal',13,'change_candidatepersonal'),(39,'Can delete candidate personal',13,'delete_candidatepersonal'),(40,'Can add candidate cost',14,'add_candidatecost'),(41,'Can change candidate cost',14,'change_candidatecost'),(42,'Can delete candidate cost',14,'delete_candidatecost'),(43,'Can add courses',15,'add_courses'),(44,'Can change courses',15,'change_courses'),(45,'Can delete courses',15,'delete_courses'),(46,'Can add candidate education',16,'add_candidateeducation'),(47,'Can change candidate education',16,'change_candidateeducation'),(48,'Can delete candidate education',16,'delete_candidateeducation'),(49,'Can add candidate',17,'add_candidate'),(50,'Can change candidate',17,'change_candidate'),(51,'Can delete candidate',17,'delete_candidate'),(52,'Can add resume',18,'add_resume'),(53,'Can change resume',18,'change_resume'),(54,'Can delete resume',18,'delete_resume'),(55,'Can add interview level',19,'add_interviewlevel'),(56,'Can change interview level',19,'change_interviewlevel'),(57,'Can delete interview level',19,'delete_interviewlevel'),(58,'Can add position',20,'add_position'),(59,'Can change position',20,'change_position'),(60,'Can delete position',20,'delete_position'),(61,'Can add interview round',21,'add_interviewround'),(62,'Can change interview round',21,'change_interviewround'),(63,'Can delete interview round',21,'delete_interviewround'),(64,'Can add request',22,'add_request'),(65,'Can change request',22,'change_request'),(66,'Can delete request',22,'delete_request'),(67,'Can add designation',23,'add_designation'),(68,'Can change designation',23,'change_designation'),(69,'Can delete designation',23,'delete_designation'),(70,'Can add engagement actions',24,'add_engagementactions'),(71,'Can change engagement actions',24,'change_engagementactions'),(72,'Can delete engagement actions',24,'delete_engagementactions'),(73,'Can add candidate process',25,'add_candidateprocess'),(74,'Can change candidate process',25,'change_candidateprocess'),(75,'Can delete candidate process',25,'delete_candidateprocess'),(76,'Can add educational institution',26,'add_educationalinstitution'),(77,'Can change educational institution',26,'change_educationalinstitution'),(78,'Can delete educational institution',26,'delete_educationalinstitution'),(79,'Can add candidate engagement',27,'add_candidateengagement'),(80,'Can change candidate engagement',27,'change_candidateengagement'),(81,'Can delete candidate engagement',27,'delete_candidateengagement'),(82,'Can add candidate professional',28,'add_candidateprofessional'),(83,'Can change candidate professional',28,'change_candidateprofessional'),(84,'Can delete candidate professional',28,'delete_candidateprofessional'),(85,'Can add department',29,'add_department'),(86,'Can change department',29,'change_department'),(87,'Can delete department',29,'delete_department'),(88,'Can add estimates',30,'add_estimates'),(89,'Can change estimates',30,'change_estimates'),(90,'Can delete estimates',30,'delete_estimates'),(91,'Can add source',31,'add_source'),(92,'Can change source',31,'change_source'),(93,'Can delete source',31,'delete_source'),(94,'Can add candidate feedback',32,'add_candidatefeedback'),(95,'Can change candidate feedback',32,'change_candidatefeedback'),(96,'Can delete candidate feedback',32,'delete_candidatefeedback'),(97,'Can add Token',33,'add_token'),(98,'Can change Token',33,'change_token'),(99,'Can delete Token',33,'delete_token');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$Ud3QyNGtBYX0$TqxQ6IPCNtJM9wKs+ddOMfxyXaoV/m9DCIEIRDwpPCg=','2017-04-17 20:31:51.000000',1,'rjain','Rishabh','Jain','Rishabh.Jain@viasat.com',1,1,'2017-04-17 20:31:25.000000'),(2,'pbkdf2_sha256$36000$aW4kTJzBa1tA$sIPpz4lTwCKxnZZGUAzDBPT7rToIW18bEuktzNUisqU=',NULL,0,'panelMembers','','','',0,1,'2017-04-17 20:39:13.472000'),(3,'pbkdf2_sha256$36000$uIbqc7DL8UjY$80rHMiXn7OdMU9PoUD9+TKc4otOO7GwtcENGFsAgglc=',NULL,1,'adhanapal','Anand','D','anandhu.dhanapal@viasat.com',1,1,'2017-04-18 08:30:00.060000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('03eb5388dc2ab19c7fe2c129b12f98f907b5eb3b','2017-04-18 08:30:00.321000',3),('3b4aff5251dd31d16effc19e387e0567f2879bf5','2017-04-17 20:31:26.047000',1),('9fdea328a3937cc8d06cd5f65a16044c559d6fb1','2017-04-17 20:39:13.577000',2);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-04-17 20:39:13.587000','2','panelMembers',1,'[{\"added\": {}}]',4,1),(2,'2017-04-17 20:39:39.450000','1','rjain',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(3,'2017-04-17 20:40:40.956000','1','CAND REQ 12 , CAND 8',1,'[{\"added\": {}}]',27,1),(4,'2017-04-18 06:57:43.518000','1','CAND REQ 12 , CAND 8',3,'',27,1),(5,'2017-04-18 07:00:24.182000','4','CAND REQ 12 , CAND 8',3,'',27,1),(6,'2017-04-18 07:03:10.468000','5','CAND REQ 12 , CAND 8',3,'',27,1),(7,'2017-04-18 07:04:16.576000','7','CAND REQ 12 , CAND 8',3,'',27,1),(8,'2017-04-18 07:19:30.716000','14','REQ 13 , CAND 9 , ENGG-14 , ACTION 6 - Warmup call with Hiring Manager',3,'',27,1),(9,'2017-04-18 07:19:30.726000','12','REQ 12 , CAND 8 , ENGG-12 , ACTION 5 - Connecting through LinkedIn',3,'',27,1),(10,'2017-04-18 07:19:30.729000','10','REQ 12 , CAND 8 , ENGG-10 , ACTION 4 - Resignation confirmation & Schedule Call with Hiring Manager',3,'',27,1),(11,'2017-04-18 07:19:30.734000','8','REQ 12 , CAND 8 , ENGG-8 , ACTION 2 - Email Offer, call & explain offer & benefits to candidate, Also share mobile number',3,'',27,1),(12,'2017-04-18 07:24:21.674000','17','REQ 13 , CAND 9 , ENGG-17 , ACTION 2 - Email Offer, call & explain offer & benefits to candidate, Also share mobile number',3,'',27,1),(13,'2017-04-18 07:24:21.684000','16','REQ 12 , CAND 8 , ENGG-16 , ACTION 2 - Email Offer, call & explain offer & benefits to candidate, Also share mobile number',3,'',27,1),(14,'2017-04-18 07:24:21.689000','15','REQ 12 , CAND 8 , ENGG-15 , ACTION 2 - Email Offer, call & explain offer & benefits to candidate, Also share mobile number',3,'',27,1),(15,'2017-04-18 07:38:03.722000','18','REQ 12 , CAND 8 , ENGG-18 , ACTION 2 - Email Offer, call & explain offer & benefits to candidate, Also share mobile number',3,'',27,1),(16,'2017-04-18 07:58:26.998000','22','REQ 12 , CAND 8 , ENGG-22 , ACTION 6 - Warmup call with Hiring Manager',3,'',27,1),(17,'2017-04-18 07:58:27.010000','21','REQ 12 , CAND 8 , ENGG-21 , ACTION 6 - Warmup call with Hiring Manager',3,'',27,1),(18,'2017-04-18 07:58:27.018000','20','REQ 12 , CAND 8 , ENGG-20 , ACTION 6 - Warmup call with Hiring Manager',3,'',27,1),(19,'2017-04-18 07:58:27.023000','19','REQ 12 , CAND 8 , ENGG-19 , ACTION 2 - Email Offer, call & explain offer & benefits to candidate, Also share mobile number',3,'',27,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(33,'authtoken','token'),(5,'contenttypes','contenttype'),(17,'myapp','candidate'),(14,'myapp','candidatecost'),(16,'myapp','candidateeducation'),(27,'myapp','candidateengagement'),(32,'myapp','candidatefeedback'),(9,'myapp','candidateoffer'),(13,'myapp','candidatepersonal'),(25,'myapp','candidateprocess'),(28,'myapp','candidateprofessional'),(11,'myapp','candidateskill'),(15,'myapp','courses'),(29,'myapp','department'),(23,'myapp','designation'),(26,'myapp','educationalinstitution'),(7,'myapp','emailtemplates'),(24,'myapp','engagementactions'),(30,'myapp','estimates'),(19,'myapp','interviewlevel'),(21,'myapp','interviewround'),(12,'myapp','panellist'),(10,'myapp','panelmembersdirectory'),(20,'myapp','position'),(22,'myapp','request'),(18,'myapp','resume'),(8,'myapp','skills'),(31,'myapp','source'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-04-17 20:31:04.716000'),(2,'auth','0001_initial','2017-04-17 20:31:05.394000'),(3,'admin','0001_initial','2017-04-17 20:31:05.555000'),(4,'admin','0002_logentry_remove_auto_add','2017-04-17 20:31:05.573000'),(5,'contenttypes','0002_remove_content_type_name','2017-04-17 20:31:05.689000'),(6,'auth','0002_alter_permission_name_max_length','2017-04-17 20:31:05.767000'),(7,'auth','0003_alter_user_email_max_length','2017-04-17 20:31:05.830000'),(8,'auth','0004_alter_user_username_opts','2017-04-17 20:31:05.861000'),(9,'auth','0005_alter_user_last_login_null','2017-04-17 20:31:05.933000'),(10,'auth','0006_require_contenttypes_0002','2017-04-17 20:31:05.933000'),(11,'auth','0007_alter_validators_add_error_messages','2017-04-17 20:31:05.965000'),(12,'auth','0008_alter_user_username_max_length','2017-04-17 20:31:06.043000'),(13,'authtoken','0001_initial','2017-04-17 20:31:06.159000'),(14,'authtoken','0002_auto_20160226_1747','2017-04-17 20:31:06.291000'),(15,'myapp','0001_initial','2017-04-17 20:31:10.704000'),(16,'sessions','0001_initial','2017-04-17 20:31:10.798000'),(17,'myapp','0002_auto_20170418_1249','2017-04-18 07:20:08.840000'),(18,'myapp','0003_auto_20170418_1250','2017-04-18 07:20:08.949000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cqz847c19305wkwp95u7odjcchdragaq','MjVlMWUzZWUzYmUxOWQ1NzFmZjk0NDNiYjQ1N2U4MWNlZTVhNmEwODp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwMmI2MjNlMmNhODY3ZjNhNTNhZDNjMjFjZmNlYzMzMjI5YTkzNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-01 20:31:51.300000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidate`
--

DROP TABLE IF EXISTS `myapp_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidate` (
  `candidateID` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `dropReason` varchar(50) DEFAULT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `recruiter_id` varchar(150) NOT NULL,
  `requestID_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`candidateID`),
  KEY `myapp_candidate_recruiter_id_a7deb22f_fk_auth_user_username` (`recruiter_id`),
  KEY `myapp_candidate_requestID_id_9c1fc758_fk_myapp_request_requestID` (`requestID_id`),
  CONSTRAINT `myapp_candidate_recruiter_id_a7deb22f_fk_auth_user_username` FOREIGN KEY (`recruiter_id`) REFERENCES `auth_user` (`username`),
  CONSTRAINT `myapp_candidate_requestID_id_9c1fc758_fk_myapp_request_requestID` FOREIGN KEY (`requestID_id`) REFERENCES `myapp_request` (`requestID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidate`
--

LOCK TABLES `myapp_candidate` WRITE;
/*!40000 ALTER TABLE `myapp_candidate` DISABLE KEYS */;
INSERT INTO `myapp_candidate` VALUES (8,'Active',NULL,'2017-04-08 13:07:56.771000','2017-04-14 13:50:14.599000','rjain',12),(9,'Active','','2017-04-10 07:35:13.029000','2017-04-10 07:35:13.029000','rjain',13),(11,'Active',NULL,'2017-04-10 08:08:30.712000','2017-04-14 13:59:45.790000','rjain',13),(12,'Active','','2017-04-10 08:21:56.315000','2017-04-10 08:21:56.315000','rjain',14),(13,'Active','','2017-04-10 08:34:59.196000','2017-04-10 08:34:59.196000','rjain',13),(14,'Active','','2017-04-10 08:44:50.094000','2017-04-10 08:44:50.094000','rjain',15),(15,'Active','','2017-04-10 08:53:27.476000','2017-04-10 08:53:27.476000','rjain',14),(16,'Active',NULL,'2017-04-12 14:33:16.377000','2017-04-14 13:57:58.147000','rjain',17),(17,'Active','','2017-04-12 20:12:03.927000','2017-04-12 20:12:03.927000','rjain',17),(18,'',NULL,'2017-04-14 09:10:16.161000','2017-04-14 14:47:25.956000','rjain',12);
/*!40000 ALTER TABLE `myapp_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidatecost`
--

DROP TABLE IF EXISTS `myapp_candidatecost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidatecost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relocationCost` bigint(20) DEFAULT NULL,
  `settlingCost` bigint(20) DEFAULT NULL,
  `joiningBonus` bigint(20) DEFAULT NULL,
  `agencyCost` bigint(20) DEFAULT NULL,
  `referralCost` bigint(20) DEFAULT NULL,
  `salary` bigint(20) DEFAULT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  CONSTRAINT `myapp_candidatecost_candidateID_id_189bb2cf_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidatecost`
--

LOCK TABLES `myapp_candidatecost` WRITE;
/*!40000 ALTER TABLE `myapp_candidatecost` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_candidatecost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidateeducation`
--

DROP TABLE IF EXISTS `myapp_candidateeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidateeducation` (
  `educationID` int(11) NOT NULL AUTO_INCREMENT,
  `gpa` double DEFAULT NULL,
  `graduationYear` int(11) DEFAULT NULL,
  `graduationType` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  `courseName_id` varchar(50) DEFAULT NULL,
  `institutionName_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`educationID`),
  KEY `myapp_candidateeduca_candidateID_id_0f82d7f3_fk_myapp_can` (`candidateID_id`),
  KEY `myapp_candidateeduca_courseName_id_0fe88181_fk_myapp_cou` (`courseName_id`),
  KEY `myapp_candidateeduca_institutionName_id_fee29191_fk_myapp_edu` (`institutionName_id`),
  CONSTRAINT `myapp_candidateeduca_candidateID_id_0f82d7f3_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`),
  CONSTRAINT `myapp_candidateeduca_courseName_id_0fe88181_fk_myapp_cou` FOREIGN KEY (`courseName_id`) REFERENCES `myapp_courses` (`courseName`),
  CONSTRAINT `myapp_candidateeduca_institutionName_id_fee29191_fk_myapp_edu` FOREIGN KEY (`institutionName_id`) REFERENCES `myapp_educationalinstitution` (`institutionName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidateeducation`
--

LOCK TABLES `myapp_candidateeducation` WRITE;
/*!40000 ALTER TABLE `myapp_candidateeducation` DISABLE KEYS */;
INSERT INTO `myapp_candidateeducation` VALUES (6,NULL,NULL,'','2017-04-08 13:07:56.778000','2017-04-08 13:07:56.778000',8,NULL,NULL),(7,NULL,NULL,'','2017-04-10 07:35:13.037000','2017-04-10 07:35:13.037000',9,NULL,NULL),(8,NULL,NULL,'','2017-04-10 08:08:30.724000','2017-04-10 08:08:30.724000',11,NULL,NULL),(9,NULL,NULL,'','2017-04-10 08:21:56.334000','2017-04-10 08:21:56.334000',12,NULL,NULL),(10,NULL,NULL,'','2017-04-10 08:34:59.213000','2017-04-10 08:34:59.213000',13,NULL,NULL),(11,NULL,NULL,'','2017-04-10 08:44:50.100000','2017-04-10 08:44:50.100000',14,NULL,NULL),(12,NULL,NULL,'','2017-04-10 08:53:27.491000','2017-04-10 08:53:27.491000',15,NULL,NULL),(13,NULL,NULL,'','2017-04-12 14:33:16.393000','2017-04-12 14:33:16.394000',16,NULL,NULL),(14,NULL,NULL,'','2017-04-12 20:12:03.937000','2017-04-12 20:12:03.937000',17,NULL,NULL),(15,NULL,NULL,'','2017-04-14 09:10:16.179000','2017-04-14 09:10:16.179000',18,NULL,NULL);
/*!40000 ALTER TABLE `myapp_candidateeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidateengagement`
--

DROP TABLE IF EXISTS `myapp_candidateengagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidateengagement` (
  `engagementID` int(11) NOT NULL AUTO_INCREMENT,
  `responsibilityHolder` varchar(100) NOT NULL,
  `dueDate` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `action_id` int(11) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`engagementID`),
  KEY `myapp_candidateengag_candidateID_id_b71b1e1d_fk_myapp_can` (`candidateID_id`),
  KEY `myapp_candidateengagement_action_id_094b0350` (`action_id`),
  CONSTRAINT `myapp_candidateengag_action_id_094b0350_fk_myapp_eng` FOREIGN KEY (`action_id`) REFERENCES `myapp_engagementactions` (`actionID`),
  CONSTRAINT `myapp_candidateengag_candidateID_id_b71b1e1d_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidateengagement`
--

LOCK TABLES `myapp_candidateengagement` WRITE;
/*!40000 ALTER TABLE `myapp_candidateengagement` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_candidateengagement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidatefeedback`
--

DROP TABLE IF EXISTS `myapp_candidatefeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidatefeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext,
  `secretKey` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  CONSTRAINT `myapp_candidatefeedb_candidateID_id_078f260d_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidatefeedback`
--

LOCK TABLES `myapp_candidatefeedback` WRITE;
/*!40000 ALTER TABLE `myapp_candidatefeedback` DISABLE KEYS */;
INSERT INTO `myapp_candidatefeedback` VALUES (1,NULL,'zkQxWJKgd16YxZ0ZcxwCz5TkFwcKDFGH0tjZ','',8);
/*!40000 ALTER TABLE `myapp_candidatefeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidateoffer`
--

DROP TABLE IF EXISTS `myapp_candidateoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidateoffer` (
  `offerID` int(11) NOT NULL AUTO_INCREMENT,
  `joiningDate` date DEFAULT NULL,
  `hiringDecisionDate` date DEFAULT NULL,
  `offerDate` date DEFAULT NULL,
  `offerTT` int(11) DEFAULT NULL,
  `offerStatus` varchar(200) DEFAULT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`offerID`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  CONSTRAINT `myapp_candidateoffer_candidateID_id_cc012e51_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidateoffer`
--

LOCK TABLES `myapp_candidateoffer` WRITE;
/*!40000 ALTER TABLE `myapp_candidateoffer` DISABLE KEYS */;
INSERT INTO `myapp_candidateoffer` VALUES (1,'2017-04-25','2017-04-10','2017-04-15',NULL,'','2017-04-10 17:54:45.817000','2017-04-10 17:56:56.415000',8),(2,'2017-05-10','2017-04-10','2017-04-20',NULL,'','2017-04-10 18:10:50.276000','2017-04-10 18:11:21.893000',11),(3,'2017-05-25','2017-04-11','2017-05-05',NULL,'','2017-04-10 19:56:31.729000','2017-04-10 19:58:51.790000',14),(4,NULL,'2017-04-13',NULL,NULL,'','2017-04-12 20:08:13.127000','2017-04-12 20:08:13.127000',16);
/*!40000 ALTER TABLE `myapp_candidateoffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidatepersonal`
--

DROP TABLE IF EXISTS `myapp_candidatepersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidatepersonal` (
  `personalID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `gender` varchar(50) NOT NULL,
  `currentAddress` varchar(1000) NOT NULL,
  `permanentAddress` varchar(1000) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`personalID`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  CONSTRAINT `myapp_candidateperso_candidateID_id_72015ec8_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidatepersonal`
--

LOCK TABLES `myapp_candidatepersonal` WRITE;
/*!40000 ALTER TABLE `myapp_candidatepersonal` DISABLE KEYS */;
INSERT INTO `myapp_candidatepersonal` VALUES (7,'Lars','Ulrich',NULL,9810736142,'lu425@gmail.com','Male','California','California','2017-04-08 13:07:56.776000','2017-04-15 10:36:11.084000',8),(8,'James','Hetfield',NULL,9087654321,'jh123@gmail.com','Male','Boston','Boston','2017-04-10 07:35:13.033000','2017-04-15 20:33:05.572000',9),(11,'John','Doe',NULL,9810736142,'jd405@gmail.com','Male','Las Vegas','Las Vegas','2017-04-10 08:21:56.324000','2017-04-10 08:21:56.324000',12),(12,'Phoebe','Buffay','2017-04-10',7890123456,'pb123@gmail.com','Female','Srilanka','Srilanka','2017-04-10 08:29:06.099000','2017-04-10 08:29:06.099000',11),(13,'Monica','Gellar',NULL,9870654321,'mg123@gmail.com','Female','Kanpur','Kanpur','2017-04-10 08:34:59.207000','2017-04-10 08:34:59.207000',13),(14,'Ross','Gellar',NULL,9087654321,'rg123@gmail.com','Male','Siberia','Siberia','2017-04-10 08:44:50.097000','2017-04-10 08:44:50.097000',14),(15,'Amy','Farrah Fowler',NULL,7982345612,'aff123@gmail.com','Female','Bangladesh','Bangladesh','2017-04-10 08:53:27.478000','2017-04-10 08:53:27.478000',15),(16,'Leonard','Hofstader',NULL,8901234567,'lh123@gmail.com','Male','Malaysia','Malaysia','2017-04-12 14:33:16.389000','2017-04-12 14:33:16.389000',16),(17,'Peter','Dinklage',NULL,8901234876,'pd123@gmail.com','Male','Winterfell','Winterfell','2017-04-12 20:12:03.932000','2017-04-12 20:12:03.932000',17),(18,'Anushree','Sharma',NULL,7896543211,'as123@gmail.com','Female','India','India','2017-04-14 09:10:16.169000','2017-04-14 14:08:09.825000',18);
/*!40000 ALTER TABLE `myapp_candidatepersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidateprocess`
--

DROP TABLE IF EXISTS `myapp_candidateprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidateprocess` (
  `processID` int(11) NOT NULL AUTO_INCREMENT,
  `processStart` datetime(6) DEFAULT NULL,
  `processStatus` varchar(200) NOT NULL,
  `processAge` int(11) DEFAULT NULL,
  `lastInterviewStatus` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  `source_id` varchar(100) DEFAULT NULL,
  `team_id` varchar(100) DEFAULT NULL,
  `title_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`processID`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  KEY `myapp_candidateprocess_source_id_fa642b1d_fk_myapp_source_source` (`source_id`),
  KEY `myapp_candidateproce_team_id_7d280e1a_fk_myapp_dep` (`team_id`),
  KEY `myapp_candidateproce_title_id_16cc5aef_fk_myapp_des` (`title_id`),
  CONSTRAINT `myapp_candidateproce_candidateID_id_de8fb084_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`),
  CONSTRAINT `myapp_candidateproce_team_id_7d280e1a_fk_myapp_dep` FOREIGN KEY (`team_id`) REFERENCES `myapp_department` (`departmentName`),
  CONSTRAINT `myapp_candidateproce_title_id_16cc5aef_fk_myapp_des` FOREIGN KEY (`title_id`) REFERENCES `myapp_designation` (`designation`),
  CONSTRAINT `myapp_candidateprocess_source_id_fa642b1d_fk_myapp_source_source` FOREIGN KEY (`source_id`) REFERENCES `myapp_source` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidateprocess`
--

LOCK TABLES `myapp_candidateprocess` WRITE;
/*!40000 ALTER TABLE `myapp_candidateprocess` DISABLE KEYS */;
INSERT INTO `myapp_candidateprocess` VALUES (6,'2017-04-08 00:30:00.000000','Joining Date Set',NULL,'','2017-04-08 13:07:56.788000','2017-04-15 20:55:06.817000',8,'Hackerrank',NULL,NULL),(7,'2017-04-11 15:04:35.260000','Started',NULL,'','2017-04-10 07:35:13.042000','2017-04-11 15:04:35.275000',9,'Monster.com',NULL,NULL),(8,'2017-04-10 17:57:31.000000','Joining Date Set',NULL,'','2017-04-10 08:08:30.734000','2017-04-15 20:55:06.831000',11,'Naukri.com',NULL,NULL),(9,'2017-04-11 14:55:34.463000','Started',NULL,'','2017-04-10 08:21:56.346000','2017-04-11 14:55:34.510000',12,'Mind Select',NULL,NULL),(10,'2017-04-12 10:38:26.501000','LEVEL 2 Completed',NULL,'','2017-04-10 08:34:59.234000','2017-04-15 20:18:09.632000',13,'Mind Select',NULL,NULL),(11,'2017-04-10 19:41:21.000000','Joining Date Set',NULL,'','2017-04-10 08:44:50.105000','2017-04-15 20:55:06.846000',14,'Monster.com',NULL,NULL),(12,'2017-04-11 18:14:21.968000','Started',NULL,'','2017-04-10 08:53:27.506000','2017-04-11 18:14:22.014000',15,'Hackerrank',NULL,NULL),(13,'2017-04-12 20:01:18.000000','Hiring Date Set',NULL,'','2017-04-12 14:33:16.399000','2017-04-15 20:55:06.853000',16,'Hackerrank',NULL,NULL),(14,'2017-04-12 20:21:00.522000','Final Level Not Cleared',NULL,'','2017-04-12 20:12:03.947000','2017-04-15 20:20:23.923000',17,'Naukri.com',NULL,NULL),(15,NULL,'',NULL,'','2017-04-14 09:10:16.191000','2017-04-14 14:46:55.195000',18,'Naukri.com',NULL,NULL);
/*!40000 ALTER TABLE `myapp_candidateprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidateprofessional`
--

DROP TABLE IF EXISTS `myapp_candidateprofessional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidateprofessional` (
  `professionalID` int(11) NOT NULL AUTO_INCREMENT,
  `currentEmployer` varchar(100) NOT NULL,
  `currentDesignation` varchar(100) NOT NULL,
  `currentCTC` varchar(50) NOT NULL,
  `experienceYear` double DEFAULT NULL,
  `experienceMonth` double DEFAULT NULL,
  `resume` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`professionalID`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  CONSTRAINT `myapp_candidateprofe_candidateID_id_b2e3d6fb_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidateprofessional`
--

LOCK TABLES `myapp_candidateprofessional` WRITE;
/*!40000 ALTER TABLE `myapp_candidateprofessional` DISABLE KEYS */;
INSERT INTO `myapp_candidateprofessional` VALUES (6,'Amazon','Software Engineer I','15 lacs',5,0,'','2017-04-08 13:07:56.783000','2017-04-08 13:07:56.783000',8),(7,'Facebook','Software Engineer I','10 lacs',5,7,'','2017-04-10 07:35:13.040000','2017-04-10 07:35:13.040000',9),(8,'Microsoft','Software Engineer I','12 lacs',3,5,'','2017-04-10 08:08:30.726000','2017-04-10 08:08:30.726000',11),(9,'Facebook','Software Engineer I','15 lacs',5,0,'','2017-04-10 08:21:56.341000','2017-04-10 08:21:56.342000',12),(10,'Amazon','Software Engineer I','10 lacs',4,0,'','2017-04-10 08:34:59.219000','2017-04-10 08:34:59.219000',13),(11,'Uber','Software Engineer I','8 Lacs',7,4,'','2017-04-10 08:44:50.102000','2017-04-10 08:44:50.102000',14),(12,'Flipkart','Software Engineer I','7 lacs',6,0,'','2017-04-10 08:53:27.494000','2017-04-10 08:53:27.494000',15),(13,'Educomp','Software Engineer I','5 lacs',4,0,'','2017-04-12 14:33:16.396000','2017-04-12 14:33:16.396000',16),(14,'Microsoft','Software Engineer I','8 Lacs',5,0,'','2017-04-12 20:12:03.942000','2017-04-12 20:12:03.942000',17),(15,'ViaSat','Software Engineer I','15 lacs',5,0,'','2017-04-14 09:10:16.186000','2017-04-14 09:10:16.186000',18);
/*!40000 ALTER TABLE `myapp_candidateprofessional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_candidateskill`
--

DROP TABLE IF EXISTS `myapp_candidateskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_candidateskill` (
  `skillID` int(11) NOT NULL AUTO_INCREMENT,
  `skillSet` varchar(200) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`skillID`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  CONSTRAINT `myapp_candidateskill_candidateID_id_87570e6c_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_candidateskill`
--

LOCK TABLES `myapp_candidateskill` WRITE;
/*!40000 ALTER TABLE `myapp_candidateskill` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_candidateskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_courses`
--

DROP TABLE IF EXISTS `myapp_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_courses` (
  `courseID` int(11) NOT NULL AUTO_INCREMENT,
  `courseName` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`courseID`),
  UNIQUE KEY `courseName` (`courseName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_courses`
--

LOCK TABLES `myapp_courses` WRITE;
/*!40000 ALTER TABLE `myapp_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_department`
--

DROP TABLE IF EXISTS `myapp_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_department` (
  `departmentID` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(100) NOT NULL,
  `departmentManager` varchar(100) NOT NULL,
  `departmentManagerEmail` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`departmentID`),
  UNIQUE KEY `departmentName` (`departmentName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_department`
--

LOCK TABLES `myapp_department` WRITE;
/*!40000 ALTER TABLE `myapp_department` DISABLE KEYS */;
INSERT INTO `myapp_department` VALUES (1,'Sys','Vijay','vijay123@viasat.com','Active','2017-04-08 08:01:03.836000','2017-04-08 08:01:03.836000'),(2,'App','Rasanth','rasanth123@viasat.com','Active','2017-04-08 08:01:10.558000','2017-04-08 08:01:10.558000');
/*!40000 ALTER TABLE `myapp_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_designation`
--

DROP TABLE IF EXISTS `myapp_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_designation` (
  `designationID` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`designationID`),
  UNIQUE KEY `designation` (`designation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_designation`
--

LOCK TABLES `myapp_designation` WRITE;
/*!40000 ALTER TABLE `myapp_designation` DISABLE KEYS */;
INSERT INTO `myapp_designation` VALUES (1,'Software Developer I','Active','2017-04-08 08:01:21.411000','2017-04-08 08:01:21.411000'),(2,'Software Developer II','Active','2017-04-08 08:01:23.868000','2017-04-08 08:01:23.871000'),(3,'Software Developer III','Active','2017-04-08 08:01:26.456000','2017-04-08 08:01:26.456000');
/*!40000 ALTER TABLE `myapp_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_educationalinstitution`
--

DROP TABLE IF EXISTS `myapp_educationalinstitution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_educationalinstitution` (
  `institutionID` int(11) NOT NULL AUTO_INCREMENT,
  `institutionName` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`institutionID`),
  UNIQUE KEY `institutionName` (`institutionName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_educationalinstitution`
--

LOCK TABLES `myapp_educationalinstitution` WRITE;
/*!40000 ALTER TABLE `myapp_educationalinstitution` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_educationalinstitution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_emailtemplates`
--

DROP TABLE IF EXISTS `myapp_emailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_emailtemplates` (
  `templateID` int(11) NOT NULL AUTO_INCREMENT,
  `templateName` varchar(50) NOT NULL,
  `emailSubject` varchar(100) NOT NULL,
  `emailBody` longtext NOT NULL,
  `cc` varchar(50) DEFAULT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`templateID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_emailtemplates`
--

LOCK TABLES `myapp_emailtemplates` WRITE;
/*!40000 ALTER TABLE `myapp_emailtemplates` DISABLE KEYS */;
INSERT INTO `myapp_emailtemplates` VALUES (1,'Request Creation','New Request Created Successfully!','<p>Hello to all,</p>\n\n<p>A new requisition&nbsp;with the following details was created:</p>\n\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"1\">\n	<tbody>\n		<tr>\n			<td><strong>Request ID</strong></td>\n			<td>{{requestID}}</td>\n		</tr>\n		<tr>\n			<td><strong>Position</strong></td>\n			<td>{{position}}</td>\n		</tr>\n		<tr>\n			<td><strong>Designation</strong></td>\n			<td>{{designation}}</td>\n		</tr>\n		<tr>\n			<td><strong>Department</strong></td>\n			<td>{{departmentName}}</td>\n		</tr>\n		<tr>\n			<td><strong>Hiring Manager</strong></td>\n			<td>{{departmentManager}}</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>',NULL,'2017-04-08 08:37:27.278000','2017-04-08 12:28:55.495000'),(2,'Request Updation','Request Updated Successfully!','<p>Hello to all,</p>\n\n<p>Please find the details below for the updated request:</p>\n\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"1\">\n	<tbody>\n		<tr>\n			<td><strong>Request ID</strong></td>\n			<td>{{requestID}}</td>\n		</tr>\n		<tr>\n			<td><strong>Position</strong></td>\n			<td>{{position}}</td>\n		</tr>\n		<tr>\n			<td><strong>Designation</strong></td>\n			<td>{{designation}}</td>\n		</tr>\n		<tr>\n			<td><strong>Department</strong></td>\n			<td>{{departmentName}}</td>\n		</tr>\n		<tr>\n			<td><strong>Hiring Manager</strong></td>\n			<td>{{departmentManager}}</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>',NULL,'2017-04-08 11:00:49.083000','2017-04-08 12:29:23.176000'),(3,'Candidate F2F Interview','Interview Scheduled at ViaSat Inc.','<p>Hi {{candidate.firstName candidate.lastName&nbsp;}}</p>\n\n<p>Your interview is scheduled for {{interviewDate}}, {{interviewStartTime}}.&nbsp;Below is our office address.</p>\n\n<p><strong>ViaSat India</strong></p>\n\n<p><strong>SP Infocity, Module 1 and 2, </strong></p>\n\n<p><strong>5th Floor, Block C, No 40 MGR&nbsp;Salai </strong></p>\n\n<p><strong>Perungudi, Chennai 600 097</strong></p>\n\n<p>&nbsp;</p>\n\n<p><em>Here is some additional information to get you familiar with ViaSat &ndash; </em></p>\n\n<p>&nbsp;</p>\n\n<p>ViaSat produces innovative satellite and other wireless communication products that enable fast, secure, and efficient communications to any location. It specializes in engineering creative ways to connect consumers, enterprises, and governments to communication applications that improve productivity, quality of life &ndash; and even safety &ndash; when terrestrial networks are not practical, cost effective, or able to provide a high-quality service. Thanks to the big leaps we make in performance, speed, bandwidth economics, and security, the Company has won numerous awards for its innovation leadership. We have assembled one of the broadest portfolios of technologies in the industry, providing our technical staff with the ability to innovate at every possible point of the systems they create. Please visit <a href=\"http://www.viasat.com\" target=\"_blank\">www.viasat.com</a>.</p>\n\n<p>&nbsp;</p>\n\n<p>ViaSat India&rsquo;s Research &amp; Development center at Chennai is slightly over a year now and has &nbsp;recently moved into a swanky office of 30,000 Sq.ft capacity at S.P. Infocity, Chennai. You have an opportunity to be a part of this growing R&amp;D center.&nbsp;Opportunities at ViaSat in Chennai include <em>Development &amp; Test Automation roles</em> in of <em>wireless network devices, network virtualization products, network management systems and business applications</em>. We are seeking to add to our knowledge base by hiring only the best and the brightest who enjoy working with people and have a technical mind that excels when being challenged and have strong Computer Science fundamentals (including Data Structures).</p>\n\n<p>&nbsp;</p>\n\n<p>ViaSat Global Facts:</p>\n\n<ol style=\"list-style-type:upper-roman\">\n	<li>ViaSat was founded in 1986 by three engineers, Mark Dankberg, Mark Miller, and Steve Hart. Dankberg is the Chairman and CEO, and Miller and Hart are Chief Technology Officers. It is Headquartered in San Diego, California.</li>\n	<li>It began trading as a public company on the NASDAQ Stock Market in December 1996 under the symbol VSAT</li>\n	<li>Over 3,700 employees worldwide</li>\n	<li>&nbsp;ViaSat &ndash; 1 sets the Guinness record for having the world&rsquo;s highest capacity communications satellite</li>\n	<li>FY16&nbsp; Revenue $1.48B</li>\n</ol>\n\n<p>&nbsp;</p>\n\n<p><em>ViaSat in News:</em></p>\n\n<p><a href=\"https://urldefense.proofpoint.com/v2/url?u=http-3A__spacenews.com_viasat-2Dwilling-2Dto-2Dbet-2Dbig-2Don-2Dsuper-2Dhigh-2Dthroughput-2Dsatellites_&amp;d=BQMFaQ&amp;c=jcv3orpCsv7C4ly8-ubDob57ycZ4jvhoYZNDBA06fPk&amp;r=VVs9hrIO8Ke8QEoZ_rJ6_DFhZNjXYYvOHJ5IRa-ATZA&amp;m=bxY4EERy-6LrWkPOojX79GfUgxyDIImxr_3PL22ODgU&amp;s=-UA8KdARs4RBWXFR1FQGNK3COetzcIpWHg4oXjENfFo&amp;e=\" target=\"_blank\">ViaSat Willing To Bet Big on Super-high-throughput Satellites</a></p>\n\n<p><a href=\"https://urldefense.proofpoint.com/v2/url?u=http-3A__spacenews.com_viasat-2Dceo-2Ddiscusses-2Din-2Dflight-2Dconnectivity-2Don-2Dcnbcs-2Dmad-2Dmoney_&amp;d=BQMFaQ&amp;c=jcv3orpCsv7C4ly8-ubDob57ycZ4jvhoYZNDBA06fPk&amp;r=VVs9hrIO8Ke8QEoZ_rJ6_DFhZNjXYYvOHJ5IRa-ATZA&amp;m=bxY4EERy-6LrWkPOojX79GfUgxyDIImxr_3PL22ODgU&amp;s=qWPOuDfRmPc-fln4f59GGd_xochhNj0UGDso-BXrvuo&amp;e=\" target=\"_blank\">VIDEO | Dankberg Discusses ViaSat&rsquo;s In-flight Connectivity Efforts</a></p>',NULL,'2017-04-08 11:02:06.319000','2017-04-08 11:02:06.319000'),(4,'Candidate WebEx Interview','Interview Scheduled at ViaSat Inc.','<p>Hi {{candidate.firstName candidate.lastName&nbsp;}}</p>\n\n<p>Your interview is scheduled for {{interviewDate}}, {{interviewStartTime}}</p>\n\n<p><strong>To start or join a meeting, you will need to download &amp; install the WebEx Meeting Center application. Please do this at least 15 minutes before your interview start time under support &agrave; downloads &agrave; Meeting center application. <em>Please choose your OS before starting the installation.</em></strong></p>\n\n<p><a href=\"https://viasat.webex.com/mw3000/mywebex/default.do?siteurl=viasat\"><strong>https://viasat.webex.com/mw3000/mywebex/default.do?siteurl=viasat</strong></a></p>\n\n<p>&nbsp;</p>\n\n<p><em>Here is some additional information to get you familiar with ViaSat &ndash; </em></p>\n\n<p>&nbsp;</p>\n\n<p>ViaSat produces innovative satellite and other wireless communication products that enable fast, secure, and efficient communications to any location. It specializes in engineering creative ways to connect consumers, enterprises, and governments to communication applications that improve productivity, quality of life &ndash; and even safety &ndash; when terrestrial networks are not practical, cost effective, or able to provide a high-quality service. Thanks to the big leaps we make in performance, speed, bandwidth economics, and security, the Company has won numerous awards for its innovation leadership. We have assembled one of the broadest portfolios of technologies in the industry, providing our technical staff with the ability to innovate at every possible point of the systems they create. Please visit <a href=\"http://www.viasat.com\" target=\"_blank\">www.viasat.com</a>.</p>\n\n<p>&nbsp;</p>\n\n<p>ViaSat India&rsquo;s Research &amp; Development center at Chennai is slightly over a year now and has recently moved into a swanky office of 30,000 Sq.ft capacity at S.P. Infocity, Chennai. You have an opportunity to be a part of this growing R&amp;D center.&nbsp;Opportunities at ViaSat in Chennai include <em>Development &amp; Test Automation roles</em> in of <em>wireless network devices, network virtualization products, network management systems and business applications</em>. We are seeking to add to our knowledge base by hiring only the best and the brightest who enjoy working with people and have a technical mind that excels when being challenged and have strong Computer Science fundamentals (including Data Structures).</p>\n\n<p>&nbsp;</p>\n\n<p>ViaSat Global Facts:</p>\n\n<ol style=\"list-style-type:upper-roman\">\n	<li>ViaSat was founded in 1986 by three engineers, Mark Dankberg, Mark Miller, and Steve Hart. Dankberg is the Chairman and CEO, and Miller and Hart are Chief Technology Officers. It is Headquartered in San Diego, California.</li>\n	<li>It began trading as a public company on the NASDAQ Stock Market in December 1996 under the symbol VSAT</li>\n	<li>Over 3,700 employees worldwide</li>\n	<li>&nbsp;ViaSat &ndash; 1 sets the Guinness record for having the world&rsquo;s highest capacity communications satellite</li>\n	<li>FY16&nbsp; Revenue $1.48B</li>\n</ol>\n\n<p>&nbsp;</p>\n\n<p><em>ViaSat in News:</em></p>\n\n<p><a href=\"https://urldefense.proofpoint.com/v2/url?u=http-3A__spacenews.com_viasat-2Dwilling-2Dto-2Dbet-2Dbig-2Don-2Dsuper-2Dhigh-2Dthroughput-2Dsatellites_&amp;d=BQMFaQ&amp;c=jcv3orpCsv7C4ly8-ubDob57ycZ4jvhoYZNDBA06fPk&amp;r=VVs9hrIO8Ke8QEoZ_rJ6_DFhZNjXYYvOHJ5IRa-ATZA&amp;m=bxY4EERy-6LrWkPOojX79GfUgxyDIImxr_3PL22ODgU&amp;s=-UA8KdARs4RBWXFR1FQGNK3COetzcIpWHg4oXjENfFo&amp;e=\" target=\"_blank\">ViaSat Willing To Bet Big on Super-high-throughput Satellites</a></p>\n\n<p><a href=\"https://urldefense.proofpoint.com/v2/url?u=http-3A__spacenews.com_viasat-2Dceo-2Ddiscusses-2Din-2Dflight-2Dconnectivity-2Don-2Dcnbcs-2Dmad-2Dmoney_&amp;d=BQMFaQ&amp;c=jcv3orpCsv7C4ly8-ubDob57ycZ4jvhoYZNDBA06fPk&amp;r=VVs9hrIO8Ke8QEoZ_rJ6_DFhZNjXYYvOHJ5IRa-ATZA&amp;m=bxY4EERy-6LrWkPOojX79GfUgxyDIImxr_3PL22ODgU&amp;s=qWPOuDfRmPc-fln4f59GGd_xochhNj0UGDso-BXrvuo&amp;e=\" target=\"_blank\">VIDEO | Dankberg Discusses ViaSat&rsquo;s In-flight Connectivity Efforts</a></p>\n\n<p>&nbsp;</p>\n\n<p><strong><em>Kindly acknowledge this email to confirm your availability.</em></strong></p>',NULL,'2017-04-08 11:03:54.775000','2017-04-08 11:03:54.775000'),(5,'Candidate Telephonic Interview','Interview Scheduled at ViaSat Inc.','<p>Hi {{candidate.firstName candidate.lastName&nbsp;}}</p>\n\n<p>Your interview is scheduled for {{interviewDate}}, {{interviewStartTime}}</p>\n\n<p><em>Here is some additional information to get you familiar with ViaSat &ndash; </em></p>\n\n<p>ViaSat produces innovative satellite and other wireless communication products that enable fast, secure, and efficient communications to any location. It specializes in engineering creative ways to connect consumers, enterprises, and governments to communication applications that improve productivity, quality of life &ndash; and even safety &ndash; when terrestrial networks are not practical, cost effective, or able to provide a high-quality service. Thanks to the big leaps we make in performance, speed, bandwidth economics, and security, the Company has won numerous awards for its innovation leadership. We have assembled one of the broadest portfolios of technologies in the industry, providing our technical staff with the ability to innovate at every possible point of the systems they create. Please visit www.viasat.com.</p>\n\n<p>&nbsp;</p>\n\n<p>ViaSat India&rsquo;s Research &amp; Development center at Chennai is slightly over a year now and has &nbsp;recently moved into a swanky office of 30,000 Sq.ft capacity at S.P. Infocity, Chennai. You have an opportunity to be a part of this growing R&amp;D center.&nbsp;Opportunities at ViaSat in Chennai include <em>Development &amp; Test Automation roles</em> in of <em>wireless network devices, network virtualization products, network management systems and business applications</em>. We are seeking to add to our knowledge base by hiring only the best and the brightest who enjoy working with people and have a technical mind that excels when being challenged and have strong Computer Science fundamentals (including Data Structures).</p>\n\n<p>ViaSat Global Facts:</p>\n\n<ol style=\"list-style-type:upper-roman\">\n	<li>ViaSat was founded in 1986 by three engineers, Mark Dankberg, Mark Miller, and Steve Hart. Dankberg is the Chairman and CEO, and Miller and Hart are Chief Technology Officers. It is Headquartered in San Diego, California.</li>\n	<li>It began trading as a public company on the NASDAQ Stock Market in December 1996 under the symbol VSAT</li>\n	<li>Over 3,700 employees worldwide</li>\n	<li>&nbsp;ViaSat &ndash; 1 sets the Guinness record for having the world&rsquo;s highest capacity communications satellite</li>\n	<li>FY16&nbsp; Revenue $1.48B</li>\n</ol>\n\n<p><em>ViaSat in News:</em></p>\n\n<p><a href=\"https://urldefense.proofpoint.com/v2/url?u=http-3A__spacenews.com_viasat-2Dwilling-2Dto-2Dbet-2Dbig-2Don-2Dsuper-2Dhigh-2Dthroughput-2Dsatellites_&amp;d=BQMFaQ&amp;c=jcv3orpCsv7C4ly8-ubDob57ycZ4jvhoYZNDBA06fPk&amp;r=VVs9hrIO8Ke8QEoZ_rJ6_DFhZNjXYYvOHJ5IRa-ATZA&amp;m=bxY4EERy-6LrWkPOojX79GfUgxyDIImxr_3PL22ODgU&amp;s=-UA8KdARs4RBWXFR1FQGNK3COetzcIpWHg4oXjENfFo&amp;e=\" target=\"_blank\">ViaSat Willing To Bet Big on Super-high-throughput Satellites</a></p>\n\n<p><a href=\"https://urldefense.proofpoint.com/v2/url?u=http-3A__spacenews.com_viasat-2Dceo-2Ddiscusses-2Din-2Dflight-2Dconnectivity-2Don-2Dcnbcs-2Dmad-2Dmoney_&amp;d=BQMFaQ&amp;c=jcv3orpCsv7C4ly8-ubDob57ycZ4jvhoYZNDBA06fPk&amp;r=VVs9hrIO8Ke8QEoZ_rJ6_DFhZNjXYYvOHJ5IRa-ATZA&amp;m=bxY4EERy-6LrWkPOojX79GfUgxyDIImxr_3PL22ODgU&amp;s=qWPOuDfRmPc-fln4f59GGd_xochhNj0UGDso-BXrvuo&amp;e=\" target=\"_blank\">VIDEO | Dankberg Discusses ViaSat&rsquo;s In-flight Connectivity Efforts</a></p>\n\n<p>&nbsp;</p>\n\n<p><strong><em>Kindly acknowledge this email to confirm your availability. </em></strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>',NULL,'2017-04-08 11:07:46.199000','2017-04-08 11:07:46.200000'),(6,'Schedule Interview','Interview Scheduled','<p>Hi {{panellistName}},</p>\n\n<p>An Interview has been scheduled for a candidate named <strong>{{candidateName}}&nbsp;</strong>with you. Interview Details are given below:</p>\n\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"1\">\n	<tbody>\n		<tr>\n			<td><strong>Level Number</strong></td>\n			<td>{{levelOfInterview}}</td>\n		</tr>\n		<tr>\n			<td><strong>Round Number</strong></td>\n			<td>Round {{roundNumber}}</td>\n		</tr>\n		<tr>\n			<td><strong>Interview Date</strong></td>\n			<td>{{interviewDate}}</td>\n		</tr>\n		<tr>\n			<td><strong>Interview Time</strong></td>\n			<td>{{interviewStartTime}} - {{interviewFinishTime}}</td>\n		</tr>\n		<tr>\n			<td><strong>Mode Of Interview</strong></td>\n			<td>{{modeOfInterview}}</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Use the below URL&#39;s for filling feedback for&nbsp;{{candidateName}}&nbsp;and viewing Notes from other panellists :</p>\n\n<p><strong>Feedback URL</strong> - {{feedbackURL}}</p>',NULL,'2017-04-08 13:25:41.414000','2017-04-08 13:25:41.414000'),(7,'Interview Reminder','Interview Reminder','<p>Hi {{panellistName}}</p>\n\n<p>This mail is to remind you that {{previousPanel}} taken <strong>{{candidateName}}&#39;s&nbsp;</strong>interview. You can now proceed with the interview process further.&nbsp;</p>\n\n<p>Use the below URL&#39;s for filling feedback for&nbsp;{{candidateName}}&nbsp;and viewing Notes from other panellists :</p>\n\n<p><strong>Feedback URL</strong> - {{feedbackURL}}</p>',NULL,'2017-04-08 13:27:47.012000','2017-04-14 14:02:30.827000'),(8,'Interview Feedback Reminder','Feedback Reminder','<p>Hello&nbsp;{{panellistName}}</p>\n\n<p>Your feedback for <strong>{{candidateName}}</strong>&#39;s interview on&nbsp;<strong>{{interviewDate}}</strong> is pending.</p>\n\n<p>Kindly submit the same at the earliest using the URL shared previously.</p>',NULL,'2017-04-12 12:05:20.927000','2017-04-12 14:42:52.098000'),(9,'Send Offer Reminder','Send Offer Reminder','<p>Hello All,</p>\n\n<p>This mail is to remind you that the Job Offer for <strong>{{candidateName}}&nbsp;</strong>has been pending for <strong>{{noOfPendingDays}}</strong>&nbsp;days.</p>\n\n<p>Please contanct {{candidateName}} for the same. Contact Details are given below :</p>\n\n<table border=\"1\" cellpadding=\"10\" cellspacing=\"1\">\n	<tbody>\n		<tr>\n			<td><strong>Mobile No.</strong></td>\n			<td>{{mobile}}</td>\n		</tr>\n		<tr>\n			<td><strong>Email ID</strong></td>\n			<td>{{email}}</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>',NULL,'2017-04-14 18:28:27.869000','2017-04-14 20:04:34.594000');
/*!40000 ALTER TABLE `myapp_emailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `myapp_estimates`
--

DROP TABLE IF EXISTS `myapp_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_estimates` (
  `estimatesID` int(11) NOT NULL AUTO_INCREMENT,
  `noOfResumesToScreen` int(11) DEFAULT NULL,
  `noOfHoursPerOpening` int(11) DEFAULT NULL,
  `noOfDaysInProcess` int(11) DEFAULT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `position_id` varchar(200) NOT NULL,
  PRIMARY KEY (`estimatesID`),
  UNIQUE KEY `position_id` (`position_id`),
  CONSTRAINT `myapp_estimates_position_id_2aa8115f_fk_myapp_position_position` FOREIGN KEY (`position_id`) REFERENCES `myapp_position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_estimates`
--

LOCK TABLES `myapp_estimates` WRITE;
/*!40000 ALTER TABLE `myapp_estimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_interviewlevel`
--

DROP TABLE IF EXISTS `myapp_interviewlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_interviewlevel` (
  `levelID` int(11) NOT NULL AUTO_INCREMENT,
  `levelOfInterview` varchar(100) NOT NULL,
  `interviewDate` date DEFAULT NULL,
  `firstNoShowDate` date DEFAULT NULL,
  `secondNoShowDate` date DEFAULT NULL,
  `levelDecision` varchar(100) NOT NULL,
  `levelTT` int(11) DEFAULT NULL,
  `isFinal` tinyint(1) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`levelID`),
  KEY `myapp_interviewlevel_candidateID_id_e4cf5a60_fk_myapp_can` (`candidateID_id`),
  CONSTRAINT `myapp_interviewlevel_candidateID_id_e4cf5a60_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_interviewlevel`
--

LOCK TABLES `myapp_interviewlevel` WRITE;
/*!40000 ALTER TABLE `myapp_interviewlevel` DISABLE KEYS */;
INSERT INTO `myapp_interviewlevel` VALUES (1,'LEVEL 1','2017-04-10',NULL,NULL,'Cleared',NULL,1,'2017-04-08 13:40:45.655000','2017-04-15 20:20:00.041000',8),(2,'LEVEL 1','2017-04-10',NULL,NULL,'Cleared',NULL,1,'2017-04-10 17:57:56.329000','2017-04-15 20:19:43.002000',11),(3,'LEVEL 1','2017-04-11',NULL,NULL,'Cleared',NULL,1,'2017-04-10 19:41:39.769000','2017-04-15 20:19:02.161000',14),(4,'LEVEL 1','2017-04-17',NULL,NULL,'Scheduled',NULL,0,'2017-04-11 14:55:56.030000','2017-04-11 14:56:20.360000',12),(5,'LEVEL 2','2017-04-20',NULL,NULL,'Scheduled',NULL,1,'2017-04-11 14:59:28.230000','2017-04-11 14:59:28.230000',12),(6,'LEVEL 1','2017-04-14',NULL,NULL,'Scheduled',NULL,0,'2017-04-11 15:04:48.529000','2017-04-11 15:04:48.529000',9),(7,'LEVEL 2','2017-04-17',NULL,NULL,'Scheduled',NULL,1,'2017-04-11 15:14:08.752000','2017-04-11 15:14:08.752000',9),(8,'LEVEL 1','2017-04-13',NULL,NULL,'Scheduled',NULL,0,'2017-04-11 18:29:42.066000','2017-04-11 18:29:42.066000',15),(9,'LEVEL 2','2017-04-14',NULL,NULL,'Scheduled',NULL,0,'2017-04-11 18:34:46.073000','2017-04-11 18:34:46.073000',15),(10,'LEVEL 1','2017-04-12',NULL,NULL,'Completed',NULL,0,'2017-04-12 10:38:37.126000','2017-04-15 20:18:09.629000',13),(11,'LEVEL 2','2017-04-12',NULL,NULL,'Completed',NULL,0,'2017-04-12 10:45:58.680000','2017-04-15 20:18:09.632000',13),(12,'LEVEL 3','2017-04-21',NULL,NULL,'Scheduled',NULL,0,'2017-04-12 10:54:41.640000','2017-04-12 10:54:41.640000',13),(13,'US LEVEL','2017-04-26',NULL,NULL,'Scheduled',NULL,1,'2017-04-12 14:16:12.899000','2017-04-12 14:16:12.899000',13),(14,'LEVEL 1','2017-04-13',NULL,NULL,'Cleared',NULL,1,'2017-04-12 20:01:32.337000','2017-04-15 20:18:37.054000',16),(15,'LEVEL 1','2017-04-15',NULL,NULL,'Not Cleared',NULL,1,'2017-04-15 06:50:39.211000','2017-04-15 20:20:23.870000',17);
/*!40000 ALTER TABLE `myapp_interviewlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_interviewround`
--

DROP TABLE IF EXISTS `myapp_interviewround`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_interviewround` (
  `roundID` int(11) NOT NULL AUTO_INCREMENT,
  `roundNumber` int(11) DEFAULT NULL,
  `interviewDate` date DEFAULT NULL,
  `modeOfInterview` varchar(100) NOT NULL,
  `interviewStartTime` time(6) DEFAULT NULL,
  `interviewFinishTime` time(6) DEFAULT NULL,
  `roundDecision` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `levelID_id` int(11) NOT NULL,
  PRIMARY KEY (`roundID`),
  KEY `myapp_interviewround_levelID_id_7d8c6ce4_fk_myapp_int` (`levelID_id`),
  CONSTRAINT `myapp_interviewround_levelID_id_7d8c6ce4_fk_myapp_int` FOREIGN KEY (`levelID_id`) REFERENCES `myapp_interviewlevel` (`levelID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_interviewround`
--

LOCK TABLES `myapp_interviewround` WRITE;
/*!40000 ALTER TABLE `myapp_interviewround` DISABLE KEYS */;
INSERT INTO `myapp_interviewround` VALUES (1,1,'2017-04-10','F2F','13:00:00.000000','14:00:00.000000','Recommend','2017-04-08 13:42:07.731000','2017-04-10 17:54:21.136000',1),(2,1,'2017-04-10','WEBEX','13:00:00.000000','14:00:00.000000','Recommend','2017-04-10 17:58:23.142000','2017-04-10 18:10:35.552000',2),(3,1,'2017-04-11','TEL','00:00:00.000000','01:13:00.000000','Recommend','2017-04-10 19:42:13.869000','2017-04-10 19:56:21.584000',3),(4,1,'2017-04-17','F2F','13:00:00.000000','14:00:00.000000','Scheduled','2017-04-11 14:56:37.897000','2017-04-11 14:56:37.897000',4),(5,2,'2017-04-17','WEB EX','14:00:00.000000','15:00:00.000000','Scheduled','2017-04-11 14:57:18.906000','2017-04-11 14:58:44.973000',4),(6,1,'2017-04-20','WEB EX','13:00:00.000000','14:00:00.000000','Scheduled','2017-04-11 14:59:53.570000','2017-04-11 14:59:53.570000',5),(7,1,'2017-04-14','F2F','13:00:00.000000','14:00:00.000000','Scheduled','2017-04-11 15:05:11.021000','2017-04-11 15:05:11.022000',6),(8,2,'2017-04-17','F2F','15:00:00.000000','16:00:00.000000','Scheduled','2017-04-11 15:09:41.025000','2017-04-11 15:09:41.025000',6),(9,1,'2017-04-17','WEB EX','13:00:00.000000','14:00:00.000000','Scheduled','2017-04-11 15:14:35.130000','2017-04-12 14:17:18.216000',7),(10,1,'2017-04-13','F2F','13:00:00.000000','13:30:00.000000','Scheduled','2017-04-11 18:30:23.947000','2017-04-11 18:30:23.947000',8),(11,1,'2017-04-14','WEB EX','16:00:00.000000','17:30:00.000000','Scheduled','2017-04-11 18:35:14.100000','2017-04-11 18:35:14.100000',9),(12,2,'2017-04-14','F2F','16:00:00.000000','17:00:00.000000','Scheduled','2017-04-11 18:52:01.785000','2017-04-11 18:52:01.785000',9),(13,1,'2017-04-12','F2F','13:00:00.000000','14:00:00.000000','Completed','2017-04-12 10:38:58.667000','2017-04-12 10:41:12.063000',10),(14,1,'2017-04-12','WEB EX','13:00:00.000000','14:00:00.000000','Completed','2017-04-12 10:46:36.414000','2017-04-12 14:17:44.439000',11),(15,1,'2017-04-21','F2F','13:00:00.000000','14:00:00.000000','Scheduled','2017-04-12 10:55:11.363000','2017-04-12 10:55:11.363000',12),(16,2,'2017-04-21','TEL','10:00:00.000000','11:00:00.000000','Scheduled','2017-04-12 13:23:46.849000','2017-04-12 13:23:46.849000',12),(17,1,'2017-04-13','F2F','01:00:00.000000','01:33:00.000000','Recommend','2017-04-12 20:02:19.639000','2017-04-12 20:07:47.487000',14),(18,1,'2017-04-15','WEB EX','17:00:00.000000','18:00:00.000000','Not Recommended','2017-04-15 06:51:10.849000','2017-04-15 17:20:54.377000',15),(19,2,'2017-04-15','WEB EX','16:00:00.000000','17:00:00.000000','Not Recommended','2017-04-15 07:56:34.590000','2017-04-15 17:21:13.823000',15),(20,3,'2017-04-15','TEL','19:00:00.000000','20:00:00.000000','Not Recommended','2017-04-15 13:06:56.375000','2017-04-15 17:21:36.874000',15);
/*!40000 ALTER TABLE `myapp_interviewround` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `myapp_position`
--

DROP TABLE IF EXISTS `myapp_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_position` (
  `positionID` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`positionID`),
  UNIQUE KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_position`
--

LOCK TABLES `myapp_position` WRITE;
/*!40000 ALTER TABLE `myapp_position` DISABLE KEYS */;
INSERT INTO `myapp_position` VALUES (1,'UI Developer','Active','2017-04-08 07:15:19.015000','2017-04-08 07:15:19.015000'),(2,'Web Developer','Active','2017-04-08 07:15:34.508000','2017-04-08 07:15:34.508000'),(3,'Java Developer','Active','2017-04-08 07:15:44.433000','2017-04-08 07:15:44.433000');
/*!40000 ALTER TABLE `myapp_position` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `myapp_resume`
--

DROP TABLE IF EXISTS `myapp_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapp_resume` (
  `resumeID` int(11) NOT NULL AUTO_INCREMENT,
  `resume` varchar(100) NOT NULL,
  `createdDate` datetime(6) NOT NULL,
  `modifiedDate` datetime(6) NOT NULL,
  `candidateID_id` int(11) NOT NULL,
  PRIMARY KEY (`resumeID`),
  UNIQUE KEY `candidateID_id` (`candidateID_id`),
  CONSTRAINT `myapp_resume_candidateID_id_e8a1a239_fk_myapp_can` FOREIGN KEY (`candidateID_id`) REFERENCES `myapp_candidate` (`candidateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_resume`
--

LOCK TABLES `myapp_resume` WRITE;
/*!40000 ALTER TABLE `myapp_resume` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_resume` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2017-05-31 20:17:38
