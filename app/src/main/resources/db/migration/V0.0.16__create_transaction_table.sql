CREATE TABLE `transaction`
(
    `id`               int            NOT NULL AUTO_INCREMENT,
    `externalId`       varchar(85)    NOT NULL,
    `amount`           decimal(10, 2) NOT NULL,
    `createdTimestamp` datetime       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `status`           enum('AUTHORIZATION_EXPIRED','AUTHORIZED','AUTHORIZING','FAILED','GATEWAY_REJECTED','PROCESSOR_DECLINED','SETTLED','SETTLEMENT_CONFIRMED','SETTLEMENT_DECLINED','SETTLEMENT_PENDING','SETTLING','SUBMITTED_FOR_SETTLEMENT','UNRECOGNIZED','VOIDED','EXPIRED') NOT NULL,
    `orderId`          int            NOT NULL,
    `type`             varchar(45)             DEFAULT NULL,
    `expiryTime`       datetime       NOT NULL,
    `merchantId`       varchar(80)    NOT NULL,
    PRIMARY KEY (`id`),
    KEY                `orderId_idx` (`orderId`),
    CONSTRAINT `orderId` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;