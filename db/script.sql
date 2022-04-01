CREATE DATABASE IF NOT EXISTS desafio;
USE desafio;

CREATE TABLE IF NOT EXISTS desafio_item (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  email VARCHAR(255),  
  PRIMARY KEY (id)
);

INSERT INTO desafio_item VALUE(0, 'Bruce Wayne','batman@dc.com' );
INSERT INTO desafio_item VALUE(0, 'Tony stark','marvel@dc.com' );
INSERT INTO desafio_item VALUE(0, 'Jack napier','joker@dc.com' );
INSERT INTO desafio_item VALUE(0, 'Robert banner','hulk@marvel.com' );

