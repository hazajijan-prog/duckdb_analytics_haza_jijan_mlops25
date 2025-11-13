-- decriptive satistics wiith aggretion 
-- AS to make alias for the column 

SELECT
    MIN(salary_in_usd) AS min_salary,
    MEDIAN (salary_in_usd) AS median_salary,
    AVG(salary_in_usd)::INT AS avg_salary,
    MAX(salary_in_usd) AS max_salary,
FROM
    data_jobs

