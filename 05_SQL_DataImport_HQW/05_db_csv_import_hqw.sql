/* Datenimport */

/* Datenbanken löschen falls vorhanden */
DROP DATABASE IF EXISTS hqw;

/* Datenbanken anlegen falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS hqw;

/* Tabelle in gewählter Datenbank anlegen falls nicht vorhanden */
CREATE TABLE IF NOT EXISTS hqw.data
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Abfragezeitpunkt VARCHAR (40),
    AnzahlPAszumArtikel VARCHAR(40),
    Arbeitsplatz VARCHAR(40),
    ArtGruppe VARCHAR(40),
    PAFaelligk VARCHAR(40),
    AGFlligdat VARCHAR(40),
    AGFlligzeit VARCHAR(40),
    SollzeitStk VARCHAR(40),
    AB VARCHAR(40),
    Kundennummer VARCHAR(40),
    Kunde VARCHAR(40),
    ProdAuftrNr VARCHAR(40),
    SAPNr VARCHAR(40),
    PAErstelldatum VARCHAR(40),
    PAErstellt VARCHAR(40),
    Gedruckt VARCHAR(40),
    ProdName VARCHAR(100),
    ProdMengePlan VARCHAR(40),
    ProdMengeGut VARCHAR(40),
    Status VARCHAR(40),
    Geschlossen VARCHAR(40),
    AGZeile VARCHAR(40),
    AGNr VARCHAR(40),
    AGName VARCHAR(40),
    AGDetails VARCHAR(40),
    Bemerkung VARCHAR(140),
    PABemerkung VARCHAR(140),
    AGMengeGepl VARCHAR(40),
    GeplanteDauer VARCHAR(40),
    AGMengeGut VARCHAR(40),
    AGMengeSchlecht VARCHAR(40),
    Scrap VARCHAR(40),
    ErlProz VARCHAR(40),
    Arbeitszeit VARCHAR(40),
    Rstzeit VARCHAR(40),
    letztesBuchungsdatum VARCHAR(40),
    Mengenfehler VARCHAR(40),
    AGnichtgemeldet VARCHAR(40),
    Doppelmeldung VARCHAR (40),
    Ausschussnichtgemeldet VARCHAR(40),
    Ausschussliefweiter VARCHAR(40),
    Fehlerart VARCHAR(40)
);

/* Datenstruktur anzeigen */
DESCRIBE hqw.data;

/* Daten laden */
LOAD DATA LOCAL INFILE "05_SQL_DataImport_HQW/Import/Export.csv"
INTO TABLE hqw.data
FIELDS TERMINATED BY ";"
LINES TERMINATED BY "\n"
IGNORE 15480 ROWS
 (  Abfragezeitpunkt,
    AnzahlPAszumArtikel,
    Arbeitsplatz,
    ArtGruppe,
    PAFaelligk,
    AGFlligdat,
    AGFlligzeit,
    SollzeitStk,
    AB,
    Kundennummer,
    Kunde,
    ProdAuftrNr,
    SAPNr,
    PAErstelldatum,
    PAErstellt,
    Gedruckt,
    ProdName,
    ProdMengePlan,
    ProdMengeGut,
    Status,
    Geschlossen,
    AGZeile,
    AGNr,
    AGName,
    AGDetails,
    Bemerkung,
    PABemerkung,
    AGMengeGepl,
    GeplanteDauer,
    AGMengeGut,
    AGMengeSchlecht,
    Scrap,
    ErlProz,
    Arbeitszeit,
    Rstzeit,
    letztesBuchungsdatum,
    Mengenfehler,
    AGnichtgemeldet,
    Doppelmeldung,
    Ausschussnichtgemeldet,
    Ausschussliefweiter,
    Fehlerart )
;

/* Ergebnistabelle anzeigen */
SELECT * from hqw.data;
   