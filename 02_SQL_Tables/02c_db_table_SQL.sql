/* Strukturen Unique - keine doppelten Datensätze mit Primary Key*/

/* Datenbanken anzeigen */
#SHOW DATABASES;

/* Datenbanken löschen falls vorhanden */
DROP DATABASE IF EXISTS boo;

/* Datenbanken anzeigen */
#SHOW DATABASES;

/* Datenbanken anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;

/* Datenbanken anzeigen */
SHOW DATABASES;

/* DB auswählen */
#USE boo;

/* Tabelle und Datenbank in gewählter Datenbank anlegen falls nicht vorhanden. Zugriff auf Tabelle über Puntknotation */
CREATE TABLE IF NOT EXISTS boo.test
(
    /* Textvaraible mit 20 Zeichen und Ganzahl mit 3 Ziffern anlegen die nicht Null sind bzw. Default-Werte beinhalten.
    Dazu ein Primärchlüssel zur eindeutigen Kennzeichnung eines Datensatzes.*/
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) DEFAULT "TBA",
    age INT(3) DEFAULT 0
);

/* Tabellen anzeigen */
SHOW TABLES;

/* Datenbanken anzeigen */
#SHOW DATABASES;

/* Datenstruktur anzeigen */
DESCRIBE boo.test;

/* Daten eingeben */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test VALUES();

/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.test;

/* Daten doppelt eingeben */
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");

/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.test;
