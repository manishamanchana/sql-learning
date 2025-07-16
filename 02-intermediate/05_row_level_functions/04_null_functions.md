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
different keyword for different databases SQL server->ISNULL, Oracle->NVL,MySQL->IFNULL|Available in all databases
Usecase- Handling NULLS
Data Aggregation:
-Handle nULL before doing data aggregations:
SQL aggregate functions completely ignore if a value is NULL with exception of COUNT(*) which does not look at value but rows instead
- Handle the NULLS before any mathematical operations
- Handle the NULL before JOINING tables
c. NULLIF
2. Check for NULLs
does not replace values instead check if the values or NULL or NOTNULL and returns boolean values true or false
a. IS NULL
b. IS NOT NULL