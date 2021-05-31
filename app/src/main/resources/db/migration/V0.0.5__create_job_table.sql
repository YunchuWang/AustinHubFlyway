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
