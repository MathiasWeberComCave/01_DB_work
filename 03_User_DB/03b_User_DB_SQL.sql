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
    userPwd VARCHAR (40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Tabelle ändern */
ALTER TABLE boo.users ADD userPLZ INT (5) NOT NULL DEFAULT 0;    

/* Datenstruktur anzeigen */
DESCRIBE boo.users;

/* Daten eingeben */
INSERT INTO
    boo.users (firstName,familyName,userName,userPwd)
VALUES
    ("Max","Mütze","max",SHA1(MD5("1234"))), /* Passwort wird geschachtelt verschlüsselt */
    ("Maxine","Mütze","maxine",SHA1(MD5("0_1#"))),
    ("Max","Mützerich","maxl",SHA1(MD5("?%y$")));

# Verschlüsselungsmethoden in SQL: https://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html#function_encrypt

/* Daten aktualisieren */
UPDATE boo.users SET userPLZ = 97980 WHERE firstName = "Max";
UPDATE boo.users SET userPLZ = 74214 WHERE id = 2;

/* Ergebnistabelle anzeigen */
SELECT * from boo.users;
