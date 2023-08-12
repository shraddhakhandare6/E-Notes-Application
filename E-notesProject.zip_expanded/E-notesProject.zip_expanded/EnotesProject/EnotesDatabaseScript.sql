create database enotes2;
use enotes2;
CREATE TABLE `enotes2`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  select* from user;
CREATE TABLE `enotes2`.`post` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `content` VARCHAR(45) NOT NULL,
  `date` TIMESTAMP NULL DEFAULT now(),
  `uid` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `uid_idx` (`uid` ASC) VISIBLE,
  CONSTRAINT `uid`
    FOREIGN KEY (`uid`)
    REFERENCES `enotes2`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
    select* from post;
