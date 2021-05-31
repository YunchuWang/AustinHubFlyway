-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: austinhub
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(145) NOT NULL,
  `password` varchar(500) NOT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `idx_account_username` (`username`),
  KEY `idx_account_email` (`email`),
  KEY `roleId_idx` (`roleId`),
  CONSTRAINT `roleId` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

INSERT INTO `account` VALUES (16,'tomcat','yunchuwang5@gmail.com','ninini',6),(17,'asdasd','yunchuwang52@gmail.com','{bcrypt}$2a$10$1MjEMSRDIZ4.zwdbBIGiou8JHkS8s1AD5hkUz9mhzLE6vM9j0RQci',NULL),(18,'asdasdsadsa','yunchuwang51@gmail.com','{bcrypt}$2a$10$anS.xXHsJ7RQpPA0Feq7h.2L2Im18Ee5Ra85Tg7Kzh53UI2AvKlo6',NULL),(21,'test','yunchuwang6@gmail.com','{bcrypt}$2a$10$ufGnVE7pK8QHsyP0q3GUHeU71oZgNyU7EcRYey8uoU2nfyqCr1N8e',7);

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resourceId` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(85) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `categoryId` int NOT NULL,
  `webLink` varchar(1024) DEFAULT NULL,
  `imageLink` varchar(2083) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_id_idx` (`resourceId`),
  KEY `cate_idx` (`categoryId`),
  CONSTRAINT `cate` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` VALUES (1,1,'asd','aasd','asdas','asda',1,'asda','asdas',NULL);

--
-- Table structure for table `booth`
--

DROP TABLE IF EXISTS `booth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resourceId` int DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `email` varchar(85) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `categoryId` int NOT NULL,
  `link` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_id_idx` (`resourceId`),
  KEY `category_relation_id_idx` (`categoryId`),
  CONSTRAINT `category_relation_id` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resource_id` FOREIGN KEY (`resourceId`) REFERENCES `resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booth`
--

INSERT INTO `booth` VALUES (1,1,'hello kitty biscuit','',NULL,'hello@gmail.com','zan',2,NULL),(2,1,'big mac','9193333333',NULL,NULL,'zan',1,NULL),(3,1,'老鸭堂','223-222-2032',NULL,'duckduck@gmail.com','百年老鸭，品质保证',1,NULL);

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) DEFAULT NULL,
  `displayName` varchar(45) DEFAULT NULL,
  `type` enum('ACCT','RESC') DEFAULT 'RESC',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_indx` (`name`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

INSERT INTO `category` VALUES (1,'restaurant','/restaurant','Restaurant','RESC'),(2,'real-estate','/real-estate','Real Estate','RESC'),(3,'home-inspection','/home-inspection','Home Inspection','RESC'),(4,'gardening','/gardening','Gardening','RESC'),(5,'accounting','/accounting','Accounting','RESC'),(6,'law','/law','Law','RESC'),(7,'account-info','info','Account Info','ACCT'),(8,'my-booths','mybooths','My Booths','ACCT'),(9,'my-jobs','myjobs','My Jobs','ACCT'),(10,'my-ads','myads','My Ads','ACCT');

--
-- Table structure for table `category_relation`
--

DROP TABLE IF EXISTS `category_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_relation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_index` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_relation`
--

INSERT INTO `category_relation` VALUES (1,1,2),(2,1,2);

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(650) NOT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(145) DEFAULT NULL,
  `contact` varchar(45) NOT NULL,
  `categoryId` int NOT NULL,
  `resourceId` int NOT NULL,
  `companyLink` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resId_idx` (`resourceId`),
  KEY `catId_idx` (`categoryId`),
  CONSTRAINT `catId` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`),
  CONSTRAINT `resId` FOREIGN KEY (`resourceId`) REFERENCES `resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

INSERT INTO `job` VALUES (1,'前台','汤司令招聘前台，全职，待遇优厚，包吃包住，有意请联系','30k 一年','2223334444','11301 Lakeline Blvd #300, Austin, TX 78717','ccc',1,1,NULL);

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountId` int NOT NULL,
  `membershipTypeId` int NOT NULL,
  `autoSubscribed` tinyint(1) NOT NULL,
  `expirationTimestamp` datetime DEFAULT NULL,
  `createdTimestamp` datetime DEFAULT NULL,
  `orderId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acct_idx` (`accountId`),
  CONSTRAINT `acct` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--


--
-- Table structure for table `membership_resource_limit`
--

DROP TABLE IF EXISTS `membership_resource_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_resource_limit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `membershipTypeId` int NOT NULL,
  `resourceTypeId` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_resource_limit`
--

INSERT INTO `membership_resource_limit` VALUES (1,1,1,1),(2,1,2,1),(4,2,1,1),(5,2,2,1),(6,2,3,1);

--
-- Table structure for table `membership_type`
--

DROP TABLE IF EXISTS `membership_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL,
  `monthlyPrice` double(4,2) DEFAULT NULL,
  `quarterlyPrice` double(5,2) DEFAULT NULL,
  `yearlyPrice` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` VALUES (1,'Basic',NULL,44.99,129.99,539.99),(2,'Advanced',NULL,49.99,145.99,569.99);

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(120) NOT NULL,
  `expiration_date` timestamp NOT NULL,
  `account_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_UNIQUE` (`token`),
  KEY `user_id_idx` (`account_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

INSERT INTO `password_reset_token` VALUES (1,'b40f5a12-9df6-41ed-933f-051465da4c99','2021-04-07 03:26:32',1),(3,'7bccf1b5-960d-4fbc-9ec2-7e51c7d9f065','2021-04-15 22:27:46',16),(4,'320863ae-1c62-4785-a356-98590482de93','2021-04-15 22:29:13',16),(5,'4b50817e-cbd8-4df0-9473-ad21ed79b888','2021-04-15 22:30:08',16),(6,'6166599c-2b67-4085-89bf-c2446dedf77c','2021-04-15 22:37:57',16),(7,'49cca6a2-1c99-4382-8fe7-e6aa130993cb','2021-04-15 22:39:01',16),(8,'e6d3d68d-048f-4487-8840-09bc42ab15bd','2021-04-15 22:44:46',16),(9,'43f0eb80-9e37-4525-9fc0-474dbd57ad53','2021-04-15 22:48:11',16),(10,'63432506-9caa-46ae-b220-2f62308b7920','2021-04-15 22:48:56',16),(11,'a74b7580-f5c7-4854-ab93-c9d96ccd3320','2021-04-15 22:51:33',16),(13,'ffe4928b-2fd5-4cb3-bbae-5deaf996f219','2021-04-24 11:51:47',16);

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `accountId` int NOT NULL,
  `membershipId` int DEFAULT NULL,
  `expirationTimestamp` datetime NOT NULL,
  `createdTimestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderId` int DEFAULT NULL,
  `resourceTypeId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` VALUES (1,'booth',0,NULL,'0000-00-00 00:00:00','2021-05-28 21:03:25',NULL,0),(2,'advertisement',0,NULL,'0000-00-00 00:00:00','2021-05-28 21:03:25',NULL,0),(3,'job',0,NULL,'0000-00-00 00:00:00','2021-05-28 21:03:25',NULL,0);

--
-- Table structure for table `resource_type`
--

DROP TABLE IF EXISTS `resource_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tableName` varchar(45) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `monthlyPrice` double(5,2) NOT NULL,
  `quarterlyPrice` double(5,2) NOT NULL,
  `yearlyPrice` double(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_type`
--

INSERT INTO `resource_type` VALUES (1,'ads','Ads lets you promote your business at home page with flexible customizations',34.99,99.99,399.99),(2,'booth','A resource to display your business information in clean text view',19.99,54.99,209.99),(3,'job','A hiring post to attract talents for your business',9.99,26.99,99.99);

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `ads` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `job` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `booth` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `admin` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `shopping` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `myaccount` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `auth` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

INSERT INTO `role` VALUES (6,'admin','WRITE','WRITE','WRITE','WRITE','WRITE','WRITE','WRITE'),(7,'merchant','READ','READ','READ','NONE','WRITE','WRITE','WRITE'),(8,'viewer','READ','READ','READ','NONE','NONE','NONE','NONE');

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` VALUES (1,'burger'),(2,'desert');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
