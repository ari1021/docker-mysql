CREATE DATABASE IF NOT EXISTS `test_database` DEFAULT CHARACTER SET utf8mb4 ;
USE `test_database` ;

SET CHARSET utf8mb4;


CREATE TABLE IF NOT EXISTS `test_database`.`users` (
  `id` VARCHAR(128) NOT NULL COMMENT 'ユーザID',
  `name` VARCHAR(64) NOT NULL COMMENT 'ユーザ名',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'ユーザ';


CREATE TABLE IF NOT EXISTS `test_database`.`items` (
  `id` VARCHAR(128) NOT NULL COMMENT 'コレクションアイテムID',
  `name` VARCHAR(64) NOT NULL COMMENT 'コレクションアイテム名',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'アイテム';


CREATE TABLE IF NOT EXISTS `test_database`.`users_to_items` (
  `user_id` VARCHAR(128) NOT NULL COMMENT 'ユーザID',
  `item_id` VARCHAR(128) NOT NULL COMMENT 'コレクションアイテムID',
  PRIMARY KEY (`user_id`, `item_id`),
  CONSTRAINT `fk_users_to_items_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `test_database`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_users_to_items_item`
    FOREIGN KEY (`item_id`)
    REFERENCES `test_database`.`items` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'ユーザ所持アイテム';
