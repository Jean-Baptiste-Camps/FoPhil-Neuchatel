--------------------------------
--CREATION DE LA TABLE DES FILMS
--------------------------------
CREATE TABLE films (
   id INT(11) NOT NULL AUTO_INCREMENT,
   title VARCHAR(30) NOT NULL,
   PRIMARY KEY (id)
);
--------------------------------
--On remplit la table des films
--------------------------------
INSERT INTO films (title)
  VALUES ('Indiana Jones');
INSERT INTO films (title)
  VALUES ('Goldeneye');
INSERT INTO films (title)
  VALUES ('Dr No');
INSERT INTO films (title)
  VALUES ('Vacances romaines');
--------------------------------------
--CREATION DE LA TABLE DES RALISATEURS
--------------------------------------
CREATE TABLE directors (
   id INT(11) NOT NULL AUTO_INCREMENT,
   name VARCHAR(30) NOT NULL,
   film_id INT(11) NOT NULL,
   INDEX (film_id)
   PRIMARY KEY (id)
);
--------------------------------
--On remplit la table des films
--et on la relie à celle des réalisateurs
--------------------------------
INSERT INTO directors (title, film_id)
  VALUES ('Steven Spielberg', 1);
INSERT INTO directors (title, film_id)
  VALUES ('Martin Campbell', 2);
INSERT INTO directors (title, film_id)
  VALUES ('William Wyler', 4);
INSERT INTO directors (title, film_id)
  VALUES ('Terence Young', 3);