-- Question 2 - describe the table
DESC TABLE staging.bikes; 

-- Question 3 - querying

--a) Query all columns from the bikes table
SELECT *
FROM staging.bikes;

--b) Query all rows of the columns order_date, first_name, last_name, and product_name.
SELECT 
    order_date,
    customer_first_name,
    customer_last_name,
    product_name
FROM staging.bikes;


--c) Find out same as (b) but only for the customer with first name "Marvin".
SELECT 
    order_date,
    customer_first_name,
    customer_last_name,
    product_name
FROM staging.bikes
WHERE customer_first_name = 'Marvin';


-- d) Find unique values of customers full name
SELECT DISTINCT
    customer_first_name || ' ' || customer_last_name AS full_name
FROM staging.bikes;


-- Question 4 - aggregations
--a) What is the total revenues from all orders
SELECT SUM(list_price * quantity) AS total_revenue
FROM staging.bikes;

--b) What is the minimum list price
SELECT MIN(list_price) AS min_list_price
FROM staging.bikes;

--c) What is the maximum list price
SELECT MAX(list_price) AS max_list_price
FROM staging.bikes;

-- Question 5 - create a new table

-- a) Create a new table in the staging schema named 'status'
CREATE TABLE staging.status (
    order_status INTEGER,
    order_status_description VARCHAR
);

-- b) Insert the following data into the status table
INSERT INTO staging.status (order_status, order_status_description) VALUES
    (1, 'Pending'),
    (2, 'Processing'),
    (3, 'Rejected'),
    (4, 'Completed');