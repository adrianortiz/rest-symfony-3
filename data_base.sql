CREATE DATABASE IF NOT EXISTS video_application;
USE video_application;

CREATE TABLE users (
  id INT(255) AUTO_INCREMENT NOT NULL,
  role VARCHAR(255),
  name VARCHAR(255),
  surname VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255),
  image VARCHAR(255),
  created_at DATETIME,
  CONSTRAINT pk_users PRIMARY KEY (id)
) ENGINE = InnoDb;

CREATE TABLE videos (
  id INT(255) AUTO_INCREMENT NOT NULL,
  user_id INT(255) NOT NULL,
  title VARCHAR(255),
  description TEXT,
  status VARCHAR(20),
  image VARCHAR(255),
  video_path VARCHAR(255),
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL,
  CONSTRAINT pk_videos PRIMARY KEY (id),
  CONSTRAINT fk_videos_users FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE = InnoDb;

CREATE TABLE comments(
  id INT(255) AUTO_INCREMENT NOT NULL,
  video_id INT(255) NOT NULL,
  user_id INT(255) NOT NULL,
  body TEXT,
  created_at DATETIME DEFAULT NULL,
  CONSTRAINT pk_comment PRIMARY KEY (id),
  CONSTRAINT fk_comment_video FOREIGN KEY (video_id) REFERENCES videos(id),
  CONSTRAINT fk_comment_user FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE = InnoDb;
