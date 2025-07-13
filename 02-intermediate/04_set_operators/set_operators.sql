/*
Combine the data from
employees and customers nto one table
*/


SELECT
    FirstName,
    LastName
FROM Sales.Employees

UNION

SELECT
    FirstName,
    LastName
FROM Sales.Customers

/*
Combine the data from
employees and customers nto one table,
including duplicates
*/
SELECT
    FirstName,
    LastName
FROM Sales.Employees

UNION ALL

SELECT
    FirstName,
    LastName
FROM Sales.Customers

-- Find the employees who are not customers at the same time

SELECT
    FirstName,
    LastName
FROM Sales.Employees

EXCEPT

SELECT
    FirstName,
    LastName
FROM Sales.Customers