CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) DEFAULT NULL,
  `displayName` varchar(45) DEFAULT NULL,
  `type` enum('ACCT','RESC') DEFAULT 'RESC',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_indx` (`name`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
