-- Conditional operators
-- Retrieve all customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrive all customers who are not from Germany
SELECT *
FROM customers
WHERE country <> 'Germany' -- != and <> gives the same results

-- Retrieve all customers with a score greater than 500
SELECT * 
FROM customers
WHERE score>500

-- Retrieve all customers with a score of 500 or more

SELECT *
FROM customers
WHERE score >= 500

-- Retrieve all customers with a score less than 500
SELECT * 
FROM customers
WHERE score < 500

-- Retrieve all customers with a score of 500 or less
SELECT * 
FROM customers
WHERE score <= 500

-- Logical operators
-- AND operator practice task

-- Retrieve all customers who are from the USA AND have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

-- OR operator practice tasks

-- Retrieve all customers who are either from the USA OR have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

-- Retrieve all customers whose score falls in the range between 100 and 500

-- SELECT *
-- FROM customers
-- WHERE score >= 100 AND score <= 500

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500

-- Retrieve all customers from either Germany or USA

-- SELECT *
-- FROM customers
-- WHERE country = 'USA' OR country = 'Germany'


SELECT *
FROM customers
WHERE country IN ('USA','Germany')

-- Find all customers whose first name startes with 'M'

SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with 'n'

SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%';