CREATE TABLE `password_reset_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(120) NOT NULL,
  `expiration_date` timestamp NOT NULL,
  `account_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_UNIQUE` (`token`),
  KEY `user_id_idx` (`account_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
