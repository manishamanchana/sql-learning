NULL FUNCTIONS:
NULL means nothing, it is not equal to anything,
it is not:
    - NULL is not zero
    - NULL is not empty string
    - NULL is not blank space
NULL Functions can be used for
1.Replace values:
Replaces values form null to values or values to NULL
a. ISNULL:
Replaces 'NULL' with a specified value
Syntax:
ISNULL(value, replacement_value)

b. COALESCE:
Returns the first non-null value from a list
syntax: COALESCE(value1,value2,value3,...)
if value 1 is null it replaces with value 2, if value 2 is null it replaces with vaue 3 and so on.
ISNULL VS COALESCE
ISNULL|COALACE
|----|--------
Limited to 2 values|unlimited
Fast|slow
different keyword for different databases SQL server->ISNULL, Oracle->NVL,MySQL->IFNULL | Available in all databases
Usecase- Handling NULLS
Data Aggregation:
-Handle nULL before doing data aggregations:
SQL aggregate functions completely ignore if a value is NULL with exception of COUNT(*) which does not look at value but rows instead
- Handle the NULLS before any mathematical operations
- Handle the NULL before JOINING tables
While performing joins, if we have null in keys we get unexpected results or some entries may be missed completely.
- Handle the NULLs before sorting the data 
c. NULLIF :
Compares two expressions and returns:
- NULL if they are equal and 
- First value if they are not equal
Syntax: NULLIF(Value1,Value2)
Use Cases:
Division By Zero: preventing the error of dividing by zero
2. Check for NULLs
does not replace values instead check if the values or NULL or NOTNULL and returns boolean values true or false
a. IS NULL:
Returs TRUE if the value IS NULL, else returns FALSE
Syntax: Value IS NULL
Use case:
- Searching for missing data
- Finding the unmatched rows between two tables Left anti join, right anti join
b. IS NOT NULL
Returs TRUE if the value IS NOT NULL, else returns FALSE
Syntax: Value IS NOT NULL
Use case:
- Searching for missing data/ not missing data


NULL vs Empty vs Space

# NULL vs Empty String vs Blank Space

| Category     | NULL           | Empty String (`''`)     | Blank Space (`' '`)          |
|--------------|----------------|--------------------------|-------------------------------|
| **Representation** | `NULL`          | `''`                     | `' '`                         |
| **Meaning**        | Unknown         | Known, Empty Value       | Known, Space Value            |
| **Data Type**      | Special Marker  | String (length 0)        | String (1 or more characters) |
| **Storage**        | Very minimal    | Occupies memory          | Occupies memory *(each space)* |
| **Performance**    | Best            | Fast                     | Slow                          |
| **Comparison**     | `IS NULL`       | `= ''`                   | `= ' '`                       |


Handling Nulls
Data plocies : Set of rules that defines how data should be handled
Examples:
#1 Only use NULLs and empty strings, avoid using blank spaces
TRIM: Removes unwanted leading and trailing spaces from a string
#2 Only use nulls and avoid using empty strings and blank spaces
#3 Use the default value 'unknown' and avoid using nulls, empty strings and blank spaces.

#2 data polict use case:
Replacing empty strings and blanks with NULL during data preparation before inserting into a database to optimize storage and performance

#3 data policy use case:
Replacing empty strings, blanks, NULL with default value
during data preparation before using it in reporting
to improve readability and reduce confusion

Summary:
# NULL Functions

## Overview
- **NULLs** are special markers representing **missing values**.
- Using NULLs can **optimize storage and performance**.

---

## Common NULL Functions

| Function     | Description                                           |
|--------------|-------------------------------------------------------|
| `COALESCE`   | Returns the first non-NULL value                     |
| `ISNULL`     | Replaces NULL with a specified value                 |
| `NULLIF`     | Returns NULL if the two arguments are equal          |
| `IS NULL`    | Checks if a value is NULL → returns `TRUE`           |
| `IS NOT NULL`| Checks if a value is not NULL → returns `FALSE`      |

---

## Use Cases

- Handle NULLs – **Data Aggregation**
-  Handle NULLs – **Mathematical Operations**
-  Handle NULLs – **Joining Tables**
-  Handle NULLs – **Sorting Data**
-  Finding unmatched data – **Left Anti Join**
-  Enforcing **Data Policies**:
  - Allow NULLs
  - Set **Default Values**
