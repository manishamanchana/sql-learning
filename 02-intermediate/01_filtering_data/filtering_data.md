# SQL WHERE Clause Operators

The `WHERE` clause in SQL is used to **filter rows** based on specific conditions. It supports various types of operators to create flexible and powerful conditions.

---

## Types of WHERE Operators

### Comparison Operators
Used to compare two values.

| Operator | Meaning              |
|----------|----------------------|
| `=`      | Equal to             |
| `<>` or `!=` | Not equal to     |
| `>`      | Greater than         |
| `>=`     | Greater than or equal|
| `<`      | Less than            |
| `<=`     | Less than or equal   |

---

### Logical Operators
Combine multiple conditions.

| Operator | Description        |
|----------|--------------------|
| `AND`    | All conditions must be true |
| `OR`     | At least one condition must be true |
| `NOT`    | Reverses the condition |

---

### Range Operator

| Operator    | Description                              |
|-------------|------------------------------------------|
| `BETWEEN`   | Checks if a value falls within a range   |

```sql
SELECT * FROM Products
WHERE Price BETWEEN 100 AND 500;
```

---

### Membership Operators

| Operator  | Description                         |
|-----------|-------------------------------------|
| `IN`      | Matches a value in a list           |
| `NOT IN`  | Excludes values in a list           |

```sql
SELECT * FROM Customers
WHERE Country IN ('USA', 'UK', 'India');
```

---

### Search Operator

| Operator | Description                          |
|----------|--------------------------------------|
| `LIKE`   | Pattern matching with wildcards (%)  |

```sql
SELECT * FROM Employees
WHERE Name LIKE 'A%'; -- Names starting with A
```

---

These operators make it easier to target specific rows in SQL queries with precision and flexibility.

# SQL Comparison Operators

Comparison operators are used in SQL to **compare two values or expressions**. These comparisons return a boolean value (`TRUE` or `FALSE`) and are commonly used in `WHERE` clauses or conditional logic.

---

## General Structure of a Condition

```text
Expression  Operator  Expression
```

This allows us to compare two columns, values, functions, or even subqueries.

---

## Examples of Comparison Use Cases

### Column vs Column

```sql
first_name = last_name
```
Compare values from two columns in the same row.

---

### Column vs Value

```sql
first_name = 'John'
```
Compare a column's value to a fixed literal value.

---

###  Function vs Value

```sql
UPPER(first_name) = 'JOHN'
```
Use a SQL function in the comparison (e.g., `UPPER()`, `LOWER()`, `LEN()`).

---

###  Expression vs Value

```sql
Price * Quantity = 1000
```
Perform arithmetic operations and compare the result to a constant.

---

### Subquery vs Value (Advanced)

```sql
(SELECT AVG(sales) FROM orders) = 1000
```
Compare the result of a **subquery** to a fixed value. Useful in analytical queries.

---

 These comparisons are powerful tools to build flexible filtering and conditional logic in your SQL queries.
