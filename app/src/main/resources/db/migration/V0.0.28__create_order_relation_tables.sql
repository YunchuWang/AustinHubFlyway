CREATE TABLE `membership_order`
(
    `id`           INT NOT NULL AUTO_INCREMENT,
    `membershipId` INT NOT NULL,
    `orderId`      INT NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `resource_order`
(
    `id`         INT NOT NULL AUTO_INCREMENT,
    `resourceId` INT NOT NULL,
    `orderId`    INT NOT NULL,
    PRIMARY KEY (`id`)
);


