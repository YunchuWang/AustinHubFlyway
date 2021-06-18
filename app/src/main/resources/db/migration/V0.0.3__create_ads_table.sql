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
