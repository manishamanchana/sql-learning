-- Concatinate first name and country into one column

SELECT
first_name,
country,
CONCAT(first_name, '-', country) AS name_country
FROM customers;

-- Transform the first name into lowercase

SELECT
first_name,
country,
LOWER(first_name) AS low_name
FROM customers;

-- Transform the first name into upparcase

SELECT
first_name,
country,
UPPER(first_name) AS low_name
FROM customers;

-- Find customers whose first name contains leading or trailing spaces
SELECT
    first_name
FROM customers
WHERE first_name != TRIM(first_name)

-- Remove dashes(-) from a phone number

-- Replace File Extence from txt to csv

-- Calculate the length of each customer's first name.
SELECT 
first_name,
LEN(first_name) AS len_name
FROM customers

-- Retrieve the first two characters of each first name
SELECT
    first_name,
    LEFT(TRIM(first_name), 2) first_2_char
FROM customers

-- Retrieve the last two characters of each first name
SELECT
    first_name,
    RIGHT(TRIM(first_name), 2) first_2_char
FROM customers

-- Retrieve a list of customer's first names after removing the first character.
SELECT
first_name,
SUBSTRING(TRIM(first_name),2, LEN(first_name))
FROM customers