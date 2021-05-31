CREATE TABLE `resource_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tableName` varchar(45) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `monthlyPrice` double(5,2) NOT NULL,
  `quarterlyPrice` double(5,2) NOT NULL,
  `yearlyPrice` double(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
