SELECT
    *
FROM
    data_jobs;

-- CASE INSENSIVITE IN SQL 
-- BY CONVETION uppercase for sql commands 
-- lowercase for columns 
SELECT
    *
FROM
    data_jobs
LIMIT
    5;

-- offset 3 
SELECT
    *
FROM
    data_jobs
OFFSET
    3
LIMIT
    5;

-- prick out a few columns 
SELECT
    work_year,
    experience_level,
    job_title,
    salary_in_usd,
    company_size
FROM
    data_jobs;

-- GIVES EVERY COLUMN EXCEPT FOR THOSE SPEC
SELECT
    * EXCLUDE (work_year, job_title)
FROM
    data_jobs

-- UNIQE --> DISTINCT 
SELECT DISTINCT
    employment_type
FROM
    data_jobs

SELECT DISTINCT
    experience_level
FROM
    data_jobs


