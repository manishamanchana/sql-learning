# Date & Time Functions

Date information can be:
- Selected from a column.
- Hardcoded as a string.
- Retrieved using the `GETDATE()` function.

You can:
- Extract parts of a date.
- Change the format of a date.
- Perform date calculations.
- Validate date values.

## Function Categories:

![alt text](image.png)

---

## 1. Part Extraction

| Function       | Description                                    | Returns   |
|----------------|------------------------------------------------|-----------|
| `DAY(date)`     | Returns day                                    | `INT`     |
| `MONTH(date)`   | Returns month                                  | `INT`     |
| `YEAR(date)`    | Returns year                                   | `INT`     |
| `DATEPART(part, date)` | Extracts a date part (e.g. `month`)     | `INT`     |
| `DATENAME(part, date)` | Returns name of part (e.g. 'Monday')   | `STRING`  |
| `DATETRUNC(part, date)` | Truncates date to specified part      | `DATE` or `DATETIME` |
| `EOMONTH(date)` | Returns end of month for given date            | `DATE`    |

---

## 2. Format & Casting

- **`FORMAT(value, format[, culture])`** – Format dates and numbers. culture is optional its default is **'en-US'**
- **`CONVERT(datatype, value, style)`** – Convert and style formats using numeric style codes. CONVERT(data_type,value[,style])
- **`CAST(value AS datatype)`** – Change the data type.

---

## 3. Calculations

- **`DATEADD(part, number, date)`** – Adds interval to a date.
- **`DATEDIFF(part, start_date, end_date)`** – Difference between two dates.

---

## 4. Validation

- **`ISDATE(value)`** – Returns 1 if the value is a valid date, else 0.

---

## Best Practices (Date & Time)

- Prefer **integers** over strings for better performance.
- Avoid using `DATENAME()` in filtering — use `DATEPART()` instead for better efficiency.

---

## SQL Date Functions & Return Types

| Function       | Purpose                                      | Returns     |
|----------------|----------------------------------------------|-------------|
| `DATEPART()`   | Extracts part of date                        | `INT`       |
| `DATENAME()`   | Returns name of part (e.g., 'Monday')        | `STRING`    |
| `DATETRUNC()`  | Truncates date to part (e.g., start of month)| `DATETIME`  |
| `EOMONTH()`    | End of the month                             | `DATE`      |

> `DATETRUNC()` may not be available in older SQL Server versions. Alternatives: `FORMAT()` or `DATEFROMPARTS()`.

---

## Set Operator Recap in Functions Context

- Use `UNION` / `UNION ALL` to combine string/date results across sources.
- Use `DATEADD`, `DATEDIFF`, `EOMONTH`, etc., in analysis over periods.
