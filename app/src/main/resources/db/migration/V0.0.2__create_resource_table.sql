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
