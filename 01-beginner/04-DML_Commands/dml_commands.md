# Data Manipulation Language (DML)

**DML (Data Manipulation Language)** is used to **modify, insert, update, or delete** data in the database tables.

---

## `INSERT` – Add New Rows

### Manual Insertion

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

- Adds new rows to a table.
- If the table already contains data, new rows are appended.
- Columns and values **must be in the same order**.
- If no columns are specified, values must be provided **for all columns** in the correct order.
- Columns not mentioned in the `INSERT` will get `NULL` unless a **default value** or **constraint** exists.
- **Best Practice**: Always specify column names for clarity and maintainability.

### Insert Using SELECT

Used to copy data from a source table to a target table.

```sql
INSERT INTO target_table (column1, column2)
SELECT column1, column2
FROM source_table
WHERE condition;
```

- Common in ETL workflows and data migrations.

---

## `UPDATE` – Modify Existing Rows

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;
```

- Updates values in one or more rows.
- ⚠️ **Always use `WHERE`** to avoid updating all rows unintentionally.

---

## `DELETE` – Remove Specific Rows

```sql
DELETE FROM table_name
WHERE condition;
```

- Deletes rows that match a condition.
- ⚠️ **Never omit the `WHERE` clause** unless you want to delete **all rows**.

### Best Practice
Before running `DELETE`, run a `SELECT` query with the same condition to confirm:

```sql
SELECT * FROM table_name
WHERE condition;
```

---

## `TRUNCATE` – Remove All Rows Quickly

```sql
TRUNCATE TABLE table_name;
```

- Deletes **all rows** from a table instantly.
- Faster than `DELETE` because it doesn’t log each row deletion.
- Cannot be rolled back in many systems.

---

## Summary

| Command   | Purpose                                 | Caution                     |
|-----------|------------------------------------------|-----------------------------|
| `INSERT`  | Add new data to a table                  | Match columns and values    |
| `UPDATE`  | Modify existing data                     | Use `WHERE` to limit scope  |
| `DELETE`  | Remove specific rows                     | Use `WHERE` carefully       |
| `TRUNCATE`| Remove all rows instantly (no logging)   | Cannot target specific rows |
