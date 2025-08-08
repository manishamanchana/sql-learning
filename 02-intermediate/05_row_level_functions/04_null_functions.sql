-- Find average scores for the customers
SELECT
CustomerID,
Score,
COALESCE(Score,0) Score2,
AVG(Score) OVER () AVGScores,
AVG(COALESCE(Score,0)) OVER() AvgScores2
FROM Sales.customers

-- Display the full name of customers in a single field
-- by merging their first and last names,
-- and add 10 bonus points to each customer's score.
SELECT
CustomerID,
FirstName,
LastName,
FirstName+' '+COALESCE(LastName,'') AS FullName,
Score,
COALESCE(Score,0) + 10 AS ScoreWithBonus
FROM Sales.Customers

-- Sort the customers from lowest to highest scores,
-- with nulls appearing last
SELECT
CustomerID,
Score
FROM Sales.Customers
ORDER BY Score
-- Method 1 : replacing null with a large number

SELECT
CustomerID,
Score,
COALESCE(Score,9999999999),
CASE WHEN Score IS NULL THEN 1 ELSE 0 END
FROM Sales.Customers
ORDER BY Score

-- Method 2

SELECT
CustomerID,
Score,
CASE WHEN Score IS NULL THEN 1 ELSE 0 END Flag
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score

-- Find the sales price for each order by dividing the sales by the quantity.
SELECT 
OrderID,
Sales,
Quantity,
Sales / NULLIF(Quantity,0) AS Price
From Sales.Orders

-- Indentify the customers who have no Scores
SELECT
*
FROM Sales.Customers
WHERE Score IS NULL

-- List all customers who have scores
SELECT
*
FROM Sales.Customers
WHERE Score IS NOT NULL

-- List of details for customers who have not placed any orders
SELECT
c.*,
o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL
