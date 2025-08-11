# NULL Functions in SQL

## What is NULL?

- `NULL` represents **missing or unknown** data.
- It is **not**:
  - Zero (`0`)
  - An empty string (`''`)
  - A blank space (`' '`)

---

## Types of NULL Functions

### 1. **Replace NULL Values**

These functions help **replace** `NULL` values with meaningful data.

#### a. `ISNULL`
- Replaces `NULL` with a specified value.
- **Syntax**: `ISNULL(value, replacement_value)`

#### b. `COALESCE`
- Returns the **first non-NULL** value from a list.
- **Syntax**: `COALESCE(value1, value2, value3, ...)`

> If `value1` is NULL → checks `value2`, if that is also NULL → checks `value3`, and so on.

#### c. `NULLIF`
- Compares two expressions:
  - Returns `NULL` if they are equal.
  - Returns the **first value** if they are not equal.
- **Syntax**: `NULLIF(value1, value2)`

> **Use Case**: Preventing **division by zero**.

---

### ISNULL vs COALESCE

| Feature         | `ISNULL`                         | `COALESCE`                  |
|----------------|----------------------------------|-----------------------------|
| # of Arguments | Only 2                           | Multiple                    |
| Speed          | Fast                             | Slightly slower             |
| Compatibility  | DB-specific (e.g. SQL Server)    | Universal                   |
| Use Case       | Simple NULL handling             | Complex fallbacks           |

---

### 2. **Check for NULLs**

These functions return **boolean values** (`TRUE` or `FALSE`), instead of replacing data.

#### a. `IS NULL`
- Returns `TRUE` if the value **is NULL**, otherwise `FALSE`.
- **Syntax**: `column_name IS NULL`

**Use Cases**:
- Search for missing data
- Left Anti Join / Right Anti Join

#### b. `IS NOT NULL`
- Returns `TRUE` if the value **is NOT NULL**, otherwise `FALSE`.
- **Syntax**: `column_name IS NOT NULL`

---

## NULL vs Empty String vs Blank Space

| Category       | NULL               | Empty String (`''`)     | Blank Space (`' '`)          |
|----------------|--------------------|--------------------------|-------------------------------|
| Representation | `NULL`             | `''`                     | `' '`                         |
| Meaning        | Unknown            | Known, Empty Value       | Known, Space Value            |
| Data Type      | Special Marker     | String (length 0)        | String (length ≥ 1)           |
| Storage        | Minimal            | Uses memory              | Uses memory (per space)       |
| Performance    | Best               | Fast                     | Slower                        |
| Comparison     | `IS NULL`          | `= ''`                   | `= ' '`                       |

---

## Handling NULLs in SQL

### Why handle NULLs?

- **SQL Aggregate Functions** ignore `NULL` except `COUNT(*)`.
- Mathematical operations with `NULL` result in `NULL`.
- Joins with `NULL` keys may yield **incomplete or unexpected** results.
- Sorting with `NULL` values can mislead analysis.

---

## Data Policy Examples

### Policy #1:
- Allow only `NULL` and empty strings.
- Avoid blank spaces.
- Use `TRIM()` to remove leading/trailing spaces.

### Policy #2:
- Prefer `NULL` over empty strings or spaces.
- Use `NULL` during data preparation to **optimize performance** and **storage**.

### Policy #3:
- Replace all `NULL`, empty strings, and spaces with default like `'unknown'`.
- Useful in **reporting** for better **readability**.

---

## Summary

### Common NULL Functions

| Function        | Description                                      |
|-----------------|--------------------------------------------------|
| `COALESCE`      | First non-NULL value from the list               |
| `ISNULL`        | Replace NULL with a specified value              |
| `NULLIF`        | NULL if two values are equal                     |
| `IS NULL`       | Checks if value is NULL → returns `TRUE`         |
| `IS NOT NULL`   | Checks if value is NOT NULL → returns `TRUE`     |

---

### Use Cases for Handling NULLs

- Data Aggregation
- Mathematical Operations
- Table Joins
- Sorting
- Left/Right Anti Joins
- Data Cleaning and Preparation
- Enforcing Data Policies

