use test_database;

SET NAMES utf8mb4;

INSERT INTO `users` (`id`,`name`) VALUES ("1","user1");
INSERT INTO `users` (`id`,`name`) VALUES ("2","user2");
INSERT INTO `users` (`id`,`name`) VALUES ("3","user3");

INSERT INTO `items` (`id`,`name`) VALUES ("1","item1");
INSERT INTO `items` (`id`,`name`) VALUES ("2","item2");
INSERT INTO `items` (`id`,`name`) VALUES ("3","item3");
INSERT INTO `items` (`id`,`name`) VALUES ("4","item4");
INSERT INTO `items` (`id`,`name`) VALUES ("5","item5");
INSERT INTO `items` (`id`,`name`) VALUES ("6","item6");
INSERT INTO `items` (`id`,`name`) VALUES ("7","item7");
INSERT INTO `items` (`id`,`name`) VALUES ("8","item8");
INSERT INTO `items` (`id`,`name`) VALUES ("9","item9");

INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("1","1");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("1","2");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("1","3");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("2","4");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("2","5");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("2","6");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("3","7");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("3","8");
INSERT INTO `users_to_items` (`user_id`,`item_id`) VALUES ("3","9");