CREATE TABLE `membership_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL,
  `monthlyPrice` double(4,2) DEFAULT NULL,
  `quarterlyPrice` double(5,2) DEFAULT NULL,
  `yearlyPrice` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `membership_type` VALUES (1,'Basic',NULL,44.99,129.99,539.99),(2,'Advanced',NULL,49.99,145.99,569.99);
