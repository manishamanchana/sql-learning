-- USE SalesDB;

SELECT
OrderID,
CreationTime,
'2025-07-14' HardCodes,
GETDATE() Today
FROM Sales.Orders


SELECT
OrderID,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders


SELECT
OrderID,
CreationTime,
-- DATETRUNC Examples
DATETRUNC(minute,CreationTime) Minute_dt,
DATETRUNC(day,CreationTime) Day_dt,
DATETRUNC(year,CreationTime) year_dt,
-- DATENAME Exxamples
DATENAME(month,CreationTime) Month_dn,
DATENAME(weekday,CreationTime) weekday_dn,
DATENAME(day,CreationTime) day_dn, -- This is a string output
DATENAME(year,CreationTime) year_dn, -- This is a string output
-- DATEPART Examples
DATEPART(year,CreationTime) year_dp,
DATEPART(month,CreationTime) Month_dp,
DATEPART(day,CreationTime) Day_dp,
DATEPART(hour,CreationTime) hour_dp,
DATEPART(quarter, CreationTime) Quarter_dp,
DATEPART(week, CreationTime) Week_dp,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders


SELECT
OrderID,
CreationTime,
EOMONTH(CreationTime) EndOfMonth,
DATETRUNC(month, CreationTime) StartOfMonth
FROM Sales.Orders

-- How many orders were placed each year?
SELECT
YEAR(OrderDate),
COUNT(*) NoOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)

-- How many orders were placed each month?
SELECT
DATENAME(month, OrderDate),
COUNT(*) NoOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month, OrderDate)

-- Show all the orders that were placed during the month of february
SELECT
*
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2

SELECT
OrderID,
CreationTime,
FORMAT(CreationTime,'MM-dd-yyy') USA_Format,
FORMAT(CreationTime,'dd-MM-yyy') EURO_Format,
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MMM') MMM,
FORMAT(CreationTime, 'MMMM') MMMM
FROM Sales.Orders

-- Show CreationTime using the following format:
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT
OrderID,
CreationTime,
'Day '+FORMAT(CreationTime,'ddd MMM') +
' Q'+DATENAME(quarter,CreationTime) + ' ' +
FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS CustomeFormat
FROM Sales.Orders