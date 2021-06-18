CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `ads` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `job` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `booth` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `admin` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `shopping` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `myaccount` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  `auth` enum('READ','WRITE','NONE') DEFAULT 'NONE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `role` VALUES (6,'admin','WRITE','WRITE','WRITE','WRITE','WRITE','WRITE','WRITE'),(7,'merchant','READ','READ','READ','NONE','WRITE','WRITE','WRITE'),(8,'viewer','READ','READ','READ','NONE','NONE','NONE','NONE');
