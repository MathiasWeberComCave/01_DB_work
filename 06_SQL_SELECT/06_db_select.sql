/* Datenimport */

ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE;

/* Datenbanken löschen falls vorhanden */
DROP DATABASE IF EXISTS aktien;

/* Datenbanken anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS aktien;

/* Tabelle in gewählter Datenbank anlegen falls nicht vorhanden */
CREATE TABLE IF NOT EXISTS aktien.aktien
(
  
id 			INT NOT NULL PRIMARY KEY, #-- ID
c_name   	VARCHAR(20) NOT NULL, #-- Name des Unternehmens
ticker   	VARCHAR(20) NOT NULL, #-- DOW Ticker-Symbol
sector   	VARCHAR(20) NOT NULL, #-- Industrie-Sektor
industry 	VARCHAR(20) NOT NULL, #-- Branche
no_yrs 		VARCHAR(20) NOT NULL, #-- Jahre, seitdem ununterbrochen Dividende gesteigert werden
ranking 	VARCHAR(20) NOT NULL, #-- Ranking in der Liste
price 		VARCHAR(20) NOT NULL, #-- Preis pro Aktie in $ per 12/2019
yield		VARCHAR(20) NOT NULL, #-- Dividendenrendite (Dividendenanteil *100) / Aktienkurs
dividend 	VARCHAR(20) NOT NULL, #-- Dividendenanteil pro Aktie (Ausschuettung)
payouts 	VARCHAR(20) NOT NULL, #-- wieviel mal wird pro Jahr gezahlt?
annualized	VARCHAR(20) NOT NULL #-- jaehrlich
);

/* Datenstruktur anzeigen */
DESCRIBE aktien.aktien;

/* Daten laden */
#'C:/Users/CC-Student/Desktop/370885-Programmierung/Datenbanken/ccc_dez_2019.csv'
LOAD DATA INFILE  "06_SQL_SELECT/Import/ccc_dez_2019.csv"
INTO TABLE aktien.aktien
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
;

/* Ergebnistabelle anzeigen */
SELECT * from aktien.aktien LIMIT 5;
