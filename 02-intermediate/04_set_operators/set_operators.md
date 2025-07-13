# SQL Set Operators

Set operators are used to **combine rows** from two or more result sets (tables or queries). Unlike joins that combine columns side by side, set operators **stack rows vertically**.

---

## What Are Set Operators?

Set operators perform **row-level combination** of two queries. The number of columns and their **data types must match** in both queries.

---

## Rules for Set Operators

1. Both queries must return the **same number of columns**.
2. Columns must have **compatible data types** (e.g., you can’t combine `VARCHAR` with `INT` directly).
3. The **column names** in the final output are taken from the **first query**.

---

## Types of Set Operators

| Operator     | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| `UNION`      | Combines and returns **distinct rows** from both queries                    |
| `UNION ALL`  | Combines and returns **all rows**, including duplicates                     |
| `INTERSECT`  | Returns only the **rows common** to both queries                            |
| `EXCEPT`     | Returns rows from the first query that **do not appear** in the second one  |

> `EXCEPT` is known as `MINUS` in some database systems like Oracle.

---
## Syntax for SQL Set Operators

```sql
SELECT column1, column2, ..., columnN
FROM Table1

<SET OPERATOR>

SELECT column1, column2, ..., columnN
FROM Table2;
```

### Replace `<SET OPERATOR>` with:

- `UNION` – combines and returns distinct rows.
- `UNION ALL` – combines and returns all rows (including duplicates).
- `INTERSECT` – returns only the common rows.
- `EXCEPT` or `MINUS` – returns rows from the first query not found in the second.

### Notes:

- The number and order of columns must match in both `SELECT` statements.
- The data types of each column should be compatible across both queries.
- The result takes column names from the **first `SELECT` statement**.

RULES OF SET OPERATORS

#1 Rule | SQL CLAUSES
- SET operators can be used almost in all clauses like WHERE|JOIN|GROUP BY|HAVING
- ORDER BY  it is allowed to use only once at the end of query

#2 Rule | Number of columns
- The number of columns in each query must be the same

#3 Rule | Data Types
Data types of columns in each query must match

#4 RULE | ORDER OF COLUMNS
- the order of the columns in each query must be the same 

#5 RULE | COLUMN ALIASES
The column names in the result are determined by the column names specified in the first query, i.e., the 1st query controls the column names

#6| CORRECT COLUMNS
- Even if the rules are met and SQL doesn't give any errors and the results are still incorrect it is the responibility of the coder not SQL, incorrect column selection will lead to incorrect results.

UNION
- returns all distinct and unique rows from both, removes all duplicate rows from the result
Union makes sure that each row appeares only once.
- The order of queries does not effect the results.

Union All
- returns all the rows from both the queries, it does not remove any duplicates instead shows all the rows as it is

union vs union all
union all is faster that union, hence if we know that there are no duplicates it is better to use union all.
union all can also be used to find duplicates for data quality checks etc

EXCEPT:
- returns the distinct rows from the first query that are not present in the second query
- the order of the queries affect the end results it is very important

INTERSECT
Returns only the rows that are common in both queries