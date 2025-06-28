Query Data(SELECT)
SQL Query: used to talk with the data 
SELECT statemt is used inorder to read something from the database 
SQL Query clauses:
each SQL query has different sections / componets called as components. These can be used to write a query that matches any question about the data.
different ones are like follows:
- SELECT
- DISTINCT
- TOP
- FROM
- JOIN
- WHERE
- GROUP BY
- HAVING
- ORDER BY
Select all columns:
query:
SELECT *
FROM Table
SELECT * : Retrives All columns 
From: Tells SQL where to find the data

Select few columns:
- choose columns
- select the only columns we need instead of all

``` SELECT
Col 1,
Col 2
FROM Table
```

WHERE:
Filters the data based on a condition
eg scores higher than 500
Query: SELECT *
FROM Table
WHERE Condition

Order bY:
sorting the data either ascending or descending
Syntax:
SELECT *
FROM Table
ORDER BY column_name ASC/DEsC
default is ASC
Nester orderby: using multiple columns
Syntax:
SELECT *
FROM Table
ORDER BY 
    column1_name ASC/DEsC,
    column2_name ASC/DEsC

Group By:
- combines rows with the same value
- Aggregates a column by another column
Syntax:
SELECT
    category1,
    aggregation(category2) AS new_Column_name --> AS is Alias
FROM Table
GROUP BY category1

HAVING Clause:
used for filtering the data after aggrigation, can be used only with group by
Syntax:
SELECT
    category1,
    SUM(category2)
FROM Table
GROUP BY category1
HAVING SUM(category2)_condition

Filtering data before the aggregation we use WHERE and if we want the filter after the aggregation we use HAVING

