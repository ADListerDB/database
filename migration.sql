CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(200) NOT NULL UNIQUE,
    email    VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title       VARCHAR(200) NOT NULL,
    description TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES users (id)
);