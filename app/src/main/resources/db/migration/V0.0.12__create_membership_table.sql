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
