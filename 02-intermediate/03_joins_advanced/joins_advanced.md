# Advanced SQL Joins

This section covers non-standard joins used in more advanced SQL querying scenarios, including anti joins and cross joins.

---

## Left Anti Join

**Definition:**  
Returns rows from the **left table** that have **no match** in the right table.

**Key Concept:**  
Table A is the primary data source. Table B is used for filtering (like a lookup).

**Syntax:**
```sql
SELECT *
FROM A
LEFT JOIN B
ON A.key = B.key
WHERE B.key IS NULL;
```

**Use Case:**  
Useful for **filtering out existing records** (e.g., finding records in A that are *not present* in B).

---

##  Right Anti Join

**Definition:**  
Returns rows from the **right table** that have **no match** in the left table.

**Key Concept:**  
Table B is the primary source; Table A is used just for filtering.

**Syntax:**
```sql
SELECT *
FROM A
RIGHT JOIN B
ON A.key = B.key
WHERE A.key IS NULL;
```

**Use Case:**  
Similar to Left Anti Join, but with the **roles of the tables reversed**.

---

##  Full Anti Join

**Definition:**  
Returns **only** rows that have **no match in either** of the tables.

**Syntax:**
```sql
SELECT *
FROM A
FULL JOIN B
ON A.key = B.key
WHERE A.key IS NULL
   OR B.key IS NULL;
```

**Use Case:**  
Used to identify **non-overlapping records** between two datasets — helps in **data validation** or **synchronization checks**.

---

##  Cross Join

**Definition:**  
Combines **every row** from the left table with **every row** from the right table — results in a **Cartesian product**.

**Syntax:**
```sql
SELECT *
FROM A
CROSS JOIN B;
```

**Use Case:**  
Used when you need **all possible combinations** of two datasets — e.g., for generating test matrices or pairing scenarios.

---

> ⚠️ **Note:**  
For anti joins, the **order of tables is important** — it determines which table is considered the main source and which is used for exclusion/filtering.

---