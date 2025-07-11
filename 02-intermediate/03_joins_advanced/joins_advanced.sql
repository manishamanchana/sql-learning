/* Get all customers who haven't placed any order*/

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

/* Get all orders without matching customers*/
SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

/* Get all orders without matching customers
(Using LEFT JOIN)*/
SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL

/* Find customers without orders
and orders without customers */
SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE
        c.id IS NULL
    OR
        o.customer_id IS NULL

/*
Get all customers along with their orders,
but only for customers who have placed an order
(Without using INNER JOIN)
*/

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id
WHERE o.customer_id IS NOT NULL

/* Generate all possible combinations of cusomers and orders. */

SELECT *
FROM customers
CROSS JOIN orders
