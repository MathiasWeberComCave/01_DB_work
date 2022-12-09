/* Aggregationen AVG() */

-- Durchschnittspreis einer Aktie / Banken?

SELECT
    round(avg(price),2) Durchschnittspreis
FROM aktien.aktien
#WHERE industry = "Banks"
WHERE industry = "Media"
;


-- KOMBINATION Preis/Dividende pro Industriesektor
SELECT
    sector Industriesektor, -- organisch
    round(avg(price),2) Durchschnittspreis, -- aggregiert (berechnet)
    avg(dividend) Durchschnittsdividende -- aggregiert (berechnet)
FROM aktien.aktien
GROUP BY sector -- Gruppieren nach organ. Daten/Spalte/Feld
#ORDER BY Durchschnittspreis DESC
ORDER BY Durchschnittsdividende DESC
;