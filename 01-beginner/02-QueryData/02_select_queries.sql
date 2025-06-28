-- USE MyDatabase;
-- Retrive All customer Data

SELECT *
FROM customers

-- Retrieve All Order Data
SELECT *
FROM orders

-- Retrieve each customer's name, country, and score.

SELECT
    first_name,
    country,
    score
FROM customers

-- Retrieve customers with a score not equal to 0

SELECT *
FROM customers
WHERE score!= 0

--Retrieve customers from Germany

/* SELECT *
FROM customers
WHERE country = 'Germany'
*/

SELECT 
    first_name, 
    country
FROM customers
WHERE country = 'Germany'

/* Retrieve all customers and sort the results 
by the highest score first*/

SELECT *
FROM customers
ORDER BY score DESC

/* Retrieve all customers and sort the results 
by the lowest score first*/

SELECT *
FROM customers
ORDER BY score ASC

/* Retrieve all customers and sort the results 
by the country and then the highest score*/

SELECT *
FROM customers
ORDER BY country ASC, score DESC

-- Find the total score for each country

SELECT
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country

-- Find the total score and total number of customers for each country

SELECT
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country
