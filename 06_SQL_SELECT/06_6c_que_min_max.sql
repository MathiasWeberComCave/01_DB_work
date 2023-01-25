/* Aggregationen MIN/MAX */

-- Preis der teuersten/günstigsten Aktie?

/*
SELECT
    #max(price) "Max. Preis"
    min(price)  "Min. Preis"
FROM aktien.aktien
;
*/

#SELECT max(price) "Max. Preis" FROM stocks.ccc;
#SELECT min(price) "Min. Preis" FROM stocks.ccc;  

-- WELCHE Aktie ist am teuersten/günstigsten ?
-- 1. Subquery
-- 2. ORDER BY .... ASC/DESC & LIMIT 1
/*
SELECT
    ticker SYM,
    c_name AS Unternehmen,
    price AS "Kurs in $"
FROM aktien.aktien
-- SUBQUERY, hier: zeig mir den max./min. Wert / wichtig: (SELECT ...) !
WHERE price = (SELECT max(price) "Max. Preis" FROM stocks.ccc)
#WHERE price = (SELECT min(price) "Min. Preis" FROM stocks.ccc)
;

SELECT
    ticker SYM,
    c_name AS Unternehmen,
    price AS "Kurs in $"
FROM aktien.aktien
ORDER BY price DESC
#ORDER BY price ASC
LIMIT 1
;
*/

-- Welches Unternehmen hat die längste Div.-Historie ?
SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs    
FROM aktien.aktien
ORDER BY no_yrs DESC
LIMIT 1
;
   

