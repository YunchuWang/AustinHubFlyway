CREATE TABLE `order` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `orderNumber` varchar(45) NOT NULL,
                         `accountId` int NOT NULL,
                         `createdTimestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         `price` decimal(8,2) NOT NULL,
                         `status` enum('REQUESTED','DECLINED','CANCELLED','COMPLETED') NOT NULL DEFAULT 'REQUESTED',
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `orderNumber_UNIQUE` (`orderNumber`),
                         KEY `accId_idx` (`accountId`),
                         CONSTRAINT `accId` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci