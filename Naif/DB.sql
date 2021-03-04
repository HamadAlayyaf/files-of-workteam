-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: projects
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `_groups`
--

DROP TABLE IF EXISTS `_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_groups` (
  `id_groups` int(11) NOT NULL AUTO_INCREMENT,
  `name_Groups` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_groups`),
  KEY `id_Groups_fk` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_groups`
--

LOCK TABLES `_groups` WRITE;
/*!40000 ALTER TABLE `_groups` DISABLE KEYS */;
INSERT INTO `_groups` VALUES (1,'t'),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,NULL),(12,'aaaaaaaaaaaaaaaaaaaaaaaaaa'),(13,'allll'),(14,'allll'),(15,'allll');
/*!40000 ALTER TABLE `_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add committees charis',7,'add_committeescharis'),(26,'Can change committees charis',7,'change_committeescharis'),(27,'Can delete committees charis',7,'delete_committeescharis'),(28,'Can view committees charis',7,'view_committeescharis'),(29,'Can add doctors',8,'add_doctors'),(30,'Can change doctors',8,'change_doctors'),(31,'Can delete doctors',8,'delete_doctors'),(32,'Can view doctors',8,'view_doctors'),(33,'Can add evaluation',9,'add_evaluation'),(34,'Can change evaluation',9,'change_evaluation'),(35,'Can delete evaluation',9,'delete_evaluation'),(36,'Can view evaluation',9,'view_evaluation'),(37,'Can add examiners',10,'add_examiners'),(38,'Can change examiners',10,'change_examiners'),(39,'Can delete examiners',10,'delete_examiners'),(40,'Can view examiners',10,'view_examiners'),(41,'Can add groups',11,'add_groups'),(42,'Can change groups',11,'change_groups'),(43,'Can delete groups',11,'delete_groups'),(44,'Can view groups',11,'view_groups'),(45,'Can add projects',12,'add_projects'),(46,'Can change projects',12,'change_projects'),(47,'Can delete projects',12,'delete_projects'),(48,'Can view projects',12,'view_projects'),(49,'Can add students',13,'add_students'),(50,'Can change students',13,'change_students'),(51,'Can delete students',13,'delete_students'),(52,'Can view students',13,'view_students'),(53,'Can add department',14,'add_department'),(54,'Can change department',14,'change_department'),(55,'Can delete department',14,'delete_department'),(56,'Can view department',14,'view_department'),(57,'Can add department',15,'add_department'),(58,'Can change department',15,'change_department'),(59,'Can delete department',15,'delete_department'),(60,'Can view department',15,'view_department'),(61,'Can add examiners',16,'add_examiners'),(62,'Can change examiners',16,'change_examiners'),(63,'Can delete examiners',16,'delete_examiners'),(64,'Can view examiners',16,'view_examiners'),(65,'Can add doctors',17,'add_doctors'),(66,'Can change doctors',17,'change_doctors'),(67,'Can delete doctors',17,'delete_doctors'),(68,'Can view doctors',17,'view_doctors'),(69,'Can add groups',18,'add_groups'),(70,'Can change groups',18,'change_groups'),(71,'Can delete groups',18,'delete_groups'),(72,'Can view groups',18,'view_groups'),(73,'Can add students',19,'add_students'),(74,'Can change students',19,'change_students'),(75,'Can delete students',19,'delete_students'),(76,'Can view students',19,'view_students'),(77,'Can add department',20,'add_department'),(78,'Can change department',20,'change_department'),(79,'Can delete department',20,'delete_department'),(80,'Can view department',20,'view_department'),(81,'Can add evaluation',21,'add_evaluation'),(82,'Can change evaluation',21,'change_evaluation'),(83,'Can delete evaluation',21,'delete_evaluation'),(84,'Can view evaluation',21,'view_evaluation'),(85,'Can add groups',22,'add_groups'),(86,'Can change groups',22,'change_groups'),(87,'Can delete groups',22,'delete_groups'),(88,'Can view groups',22,'view_groups'),(89,'Can add examiners',23,'add_examiners'),(90,'Can change examiners',23,'change_examiners'),(91,'Can delete examiners',23,'delete_examiners'),(92,'Can view examiners',23,'view_examiners'),(93,'Can add projects',24,'add_projects'),(94,'Can change projects',24,'change_projects'),(95,'Can delete projects',24,'delete_projects'),(96,'Can view projects',24,'view_projects');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$bEFqtTyNcHhy$+VvCoNC8KNFJ+FrwPglyW4EDV54QRBGVAv0uQPsFuSc=','2021-02-18 11:25:15.560112',1,'h3','','','',1,1,'2021-02-18 11:24:50.846476'),(2,'pbkdf2_sha256$216000$YfFgdzRmja3b$1/kjyVuuRiXKp2K+nPwuLLbve91Z8X96Q40YWsQ80fY=','2021-02-20 18:14:03.960621',1,'hamad','','','',1,1,'2021-02-20 18:12:57.170698'),(3,'pbkdf2_sha256$216000$0mrt5waVVNwu$OblBfM+rd8+WvRTEyLcrTpnOSSduPzroRQWWMx57JwA=','2021-02-21 18:46:38.684236',1,'admin','','','',1,1,'2021-02-21 18:46:16.690818'),(4,'pbkdf2_sha256$216000$N7yoL8BXCQDC$9aq4OmOz5WHE25xN+hd0VBAP479OV0OglYdJYHepx2E=',NULL,0,'438','','','',0,1,'2021-02-28 20:13:52.757494');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committees_charis`
--

DROP TABLE IF EXISTS `committees_charis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committees_charis` (
  `id_committees_charis` int(11) NOT NULL,
  `name_committees_charis` varchar(45) DEFAULT NULL,
  `passwords` varchar(45) DEFAULT NULL,
  `id_department_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_committees_charis`),
  KEY `id_committees_charis_fk` (`id_committees_charis`),
  KEY `id_depart_fk_idx` (`id_department_fk`),
  CONSTRAINT `id_depart_fk` FOREIGN KEY (`id_department_fk`) REFERENCES `department` (`id_department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committees_charis`
--

LOCK TABLES `committees_charis` WRITE;
/*!40000 ALTER TABLE `committees_charis` DISABLE KEYS */;
INSERT INTO `committees_charis` VALUES (1,'sultan','123',1),(2,'faisal','123',2),(3,'mohammed','123',3);
/*!40000 ALTER TABLE `committees_charis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id_department` int(11) NOT NULL AUTO_INCREMENT,
  `name_department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_department`),
  KEY `id_department_fk` (`id_department`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'CS'),(2,'IT'),(3,'IS');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-02-20 18:14:29.853933','1','CS',1,'[{\"added\": {}}]',15,2),(2,'2021-02-20 18:15:22.435928','12','saleh',1,'[{\"added\": {}}]',17,2),(3,'2021-02-20 18:22:53.622374','12','saleh',1,'[{\"added\": {}}]',17,2),(4,'2021-02-20 19:53:00.535134','1','CS',1,'[{\"added\": {}}]',20,2),(5,'2021-02-20 19:53:48.571138','2','IT',1,'[{\"added\": {}}]',20,2),(6,'2021-02-20 19:54:00.003940','3','IS',1,'[{\"added\": {}}]',20,2),(7,'2021-02-20 19:55:43.721541','1','sultan',1,'[{\"added\": {}}]',7,2),(8,'2021-02-20 19:56:02.797469','2','faisal',1,'[{\"added\": {}}]',7,2),(9,'2021-02-20 19:56:24.768254','3','mohammed',1,'[{\"added\": {}}]',7,2),(10,'2021-02-20 20:00:24.066578','1','1',1,'[{\"added\": {}}]',22,2),(11,'2021-02-20 20:00:57.875036','438006941','438006941',1,'[{\"added\": {}}]',19,2),(12,'2021-02-20 20:01:37.473342','438010648','438010648',1,'[{\"added\": {}}]',19,2),(13,'2021-02-20 20:02:17.963174','438000519','438000519',1,'[{\"added\": {}}]',19,2),(14,'2021-02-20 20:03:03.512011','438009200','438009200',1,'[{\"added\": {}}]',19,2),(15,'2021-02-20 20:03:48.129277','12','saleh',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,2),(16,'2021-02-20 20:04:48.650730','3','3',1,'[{\"added\": {}}]',23,2),(17,'2021-02-20 20:05:07.244131','12','saleh',2,'[{\"changed\": {\"fields\": [\"Id examiners fk\"]}}]',17,2),(18,'2021-02-20 20:05:25.853950','12','saleh',2,'[]',17,2),(19,'2021-02-20 20:17:44.209145','2','2',1,'[{\"added\": {}}]',23,2),(20,'2021-02-20 20:18:00.317775','3','3',2,'[{\"changed\": {\"fields\": [\"Name examiners\"]}}]',23,2),(21,'2021-02-20 20:18:46.191704','1','1',1,'[{\"added\": {}}]',21,2),(22,'2021-02-20 20:19:00.364603','2','2',1,'[{\"added\": {}}]',21,2),(23,'2021-02-20 20:35:04.907560','2','saleh',1,'[{\"added\": {}}]',17,2),(24,'2021-02-22 15:01:26.006810','1','1',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(25,'2021-02-22 15:25:17.079599','1','1',2,'[]',22,3),(26,'2021-02-22 15:25:30.176056','12','12',1,'[{\"added\": {}}]',22,3),(27,'2021-02-22 15:25:41.597566','13','13',1,'[{\"added\": {}}]',22,3),(28,'2021-02-22 16:23:58.053874','13','13',3,'',22,3),(29,'2021-02-22 16:24:01.150110','12','12',3,'',22,3),(30,'2021-02-24 14:23:41.845300','2','2',1,'[{\"added\": {}}]',22,3),(31,'2021-02-24 14:45:09.011629','230','fhad',1,'[{\"added\": {}}]',17,3),(32,'2021-02-24 15:23:21.627029','3','3',1,'[{\"added\": {}}]',22,3),(33,'2021-02-26 19:47:08.342962','4','4',1,'[{\"added\": {}}]',22,3),(34,'2021-02-26 19:47:59.577946','10','naif',1,'[{\"added\": {}}]',17,3),(35,'2021-02-27 16:44:10.508551','10','naif',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,3),(36,'2021-02-27 16:59:51.649656','12','saleh',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,3),(37,'2021-02-27 17:01:09.952880','230','fhad',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',17,3),(38,'2021-02-28 17:24:47.199755','4','4',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(39,'2021-02-28 17:24:52.800200','3','3',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(40,'2021-02-28 17:24:58.220380','2','2',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(41,'2021-02-28 17:25:01.782704','1','1',2,'[]',22,3),(42,'2021-02-28 20:13:53.013472','4','438',1,'[{\"added\": {}}]',4,3),(43,'2021-03-01 09:22:35.219727','0','0',1,'[{\"added\": {}}]',19,3),(44,'2021-03-01 16:20:39.265923','0','ali',1,'[{\"added\": {}}]',17,3),(45,'2021-03-02 15:35:35.746474','1','1',2,'[{\"changed\": {\"fields\": [\"Id groups\", \"Name groups\", \"Idea groups\", \"Idea fescription\", \"Idea speciallty\"]}}]',22,3),(46,'2021-03-02 15:35:52.971056','1','1',3,'',22,3),(47,'2021-03-02 15:36:28.179208','1','1',1,'[{\"added\": {}}]',24,3),(48,'2021-03-02 15:37:07.728942','2','2',1,'[{\"added\": {}}]',24,3),(49,'2021-03-02 17:20:34.133056','1','1',2,'[{\"changed\": {\"fields\": [\"Name projects\"]}}]',24,3),(50,'2021-03-02 17:20:45.279355','1','1',2,'[{\"changed\": {\"fields\": [\"Name projects\"]}}]',24,3),(51,'2021-03-02 17:39:29.717826','5','5',3,'',24,3),(52,'2021-03-02 17:39:29.733817','2','2',3,'',24,3),(53,'2021-03-02 17:39:29.761803','1','1',3,'',24,3),(54,'2021-03-02 17:39:29.788799','0','0',3,'',24,3),(55,'2021-03-02 17:39:55.699270','0','0',3,'',24,3),(56,'2021-03-02 17:40:26.930857','0','0',3,'',24,3),(57,'2021-03-02 18:03:36.135604','0','0',3,'',24,3),(58,'2021-03-02 18:10:54.242951','5','5',3,'',24,3),(59,'2021-03-02 18:10:54.274932','2','2',3,'',24,3),(60,'2021-03-02 18:10:54.296933','0','0',3,'',24,3),(61,'2021-03-02 19:12:04.586399','0','0',3,'',19,3),(62,'2021-03-02 19:12:23.749755','0','0',1,'[{\"added\": {}}]',19,3),(63,'2021-03-02 21:15:36.690602','4','4',3,'',22,3),(64,'2021-03-02 21:15:36.700530','3','3',3,'',22,3),(65,'2021-03-02 21:15:36.720291','2','2',3,'',22,3),(66,'2021-03-02 21:16:00.780557','0','0',1,'[{\"added\": {}}]',22,3),(67,'2021-03-02 21:32:58.612658','2','2',1,'[{\"added\": {}}]',22,3),(68,'2021-03-02 21:33:05.207721','3','3',1,'[{\"added\": {}}]',22,3),(69,'2021-03-02 21:46:48.215564','4','4',1,'[{\"added\": {}}]',22,3),(70,'2021-03-02 21:46:55.125244','5','5',1,'[{\"added\": {}}]',22,3),(71,'2021-03-02 22:10:45.471601','5','sss',1,'[{\"added\": {}}]',24,3),(72,'2021-03-02 22:11:07.561810','1','qqqq',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(73,'2021-03-02 22:11:23.451408','5','sss',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(74,'2021-03-02 22:12:02.491478','5','sss',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(75,'2021-03-03 16:03:11.697727','438010649','438010649',1,'[{\"added\": {}}]',19,3),(76,'2021-03-03 16:03:18.821791','438010650','438010650',1,'[{\"added\": {}}]',19,3),(77,'2021-03-03 16:03:28.309408','1','1',2,'[{\"changed\": {\"fields\": [\"Passwords\"]}}]',19,3),(78,'2021-03-03 16:03:40.958127','438010651','438010651',1,'[{\"added\": {}}]',19,3),(79,'2021-03-03 16:04:01.588068','438010651','438010651',3,'',19,3),(80,'2021-03-03 16:04:01.601060','438010650','438010650',3,'',19,3),(81,'2021-03-03 16:04:01.615054','438010649','438010649',3,'',19,3),(82,'2021-03-03 16:04:01.633056','438010648','438010648',3,'',19,3),(83,'2021-03-03 16:04:01.647034','438009200','438009200',3,'',19,3),(84,'2021-03-03 16:04:01.667059','438006941','438006941',3,'',19,3),(85,'2021-03-03 16:04:01.690015','438000519','438000519',3,'',19,3),(86,'2021-03-03 16:04:01.711997','1','1',3,'',19,3),(87,'2021-03-03 16:04:06.296349','438010652','438010652',1,'[{\"added\": {}}]',19,3),(88,'2021-03-03 16:04:15.110623','438010653','438010653',1,'[{\"added\": {}}]',19,3),(89,'2021-03-03 16:05:03.055388','438010654','438010654',1,'[{\"added\": {}}]',19,3),(90,'2021-03-03 16:05:43.954180','438010654','438010654',3,'',19,3),(91,'2021-03-03 16:05:43.969172','438010653','438010653',3,'',19,3),(92,'2021-03-03 16:05:43.994157','438010652','438010652',3,'',19,3),(93,'2021-03-03 16:05:49.398520','438010655','438010655',1,'[{\"added\": {}}]',19,3),(94,'2021-03-03 16:06:00.178235','438010656','438010656',1,'[{\"added\": {}}]',19,3),(95,'2021-03-03 18:03:29.870537','231','ss',1,'[{\"added\": {}}]',17,3),(96,'2021-03-03 18:22:16.594169','438010656','438010656',3,'',19,3),(97,'2021-03-03 18:22:16.621157','438010655','438010655',3,'',19,3),(98,'2021-03-03 18:22:40.115084','438010657','438010657',1,'[{\"added\": {}}]',19,3),(99,'2021-03-03 18:23:41.013471','438010657','438010657',2,'[{\"changed\": {\"fields\": [\"Id groups fk\", \"Id department fk\"]}}]',19,3),(100,'2021-03-03 18:30:59.103556','438010658','438010658',1,'[{\"added\": {}}]',19,3),(101,'2021-03-03 18:34:27.690578','438010657','438010657',2,'[{\"changed\": {\"fields\": [\"Id groups fk\"]}}]',19,3),(102,'2021-03-03 18:38:28.309521','438010658','438010658',3,'',19,3),(103,'2021-03-03 18:38:28.331509','438010657','438010657',3,'',19,3),(104,'2021-03-03 18:45:31.807291','438010659','438010659',1,'[{\"added\": {}}]',19,3),(105,'2021-03-03 18:45:48.075526','438010660','438010660',1,'[{\"added\": {}}]',19,3),(106,'2021-03-03 18:48:05.466578','438010661','438010661',1,'[{\"added\": {}}]',19,3),(107,'2021-03-03 18:48:35.227591','6','6',1,'[{\"added\": {}}]',22,3),(108,'2021-03-03 18:51:13.396003','438010662','438010662',1,'[{\"added\": {}}]',19,3),(109,'2021-03-03 18:57:12.383764','438010663','438010663',1,'[{\"added\": {}}]',19,3),(110,'2021-03-03 18:57:18.654586','438010664','438010664',1,'[{\"added\": {}}]',19,3),(111,'2021-03-03 19:00:32.758376','438010664','438010664',3,'',19,3),(112,'2021-03-03 19:00:32.777366','438010663','438010663',3,'',19,3),(113,'2021-03-03 19:00:32.801360','438010662','438010662',3,'',19,3),(114,'2021-03-03 19:00:32.814347','438010661','438010661',3,'',19,3),(115,'2021-03-03 19:00:32.826395','438010660','438010660',3,'',19,3),(116,'2021-03-03 19:00:32.844328','438010659','438010659',3,'',19,3),(117,'2021-03-03 19:00:32.851343','1','1',3,'',19,3),(118,'2021-03-03 19:00:49.036699','438010665','438010665',1,'[{\"added\": {}}]',19,3),(119,'2021-03-03 20:34:18.278101','438010665','438010665',3,'',19,3),(120,'2021-03-03 20:38:01.403931','234','234',1,'[{\"added\": {}}]',17,3),(121,'2021-03-03 20:38:15.254297','234','234',3,'',17,3),(122,'2021-03-03 20:38:15.270348','231','231',3,'',17,3),(123,'2021-03-03 20:38:15.286300','230','230',3,'',17,3),(124,'2021-03-03 20:38:15.310352','12','12',3,'',17,3),(125,'2021-03-03 20:38:15.318301','10','10',3,'',17,3),(126,'2021-03-03 20:38:15.350355','2','2',3,'',17,3),(127,'2021-03-03 20:38:15.374295','1','1',3,'',17,3),(128,'2021-03-03 20:38:20.554659','235','235',1,'[{\"added\": {}}]',17,3),(129,'2021-03-03 20:38:31.373815','236','236',1,'[{\"added\": {}}]',17,3),(130,'2021-03-03 20:39:57.617819','4','s',1,'[{\"added\": {}}]',20,3),(131,'2021-03-03 20:40:06.096579','4','s',2,'[]',20,3),(132,'2021-03-03 20:40:45.726269','4','4',3,'',20,3),(133,'2021-03-03 20:41:46.341228','236','236',3,'',17,3),(134,'2021-03-03 20:41:46.349253','235','235',3,'',17,3),(135,'2021-03-03 20:43:06.973766','3','3',1,'[{\"added\": {}}]',21,3),(136,'2021-03-03 20:43:12.121381','4','4',1,'[{\"added\": {}}]',21,3),(137,'2021-03-03 20:44:15.229406','0','0',1,'[{\"added\": {}}]',23,3),(138,'2021-03-03 20:44:37.633103','3','3',3,'',23,3),(139,'2021-03-03 20:44:37.649100','2','2',3,'',23,3),(140,'2021-03-03 20:44:37.665142','0','0',3,'',23,3),(141,'2021-03-03 20:44:41.985533','0','0',1,'[{\"added\": {}}]',23,3),(142,'2021-03-03 20:48:50.496319','2','2',1,'[{\"added\": {}}]',23,3),(143,'2021-03-03 20:48:56.723906','3','3',1,'[{\"added\": {}}]',23,3),(144,'2021-03-03 20:51:42.751826','237','237',1,'[{\"added\": {}}]',17,3),(145,'2021-03-03 20:51:53.819159','438010666','438010666',1,'[{\"added\": {}}]',19,3),(146,'2021-03-03 20:52:05.817593','438010667','438010667',1,'[{\"added\": {}}]',19,3),(147,'2021-03-03 20:52:13.582285','438010668','438010668',1,'[{\"added\": {}}]',19,3),(148,'2021-03-03 20:54:49.128865','237','237',3,'',17,3),(149,'2021-03-03 20:54:52.385879','238','238',1,'[{\"added\": {}}]',17,3),(150,'2021-03-03 20:56:31.559538','438010669','438010669',1,'[{\"added\": {}}]',19,3),(151,'2021-03-03 21:02:51.171689','438010669','438010669',3,'',19,3),(152,'2021-03-03 21:02:51.187702','438010668','438010668',3,'',19,3),(153,'2021-03-03 21:02:51.211740','438010667','438010667',3,'',19,3),(154,'2021-03-03 21:02:51.243685','438010666','438010666',3,'',19,3),(155,'2021-03-03 21:03:28.838226','438010670','438010670',3,'',19,3),(156,'2021-03-03 21:07:35.529087','0','0',1,'[{\"added\": {}}]',19,3),(157,'2021-03-03 21:11:06.892928','3','3',1,'[{\"added\": {}}]',19,3),(158,'2021-03-03 21:11:21.101301','4','4',1,'[{\"added\": {}}]',19,3),(159,'2021-03-03 21:11:39.088351','238','238',3,'',17,3),(160,'2021-03-03 21:13:46.397403','2','2',1,'[{\"added\": {}}]',17,3),(161,'2021-03-03 21:14:36.135245','5','5',1,'[{\"added\": {}}]',19,3),(162,'2021-03-03 21:41:05.148986','13','13',3,'',24,3),(163,'2021-03-03 21:41:05.164999','12','12',3,'',24,3),(164,'2021-03-03 21:41:05.173008','11','11',3,'',24,3),(165,'2021-03-03 21:41:05.197027','10','10',3,'',24,3),(166,'2021-03-03 21:41:05.212988','9','9',3,'',24,3),(167,'2021-03-03 21:41:05.228987','8','8',3,'',24,3),(168,'2021-03-03 21:41:05.252958','7','7',3,'',24,3),(169,'2021-03-03 21:41:05.276981','6','6',3,'',24,3),(170,'2021-03-03 21:41:05.292955','5','5',3,'',24,3),(171,'2021-03-03 21:41:05.309017','4','4',3,'',24,3),(172,'2021-03-03 21:41:05.332953','3','3',3,'',24,3),(173,'2021-03-03 21:41:05.365012','2','2',3,'',24,3),(174,'2021-03-03 21:41:05.372989','1','1',3,'',24,3),(175,'2021-03-03 21:45:54.421955','14','14',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(176,'2021-03-03 21:46:26.732212','14','14',2,'[{\"changed\": {\"fields\": [\"File project\"]}}]',24,3),(177,'2021-03-03 21:48:22.737908','14','14',3,'',24,3),(178,'2021-03-03 21:48:29.594843','15','15',1,'[{\"added\": {}}]',24,3),(179,'2021-03-03 21:48:40.039453','15','15',3,'',24,3),(180,'2021-03-03 21:52:14.500261','16','16',3,'',24,3),(181,'2021-03-03 21:52:47.332344','17','17',3,'',24,3),(182,'2021-03-03 22:07:52.108982','2','2',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(183,'2021-03-03 22:09:09.456260','6','6',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(184,'2021-03-03 22:09:14.425832','5','5',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(185,'2021-03-03 22:09:20.893280','4','4',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(186,'2021-03-03 22:09:25.780452','3','3',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(187,'2021-03-03 22:09:29.285208','2','2',2,'[]',22,3),(188,'2021-03-03 22:09:37.757122','1','1',2,'[{\"changed\": {\"fields\": [\"Name groups\"]}}]',22,3),(189,'2021-03-04 10:52:51.530876','3','3',1,'[{\"added\": {}}]',17,3),(190,'2021-03-04 10:52:57.518951','3','3',3,'',17,3),(191,'2021-03-04 10:52:57.540927','2','2',3,'',17,3),(192,'2021-03-04 10:52:57.548918','1','1',3,'',17,3),(193,'2021-03-04 10:53:01.079115','4','4',1,'[{\"added\": {}}]',17,3),(194,'2021-03-04 10:54:08.944228','4','4',3,'',17,3),(195,'2021-03-04 10:54:16.866207','5','5',1,'[{\"added\": {}}]',17,3),(196,'2021-03-04 10:54:22.083977','5','5',3,'',17,3),(197,'2021-03-04 10:56:42.063929','2','2',1,'[{\"added\": {}}]',17,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'committeeChairs','committeescharis'),(14,'committeeChairs','department'),(8,'committeeChairs','doctors'),(9,'committeeChairs','evaluation'),(10,'committeeChairs','examiners'),(11,'committeeChairs','groups'),(12,'committeeChairs','projects'),(13,'committeeChairs','students'),(5,'contenttypes','contenttype'),(20,'Department','department'),(15,'doctors','department'),(17,'doctors','doctors'),(16,'doctors','examiners'),(18,'doctors','groups'),(21,'Evaluation','evaluation'),(23,'Examiners','examiners'),(22,'Groups','groups'),(24,'projects','projects'),(6,'sessions','session'),(19,'students','students');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-02-18 11:22:39.085082'),(2,'auth','0001_initial','2021-02-18 11:22:39.181248'),(3,'admin','0001_initial','2021-02-18 11:22:39.368098'),(4,'admin','0002_logentry_remove_auto_add','2021-02-18 11:22:39.426862'),(5,'admin','0003_logentry_add_action_flag_choices','2021-02-18 11:22:39.435032'),(6,'contenttypes','0002_remove_content_type_name','2021-02-18 11:22:39.492824'),(7,'auth','0002_alter_permission_name_max_length','2021-02-18 11:22:39.526836'),(8,'auth','0003_alter_user_email_max_length','2021-02-18 11:22:39.548109'),(9,'auth','0004_alter_user_username_opts','2021-02-18 11:22:39.557511'),(10,'auth','0005_alter_user_last_login_null','2021-02-18 11:22:39.591163'),(11,'auth','0006_require_contenttypes_0002','2021-02-18 11:22:39.593763'),(12,'auth','0007_alter_validators_add_error_messages','2021-02-18 11:22:39.602735'),(13,'auth','0008_alter_user_username_max_length','2021-02-18 11:22:39.640466'),(14,'auth','0009_alter_user_last_name_max_length','2021-02-18 11:22:39.678461'),(15,'auth','0010_alter_group_name_max_length','2021-02-18 11:22:39.699776'),(16,'auth','0011_update_proxy_permissions','2021-02-18 11:22:39.708652'),(17,'auth','0012_alter_user_first_name_max_length','2021-02-18 11:22:39.743798'),(18,'sessions','0001_initial','2021-02-18 11:22:39.758848'),(19,'committeeChairs','0001_initial','2021-02-20 18:07:37.908255'),(20,'doctors','0001_initial','2021-02-20 18:07:38.101946'),(21,'Department','0001_initial','2021-02-20 18:59:47.416660'),(22,'Evaluation','0001_initial','2021-02-20 18:59:47.477923'),(23,'Examiners','0001_initial','2021-02-20 18:59:47.502203'),(24,'Groups','0001_initial','2021-02-20 18:59:47.568619'),(25,'committeeChairs','0002_auto_20210220_1858','2021-02-20 18:59:47.700956'),(26,'doctors','0002_auto_20210220_1858','2021-02-20 18:59:47.879508'),(27,'projects','0001_initial','2021-02-20 18:59:47.885566'),(28,'students','0001_initial','2021-02-20 18:59:47.890055');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('07l2soqnh1bjhkky4onofssq3rl5afo6','.eJxVjMsOwiAQRf-FtSEUKDN16d5vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yjOYhCn340pPFLdQbxTvTUZWl2XmeWuyIN2eW0xPS-H-3dQqJdvzQZHdqDQEAYmQg1WJRhUNhGUoQguW1asnUUd7WQZx4xTRjDgDFvx_gDQ0Tch:1lChQp:yuX8MlUVc48sbqRULEa5ypaJPVOjW0KZoKw7TTbH0IU','2021-03-04 11:25:15.564004'),('l7yf27f5za868ugkh7knqdgj8bli6v1e','.eJxVjEEOwiAQRe_C2hCGKQO4dO8ZCAxUqoYmpV0Z765NutDtf-_9lwhxW2vYelnClMVZaHH63VLkR2k7yPfYbrPkua3LlOSuyIN2eZ1zeV4O9--gxl6_NUdChV6XYWTPA0SnSZO1o1KciShDQXDeZWQN1qAxjpz1UEAhECXx_gDBizZe:1lDWlX:pKio-RkR6OewLLvlmo0Y9OyoLLV_dumacNGGXUsZJLQ','2021-03-06 18:14:03.966145'),('z5d0mj1l4klmjvpsd3rzueu2ai2eav3u','.eJxVjMsOwiAQRf-FtSFCGWhduvcbmoGZSlUg6WNl_Hch6UJzV_d13mLEfYvjvvIyziQuohOn38xjeHJuBT0w34sMJW_L7GWbyKNd5a0Qv67H9g8QcY31bSGAgon5DJOrMhN4Rdr0GKpTgwbXK_JkOrbWW81KuaEjsKQH1sFUaMNlTFxpqURMiUl8vhDfP4E:1lHlal:OYFncYh81WOd-fjx1Mbi2_YUPm0SHzFn0PvBAUzZdf4','2021-03-18 10:52:27.614804');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id_Doctors` int(11) NOT NULL AUTO_INCREMENT,
  `name_Doctors` varchar(45) DEFAULT NULL,
  `passwords` varchar(45) DEFAULT NULL,
  `id_department_fk` int(11) DEFAULT NULL,
  `id_Groups_fk` int(11) DEFAULT NULL,
  `id_Examiners_fk` int(11) DEFAULT NULL,
  `id_bu` int(15) DEFAULT NULL,
  PRIMARY KEY (`id_Doctors`),
  KEY `id_department_fk_idx` (`id_department_fk`),
  KEY `id_Groups_fk_idx` (`id_Groups_fk`),
  KEY `id_Examiners_fk_idx` (`id_Examiners_fk`),
  CONSTRAINT `id_Examiners_fk` FOREIGN KEY (`id_Examiners_fk`) REFERENCES `examiners` (`id_Examiners`),
  CONSTRAINT `id_Groups` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`),
  CONSTRAINT `id_department_fk` FOREIGN KEY (`id_department_fk`) REFERENCES `department` (`id_department`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'zzz',NULL,1,1,NULL,NULL),(2,'x',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `id_Evaluation` int(11) NOT NULL AUTO_INCREMENT,
  `gread_evaluation` varchar(45) DEFAULT NULL,
  `id_Examiners_fk` int(11) DEFAULT NULL,
  `id_Groups_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Evaluation`),
  KEY `id_Evaluation_fk` (`id_Evaluation`),
  KEY `id_grops_fk_idx` (`id_Groups_fk`),
  KEY `id_Examiners_fkk_idx` (`id_Examiners_fk`),
  CONSTRAINT `id_Examiners_fkk` FOREIGN KEY (`id_Examiners_fk`) REFERENCES `examiners` (`id_Examiners`),
  CONSTRAINT `id_grops_fk` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,'90',2,1),(2,'90',3,1),(3,'fff',NULL,NULL),(4,'f',NULL,NULL);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examiners`
--

DROP TABLE IF EXISTS `examiners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examiners` (
  `id_Examiners` int(11) NOT NULL AUTO_INCREMENT,
  `name_Examiners` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Examiners`),
  KEY `id_Examiners` (`id_Examiners`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examiners`
--

LOCK TABLES `examiners` WRITE;
/*!40000 ALTER TABLE `examiners` DISABLE KEYS */;
INSERT INTO `examiners` VALUES (1,'f'),(2,'f'),(3,'d');
/*!40000 ALTER TABLE `examiners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id_Projects` int(11) NOT NULL AUTO_INCREMENT,
  `title_projects` varchar(45) DEFAULT NULL,
  `filled_projects` varchar(45) DEFAULT NULL,
  `descriotion_projects` varchar(45) DEFAULT NULL,
  `id_Groups_fk` int(11) DEFAULT NULL,
  `File_Project` blob,
  PRIMARY KEY (`id_Projects`),
  KEY `id_Group_fkk_idx` (`id_Groups_fk`),
  CONSTRAINT `id_Group_fkk` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'a',NULL,NULL,1,NULL),(2,'b',NULL,NULL,2,NULL),(3,'c',NULL,NULL,2,NULL),(4,'systwm','web-','ththhtyrt',NULL,_binary 'doucment/parallel_dist__assignment_1_dVZTQCJ.docx'),(5,'systwm','web-','ththhtyrt',NULL,_binary 'doucment/parallel_dist__assignment_1_3rI3VCc.docx');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id_Students` int(11) NOT NULL AUTO_INCREMENT,
  `name_Students` varchar(45) DEFAULT NULL,
  `passwords` varchar(45) DEFAULT NULL,
  `id_Groups_fk` int(11) DEFAULT NULL,
  `id_department_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Students`),
  KEY `id_Groups_fk_idx` (`id_Groups_fk`),
  CONSTRAINT `id_Groups_fk` FOREIGN KEY (`id_Groups_fk`) REFERENCES `_groups` (`id_groups`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'a',NULL,NULL,NULL),(2,'c',NULL,1,2),(3,'x',NULL,NULL,NULL),(4,'d',NULL,NULL,NULL),(5,'nnn',NULL,4,2);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 14:04:13
