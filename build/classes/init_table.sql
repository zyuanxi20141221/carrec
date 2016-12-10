
CREATE TABLE IF NOT EXISTS user_origin (
    id int(11) NOT NULL AUTO_INCREMENT,
    origin varchar(200) NOT NULL,
    PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS age_grade(
    id int(11) NOT NULL AUTO_INCREMENT,
    grade varchar(50),
    PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS job(
    id int(11) NOT NULL AUTO_INCREMENT,
    job varchar(50),
    PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS edu_level(
    id int(11) NOT NULL AUTO_INCREMENT,
    edu varchar(50),
    PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS articles (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  title varchar(200) NOT NULL,
  content longtext NOT NULL,
  topics varchar(200) DEFAULT NULL,
  author varchar(50) DEFAULT NULL,
  pub_timestamp timestamp NULL DEFAULT NULL,
  pub_time date DEFAULT NULL,
  category varchar(255) DEFAULT NULL,
  keywords varchar(255) DEFAULT NULL,
  description varchar(500) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS users (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id varchar(50) NOT NULL,
  device_id varchar(50) DEFAULT NULL,
  device_os varchar(50) DEFAULT NULL,
  origin int(11) DEFAULT NULL,
  car_model varchar(200) DEFAULT NULL,
  gender char(1) DEFAULT NULL,
  age_grade int(11) DEFAULT NULL,
  job int(11) DEFAULT NULL,
  edu_level int(11) DEFAULT NULL,
  PRIMARY KEY (id,user_id),
  FOREIGN KEY (origin) REFERENCES user_origin(id) ON DELETE CASCADE,
  FOREIGN KEY (age_grade) REFERENCES age_grade(id) ON DELETE CASCADE,
  FOREIGN KEY (job) REFERENCES job(id) ON DELETE CASCADE,
  FOREIGN KEY (edu_level) REFERENCES edu_level(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS item_preferences (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    userID varchar(50) NOT NULL,
    itemID bigint(20) NOT NULL,
    preference INTEGER NOT NULL DEFAULT 0,
    timestamp INTEGER not null DEFAULT 0,
    PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS item_similarity (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    itemID1 bigint(20) NOT NULL,
    itemID2 bigint(20) NOT NULL,
    similarity DOUBLE NOT NULL DEFAULT 0,
    PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX item_preferences_index1 ON item_preferences ( userID , itemID );
CREATE INDEX item_preferences_index2 ON item_preferences ( userID );
CREATE INDEX item_preferences_index3 ON item_preferences ( itemID );



