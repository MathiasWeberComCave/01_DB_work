/* Select */

# 01_DB_work/04_SQL_DataImport/04_db_csv_import.sql ausführen um die daten zu laden

ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE;

/* Ergebnistabelle anzeigen */
SELECT * FROM cats.cats;

UPDATE cats.cats SET cat_name = "Alonzi" WHERE id = 2;
UPDATE cats.cats SET fur_color = "grey" WHERE id = 3;

SELECT * FROM cats.cats;
SELECT cat_name FROM cats.cats;
SELECT cat_name, age FROM cats.cats;

# strukturierter Aufbau des select
SELECT
cat_name AS "Katzen",
age AS "Alter"
FROM cats.cats
WHERE id >= 2 AND age >= 40;

# löschen von Datensätzen
DELETE FROM
cats.cats
WHERE id = 2; 

SELECT * FROM cats.cats;