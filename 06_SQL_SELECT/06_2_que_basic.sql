/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombinationen aus mehreren Feldern in neues Feld 
-- hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
	ticker AS "SYM",
	price AS "Kurs",
	c_name AS "Unternehmen",
	#industry AS "Branche",
    #sector AS "Sektor"
	CONCAT(sector, " | ", industry) AS "Operations"
FROM aktien.aktien
ORDER BY price ASC , sector DESC
LIMIT 10 -- ab 0 X Zeilen 
#LIMIT 200, 10 -- ab 200 X Zeilen 

;



