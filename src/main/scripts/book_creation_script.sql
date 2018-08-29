-- -----------------------------------------------------
-- Schema books
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `books`  ;
USE `books` ;

-- -----------------------------------------------------
-- Table `books`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `books`.`author` (
  `id` BIGINT(20) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));



-- -----------------------------------------------------
-- Table `books`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `books`.`book` (
  `id` BIGINT(20) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `b64` LONGBLOB NOT NULL,
  `author_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `author_id`
    FOREIGN KEY (`author_id`)
    REFERENCES `books`.`author` (`id`));

CREATE INDEX `author_id` ON `books`.`book` (`author_id` ASC) VISIBLE;
