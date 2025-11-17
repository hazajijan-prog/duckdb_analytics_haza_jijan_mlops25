-- change namne of id infto food 
-- remove Google topic column 
-- change value into number_ofseraches
-- change week_id into week 
-- extract a year column 
SELECT
    id as food,
    week_id as week,
    SUBSTRING(week, 1, 4) as year,
    value as number_of_seraches
FROM
    food;

CREATE TABLE
    IF NOT EXISTS cleaned_food AS(
        SELECT
            id as food,
            week_id as week,
            SUBSTRING(week, 1, 4) as year,
             value as number_of_seraches
        FROM
            food
    );