# SQL Set Operators

Set operators are used to **combine rows** from two or more result sets (tables or queries). Unlike joins that combine columns side by side, set operators **stack rows vertically**.

---

## What Are Set Operators?

Set operators perform **row-level combination** of two queries. The number of columns and their **data types must match** in both queries.

---

## Rules for Set Operators

1. **SQL Clauses**:
   - SET operators can be used in clauses like `WHERE`, `JOIN`, `GROUP BY`, and `HAVING`.
   - `ORDER BY` can be used **only once** at the **end of the final query**.

2. **Number of Columns**:
   - Both queries must return the **same number of columns**.

3. **Data Types**:
   - Columns must have **compatible data types** (e.g., you can’t combine `VARCHAR` with `INT`).

4. **Order of Columns**:
   - The **order of columns** must match in both queries.

5. **Column Aliases**:
   - The column names in the final result are **taken from the first query**.

6. **Correct Columns**:
   - Even if all syntactic rules are followed, using incorrect columns can lead to **incorrect results**.
   - It's the **coder’s responsibility** to ensure meaningful and valid column selections.

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
## Operator-Specific Notes

### `UNION`
- Returns all **distinct and unique** rows from both queries.
- Removes duplicate rows.
- The **order of queries does not affect** the result.
- Use when you want to **merge and deduplicate** datasets.

### `UNION ALL`
- Returns **all rows**, including duplicates.
- Faster than `UNION`, because it **doesn't sort or remove duplicates**.
- Useful for **performance** when you're sure there are no duplicates.
- Can be used in **data quality checks** to help **identify duplicates**.

**UNION vs UNION ALL**:
- Use `UNION` when you want **unique results**.
- Use `UNION ALL` for **faster performance** when duplicates don't matter or are required.

### `EXCEPT`
- Returns **distinct rows** from the **first query** that are **not in the second**.
- The **order of queries matters** – switching them changes the result.

### `INTERSECT`
- Returns only the rows that are **common to both queries**.
- The **order of queries does not matter**.

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

## Use Cases for Set Operators

### Union:
- Combine similar data **before analysis**, such as merging results from different regions or time periods.
- `UNION` or `UNION ALL` can be used to prepare datasets from multiple sources.
- `INTERSECT` and `EXCEPT` are helpful in **existence checks**, **quality controls**, and **comparative reports**.

### Except:
- We can use 



---

## Best Practices

- Avoid using `SELECT *` with set operators. Always **specify the exact columns** to ensure clarity and prevent mismatches.
- Be cautious about **data types and column order**—a mismatch won't throw an error in all systems but can cause logic issues.
- Test each individual query separately before combining them to verify their structure and content.