CREATE TABLE `membership_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL,
  `monthlyPrice` double(4,2) DEFAULT NULL,
  `quarterlyPrice` double(5,2) DEFAULT NULL,
  `yearlyPrice` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
