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
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Datenstruktur anzeigen */
DESCRIBE boo.users;

/* Daten eingeben */
INSERT INTO
    boo.users (firstName,familyName,userName,userPwd)
VALUES
    ("Max","Mütze","max","1234"),
    ("Maxine","Mütze","maxine","0_1#"),
    ("Max","Mützerich","maxl","?%y$");


/* Ergebnistabelle anzeigen */
SELECT * from boo.users;
