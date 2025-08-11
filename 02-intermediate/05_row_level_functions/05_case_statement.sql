/* Create a report showing total sales for each of the following categories:
High(sale over 50), Medium (sale 21-50), and Low (sale 20 or less)
Sort the categories from highest sales to lowest */


SELECT
Category,
SUM(Sales) AS TotalSales
FROM(
    SELECT
    OrderID,
    Sales,
    CASE
        WHEN Sales > 50 THEN 'High'
        WHEN Sales > 20 THEN 'Medium'
        ELSE 'Low'
    END Category
    FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC