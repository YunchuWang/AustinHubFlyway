CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) DEFAULT NULL,
  `displayName` varchar(45) DEFAULT NULL,
  `type` enum('ACCT','RESC') DEFAULT 'RESC',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_indx` (`name`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `category` VALUES (1,'restaurant','/restaurant','Restaurant','RESC'),(2,'real-estate','/real-estate','Real Estate','RESC'),(3,'home-inspection','/home-inspection','Home Inspection','RESC'),(4,'gardening','/gardening','Gardening','RESC'),(5,'accounting','/accounting','Accounting','RESC'),(6,'law','/law','Law','RESC'),(7,'account-info','info','Account Info','ACCT'),(8,'my-booths','mybooths','My Booths','ACCT'),(9,'my-jobs','myjobs','My Jobs','ACCT'),(10,'my-ads','myads','My Ads','ACCT');
