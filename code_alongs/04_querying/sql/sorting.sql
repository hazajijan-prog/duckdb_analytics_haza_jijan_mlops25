-- sorts ascending by default
SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd;

-- sorts descending on salary_inusd 
-- and ascending on job_title 
-- in ties for salary -> sort job_title 
SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd DESC,
    job_title ASC;

