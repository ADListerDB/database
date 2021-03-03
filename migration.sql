DROP DATABASE IF EXISTS adlister_db;
CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS category;

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
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(200) NOT NULL,
    description TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES users (id)
);





CREATE TABLE category
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES ads (id)
);
# For a given ad, what is the email address of the user that created it?
SELECT username, email
FROM users
WHERE id
  AND email IN (
    SELECT id
    FROM ads
    WHERE id = user_id
);

# For a given ad, what category, or categories, does it belong to?
SELECT name AS Category
FROM category
WHERE id
  AND name IN (
    SELECT id
    FROM ads
    WHERE title = 4
);

# For a given category, show all the ads that are in that category.
SELECT title AS Ads
FROM ads
WHERE ID IN (
    SELECT ID
    FROM category
    WHERE name = id
);

# For a given user, show all the ads they have posted.
SELECT username AS User
FROM users
Where id IN (
    SELECT id
    FROM ads
    WHERE id = 1
);

SELECT * FROM ads;
SELECT * FROM users;
SELECT * FROM category;


