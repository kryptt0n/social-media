CREATE DATABASE social_media_db;

CREATE TABLE accounts(
	id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(255) NOT NULL,
    dob DATE,
    profile BLOB,
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts(
	id INT PRIMARY KEY AUTO_INCREMENT,
	text VARCHAR(255) NOT NULL,
	image LONGBLOB,
    create_time TIMESTAMP DEFAULT current_timestamp,
    draft BOOLEAN DEFAULT true,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES accounts(id)
);

CREATE TABLE comments(
	id INT PRIMARY KEY AUTO_INCREMENT,
	post_id INT NOT NULL,
    text VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (user_id) REFERENCES accounts(id)
);

CREATE TABLE likes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	post_id INT NOT NULL,
    user_id INT NOT NULL,
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (user_id) REFERENCES accounts(id)
);

CREATE TABLE followers(
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT NOT NULL,
    follower_id INT NOT NULL,
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES accounts(id),
    FOREIGN KEY (follower_id) REFERENCES accounts(id)
);

CREATE TABLE messages(
	id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
	message VARCHAR(255) NOT NULL,
	create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES accounts(id)
);

CREATE USER 'j2ee_proj'@'%' IDENTIFIED BY 'J2ee@proj';
GRANT ALL PRIVILEGES ON social_media_db.* TO 'j2ee_proj'@'%';
FLUSH PRIVILEGES;
