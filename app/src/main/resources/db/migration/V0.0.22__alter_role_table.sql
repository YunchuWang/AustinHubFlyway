ALTER TABLE `role`
    CHANGE COLUMN `myaccount` `account` ENUM('READ', 'WRITE', 'NONE') NULL DEFAULT 'NONE' ;
