/* Strukturen */

/* Datenbanken löschen falls vorhanden */
DROP DATABASE IF EXISTS boo;

/* Datenbanken anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;

/* Tabelle in gewählter Datenbank anlegen falls nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.users
(
    /* 3 Textvaraible mit 20 Zeichen und Primärschlüssel */
    
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Datenstruktur anzeigen */
DESCRIBE boo.users;

/* Daten eingeben */
INSERT INTO boo.users (firstName,familyName,userName)
VALUES("Max","Mütze","max");

INSERT INTO boo.users (firstName,familyName,userName)
VALUES("Maxine","Mütze","maxine");

INSERT INTO boo.users (firstName,familyName,userName)
VALUES("Max","Mützerich","maxl");

/* Ergebnistabelle anzeigen */
SELECT * from boo.users;
