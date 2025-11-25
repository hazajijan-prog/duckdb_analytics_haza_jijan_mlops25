FROM plants;
FROM plant_care;

-- left join
-- Want to see how to take care of my plants
-- those that don't have a caring info, I want to know about it
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plants p 
    LEFT JOIN plant_care pc ON p.plant_id = pc.plant_id;


-- RIGHT JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plants p 
    RIGHT JOIN plant_care pc ON p.plant_id = pc.plant_id;

-- Achieve RIGHT JOIN with LEFT JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plant_care pc -- vänster
    LEFT JOIN plants p  -- höger
    ON p.plant_id = pc.plant_id;

-- inner join
-- I want to know which plants that have plant care 
-- not interested in those without plant care
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plant_care pc -- vänster
    INNER JOIN plants p  -- höger
    ON p.plant_id = pc.plant_id;

-- full join
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plant_care pc -- vänster
    FULL JOIN plants p  -- höger
    ON p.plant_id = pc.plant_id;