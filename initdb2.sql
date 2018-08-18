CREATE TABLE IF NOT EXISTS `users`(
	`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`login_name` VARCHAR(64) UNIQUE KEY,
	`pwd` TEXT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `video_info`(
	`id` VARCHAR(64) PRIMARY KEY NOT NULL,
	`author_id` INT UNSIGNED,
	`name` TEXT,
	`display_ctime` TEXT,
	`create_time` DATETIME
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `comments`(
	`id` VARCHAR(64) PRIMARY KEY NOT NULL,
	`video_id` VARCHAR(64),
	`author_id` INT UNSIGNED,
	`content` TEXT,
	`time` DATETIME DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `sessions`(
	`session_id` VARCHAR(255) PRIMARY KEY NOT NULL,
	`TTL` TINYTEXT,
	`login_name` TEXT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO comments (id, video_id, author_id, content) values ('1232121', '123', 1, 'i like it');

CREATE TABLE IF NOT EXISTS `video_del_rec` (
	`video_id` VARCHAR(64) PRIMARY KEY 
)ENGINE=InnoDB DEFAULT CHARSET=utf8