/* Datenimport */

/* Datenbanken löschen falls vorhanden */
DROP DATABASE IF EXISTS cats;

/* Datenbanken anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS cats;

/* Tabelle in gewählter Datenbank anlegen falls nicht vorhanden */
CREATE TABLE IF NOT EXISTS cats.cats
(
    /* 3 Textvaraible mit 20 Zeichen und Primärschlüssel */
    
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(20) NOT NULL UNIQUE,
    fur_color VARCHAR(20) NOT NULL,
    age int(3) NOT NULL
);

/* Datenstruktur anzeigen */
DESCRIBE cats.cats;

/* Daten laden */
LOAD DATA LOCAL INFILE "04_SQL_DataImport/Import/cats_export_no_id.csv"
INTO TABLE cats.cats
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(cat_name,fur_color,age)
;

/* Ergebnistabelle anzeigen */
SELECT * from cats.cats;
