# AustinHubFlyway

Steps to run flyway in local
* Before running flyway schema migration, make sure db at localhost:3306/austinhub is available, and root user is granted with all privileges to the db
* run `gradle clean` and update dependencies
* replace userPwd in build.gradle with you real password so that you have correct password to access austinhub db in local
* run `gradle flywayMigrate`
