-- 1. Create table
CREATE TABLE
    IF NOT EXISTS course_structure (
        content VARCHAR,
        week INTEGER,
        content_type VARCHAR
    );

-- 2. Import data
INSERT INTO
    course_structure
SELECT
    *
FROM
    read_csv_auto ('../data/course_structure.csv');

--Fråga A — Select all exercises
SELECT
    *
FROM
    course_structure
WHERE
    content_type = 'exercise';

--Fråga B – Select all lectures
SELECT
    *
FROM
    course_structure
WHERE
    content_type = 'lecture';

--Fråga C – Week 48
SELECT
    *
FROM
    course_structure
WHERE
    week = 48;

--Fråga D – Week 47–49
SELECT
    *
FROM
    course_structure
WHERE
    week BETWEEN 47 AND 49;

--Fråga E – Count lectures
SELECT
    COUNT(*) AS lecture_count
FROM
    course_structure
WHERE
    content_type = 'lecture';

--Fråga F – Count NOT lectures
SELECT
    COUNT(*) AS other_count
FROM
    course_structure
WHERE
    content_type <> 'lecture';

--Fråga G – Unique content types
SELECT DISTINCT
    content_type
FROM
    course_structure;

--Fråga H – Ta bort & lägg tillbaka 02_setup_duckdb
DELETE FROM course_structure
WHERE content = '02_setup_duckdb';

INSERT INTO course_structure VALUES ('02_setup_duckdb', 46, 'lecture');

--Fråga I – Sortera på vecka stigande
SELECT
    *
FROM
    course_structure
ORDER BY
    week ASC;

--Fråga J – Egen query 
SELECT
    week,
    COUNT(*) AS items_per_week
FROM
    course_structure
GROUP BY
    week
ORDER BY
    week;

