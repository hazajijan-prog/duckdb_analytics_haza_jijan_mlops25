DESC;

-- 1000 films
FROM film;

DESC TABLE film;

SELECT DISTINCT rating FROM film;

-- 5462 > 1000 films -> actors can play ≥ 1 film
FROM film_actor;

-- ex insight
-- actor_id 1 -> Penelope Guiness
-- plays in movies: academy dinosaur, anaconda confessions, ...
FROM actor;

-- bridge table between film and category
-- it holds film_id and category_id
FROM film_category;
FROM category;

SELECT 
    'customer' AS type,
    c.first_name || ' ' || c.last_name AS name
FROM customer c; -- alias 


SELECT 
    'customer' AS type,
    c.first_name || ' ' || c.last_name AS name
FROM customer c
WHERE c.first_name ILIKE 'b%';