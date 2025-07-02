# Data Definition Language (DDL)

**DDL (Data Definition Language)** is a subset of SQL used to **define, alter, and remove** the structure of database objects such as tables, schemas, or views.

---

## Key DDL Commands

### `CREATE`

Creates new database objects such as tables, schemas, or views.

```sql
CREATE TABLE Employees (
    ID INT,
    Name VARCHAR(100),
    Role VARCHAR(50)
);
```

**Purpose**: Define the table structure with specified column names and data types.

---

### `ALTER`

Modifies the structure of an existing table.

```sql
ALTER TABLE Employees
ADD Email VARCHAR(100);
```

**Common uses**:
- Add or remove columns
- Change data types
- Rename columns

---

### `DROP`

Deletes a database object permanently.

```sql
DROP TABLE Employees;
```

⚠️ **Warning**: `DROP` will remove the table and **all of its data** permanently. Use with caution.

---

## DDL Command Summary

| Command   | Purpose                              |
|-----------|--------------------------------------|
| `CREATE`  | Define a new table or database object |
| `ALTER`   | Modify the structure of an object     |
| `DROP`    | Delete a table or object permanently  |

---

**Tip**: DDL statements auto-commit in most SQL environments. Once executed, they cannot be rolled back unless explicitly wrapped in a transaction block (if supported).
