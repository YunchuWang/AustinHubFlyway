CREATE TABLE `membership_resource_limit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `membershipTypeId` int NOT NULL,
  `resourceTypeId` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `membership_resource_limit` VALUES (1,1,1,1),(2,1,2,1),(4,2,1,1),(5,2,2,1),(6,2,3,1);
