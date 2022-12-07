/* Strukturen Unique - keine doppelten Datensätze mit UNIQUE*/

/* Datenbanken anzeigen */
#SHOW DATABASES;

/* Datenbanken löschen falls vorhanden */
DROP DATABASE IF EXISTS first;

/* Datenbanken anzeigen */
#SHOW DATABASES;

/* Datenbanken anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS first;

/* Datenbanken anzeigen */
SHOW DATABASES;

/* DB auswählen */
USE first;

/* Tabelle und Datenbank in gewählter Datenbank anlegen falls nicht vorhanden */
CREATE TABLE IF NOT EXISTS test
(
    /* Textvaraible mit 20 Zeichen und Ganzahl mit 3 Ziffern anlegen die nicht Null sind bzw. Default-Werte beinhalten */
    name VARCHAR(20) UNIQUE NOT NULL DEFAULT "TBA",
    age INT(3) UNIQUE NOT NULL DEFAULT 0
);

/* Tabellen anzeigen */
SHOW TABLES;

/* Datenbanken anzeigen */
#SHOW DATABASES;

/* Datenstruktur anzeigen */
DESCRIBE test;

/* Daten eingeben */
INSERT INTO test(name,age) VALUES ("Grizabella",29);
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test() VALUES ();

/* Inhalte der Tabelle anzeigen */
SELECT * FROM test;

/* Daten doppelt eingeben */
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test(age,name) VALUES (35,"Alonzo");

/* Inhalte der Tabelle anzeigen */
SELECT * FROM test;
