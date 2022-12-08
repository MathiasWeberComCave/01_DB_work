/* Datenimport */

ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE;

/* Datenbanken löschen falls vorhanden */
#DROP DATABASE IF EXISTS aktien;

/* Datenbanken anlegen falls nicht vorhanden */
#CREATE DATABASE IF NOT EXISTS aktien;

/* Tabelle in gewählter Datenbank anlegen falls nicht vorhanden */
#CREATE TABLE IF NOT EXISTS aktien.aktien
(
  
id INT NOT NULL PRIMARY KEY,        -- ID
    c_name VARCHAR(50) NOT NULL,        -- Name des Unternehmens
    ticker VARCHAR(5) NOT NULL,  	    -- DOW Ticker-Symbol
    sector VARCHAR(50) NOT NULL, 	    -- Industrie-Sektor
    industry VARCHAR(60) NOT NULL,	    -- Branche
    no_yrs INT(2) NOT NULL,		        -- Jahre, seitdem ununterbrochen Dividende gesteigert werden
    ranking INT NOT NULL,	            -- Ranking in der Liste
    price DECIMAL(6,2) NOT NULL,	    -- Preis pro Aktie in $ per 12/2019
    yield DECIMAL(6,4) NOT NULL,	    -- Dividendenrendite (Dividendenanteil *100) / Aktienkurs
    dividend DECIMAL(6,4) NOT NULL,	    -- Dividendenanteil pro Aktie (Ausschuettung)
    payouts INT(2) NOT NULL,		    -- wieviel mal wird pro Jahr gezahlt?
    annualized DECIMAL(4,2) NOT NULL	-- jaehrlich    
);

/* Datenstruktur anzeigen */
DESCRIBE aktien.aktien;

/* Daten laden */
#'C:/Users/CC-Student/Desktop/370885-Programmierung/Datenbanken/ccc_dez_2019.csv'
LOAD DATA LOCAL INFILE "06_SQL_SELECT/Import/ccc_dez_2019.csv"
INTO TABLE aktien.aktien
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
;

/* Ergebnistabelle anzeigen */
SELECT * from aktien.aktien LIMIT 5;
