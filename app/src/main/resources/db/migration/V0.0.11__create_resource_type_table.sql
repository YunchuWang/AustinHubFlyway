CREATE TABLE `resource_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tableName` varchar(45) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `monthlyPrice` double(5,2) NOT NULL,
  `quarterlyPrice` double(5,2) NOT NULL,
  `yearlyPrice` double(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `resource_type` VALUES (1,'ads','Ads lets you promote your business at home page with flexible customizations',34.99,99.99,399.99),(2,'booth','A resource to display your business information in clean text view',19.99,54.99,209.99),(3,'job','A hiring post to attract talents for your business',9.99,26.99,99.99);
