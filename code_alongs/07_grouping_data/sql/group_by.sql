SELECT
    food,
    SUM(number_of_seraches) AS total_searches
FROM
    cleaned_food
GROUP BY
    food
ORDER BY
    total_searches DESC
LIMIT
    10;

-- TOTAL SEARCHES BY YEAR 
SELECT
    year,
    SUM(number_of_seraches) AS total_searches
FROM
    cleaned_food
GROUP BY
    year
ORDER BY
    total_searches DESC;

-- FIKTER BY TOTALT SEARCH > 300K 
SELECT
    year,
    SUM(number_of_seraches) AS total_searches
FROM
    cleaned_food
GROUP BY
    year
HAVING
    total_searches > 300000
ORDER BY
    total_searches DESC;

-- GROUP BY 2 COLUMNS 
SELECT
    year,
    food,
    SUM(number_of_seraches) AS total_searches
FROM
    cleaned_food
GROUP BY
    food,
    year
HAVING
food IN ('pizza','sushi')
ORDER BY
   food, year;