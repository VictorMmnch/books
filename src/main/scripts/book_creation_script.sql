DROP DATABASE IF EXISTS books;
CREATE DATABASE books;

USE books;

CREATE TABLE book (
 id INT NOT NULL AUTO_INCREMENT,
 title VARCHAR(255) NOT NULL ,
 bookImage BLOB NOT NULL,
 PRIMARY KEY (id));
 
CREATE TABLE author(
   id int not NULL AUTO_INCREMENT,
   name varchar(50),
   lastName varchar(50),
   PRIMARY KEY (id)
);
