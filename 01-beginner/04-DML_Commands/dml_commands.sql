INSERT INTO customers(id, first_name, country, score)
VALUES
    (6, 'Anna', 'USA', NULL),
    (7,'Sam',NULL,100)

INSERT INTO customers(id, first_name, country, score)
VALUES
    (8,'USA','Max',NULL),
    (9,'Andreas','Germany',NULL),
    (10,'Sahra',NULL,NULL)


SELECT * FROM customers

-- Copy data from 'customers' table into 'persons'

INSERT INTO persons(id, person_name, birth_date, phone)
SELECT 
id,
first_name,
NULL,
'Unknown'
FROM customers

SELECT * FROM persons

/* Change the score of customer 6 to 0 */
UPDATE customers
SET score = 0
WHERE id = 6

SELECT * FROM customers

/* Change the score of customer with ID 10 to 0 and update the country */
UPDATE customers
SET score = 0,
    country='UK'
WHERE id = 10

SELECT * FROM customers

/*Update all customers with a NULL score by setting their score to 0 */
UPDATE customers
SET score = 0
WHERE score IS NULL

SELECT * FROM customers

-- Delete all customers with an ID greater than 5.

DELETE FROM customers
WHERE id > 5    

SELECT *
FROM customers

-- Delete all data from the table persons

TRUNCATE TABLE persons

