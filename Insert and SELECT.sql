CREATE DATABASE campusx;
-- Used to create database

USE campusx;
-- USED to select the database

CREATE TABLE users(
user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL
);
-- used to create the table

INSERT INTO  users (user_id, name, email,password) 
VALUES (NULL, "Uthakrsh", 'vermau2k01@gmail.com', "abcd");


INSERT INTO  users 
VALUES (NULL, "Rishab", 'vermau@gmail.com', "abcd123");

SELECT * FROM campusx.users;

Select * FROM campusx.smartphones_cleaned_v6;
SELECT model, price,rating,os AS 'Operating System' FROM campusx.smartphones_cleaned_v6;

