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

Comparison operators are used in SQL to **compare two values or expressions**. These comparisons are commonly used in `WHERE` clauses or conditional logic.

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

 These comparisons are powerful tools to build flexible filtering and conditional logic in the SQL queries.

# SQL Logical Operators

Logical operators in SQL are used to **combine multiple conditions** in a `WHERE` clause to refine your queries.

---

##  Overview of Logical Operators

| Operator  | Description                                   |
|-----------|-----------------------------------------------|
| `AND`     | All conditions must be TRUE                   |
| `OR`      | At least one condition must be TRUE           |
| `NOT`     | Excludes rows that match a specified condition|
| `BETWEEN` | Checks if a value falls within a range        |
| `IN`      | Checks if a value exists in a list            |
| `LIKE`    | Searches for a pattern in text                |

---

##  Example Queries

###  AND
SQL is very restrictive when this condition is used, both of the conditions must be true for the query to include the perticular row in the result i.e., BOTH the conditions must be TRUE

```sql
SELECT * FROM table_name
WHERE condition1 AND condition2;
```

###  OR
less restrictive than AND condition, it is enough to have one condition true in order to keep the row in the result i.e., atleat one condition must be TRUE

```sql
SELECT * FROM table_name
WHERE condition1 OR condition2;
```

###  NOT

it is a reverse operator or it excludes matching values, it is not used to combine 2 operators, it can be used with only one condition

```sql
SELECT * FROM table_name
WHERE NOT condition;
```

###  BETWEEN
the lowerbound and upper bound are inclusive

```sql
SELECT * FROM table_name
WHERE column_name BETWEEN lower_bound AND upper_bound;
```

###  IN

Tip: Use IN instead of OR for multiple values in the same column to simplify SQL

```sql
SELECT * FROM table_name
WHERE column_name IN list_of_column_values;
```

###  LIKE

```sql
SELECT * FROM Employees
WHERE FirstName LIKE 'A%';  -- Names starting with A
```

---

 These operators help build complex filters and conditions to retrieve exactly the data you need.

