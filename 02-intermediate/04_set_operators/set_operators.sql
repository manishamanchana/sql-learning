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

-- Find the employees who are also customers

SELECT
    FirstName,
    LastName
FROM Sales.Employees

INTERSECT

SELECT
    FirstName,
    LastName
FROM Sales.Customers

/*
Orders are stored in seperate tables(Orders and OrderArchive).
Combine all orders into one report without duplicates.
*/

SELECT 
    'Orders' AS SourceTable
      ,[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM
Sales.Orders

UNION

SELECT
    'OrdersArchive' AS SourceTable
      ,[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM
Sales.OrdersArchive
ORDER BY OrderID