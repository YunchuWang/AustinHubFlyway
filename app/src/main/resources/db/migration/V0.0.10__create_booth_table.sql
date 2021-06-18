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
