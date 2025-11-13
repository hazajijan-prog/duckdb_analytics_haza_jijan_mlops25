-- a) Skapa tabell och ladda in CSV (om den inte redan finns)
CREATE TABLE
    IF NOT EXISTS hemnet AS
SELECT
    *
FROM
    read_csv_auto ('../data/hemnet_data_clean.csv');

-- b) Wildcard: visa data
SELECT
    *
FROM
    hemnet
LIMIT
    50;

-- c) Räkna antal rader
SELECT
    COUNT(*) AS total_rows
FROM
    hemnet;

-- d) Beskriv tabellen: kolumner + datatyper
DESCRIBE hemnet;

-- e) Topp 5 dyraste bostäder
SELECT
    *
FROM
    hemnet
ORDER BY
    final_price DESC
LIMIT
    5;

-- f) Topp 5 billigaste bostäder
SELECT *
FROM hemnet
ORDER BY final_price ASC
LIMIT 5;

-- g) Statistik: pris på sålda hem
SELECT
    MIN(final_price)   AS min_price,
    AVG(final_price)   AS avg_price,
    MEDIAN(final_price) AS median_price,
    MAX(final_price)   AS max_price
FROM hemnet;

-- h) Statistik: pris per kvadratmeter
SELECT
    MIN(price_per_area)   AS min_ppm,
    AVG(price_per_area)   AS avg_ppm,
    MEDIAN(price_per_area) AS median_ppm,
    MAX(price_per_area)   AS max_ppm
FROM hemnet;

-- i) Unika kommuner
SELECT COUNT(DISTINCT commune) AS unique_communes
FROM hemnet;

-- j) Andel över 10 miljoner
SELECT 
    100.0 * COUNT(*) FILTER (WHERE final_price > 10000000) 
    / COUNT(*) AS percent_over_10m
FROM hemnet;

-- k) Extra: topp 10 dyraste kommuner
SELECT 
    commune,
    AVG(final_price) AS avg_price
FROM hemnet
GROUP BY commune
ORDER BY avg_price DESC
LIMIT 10;