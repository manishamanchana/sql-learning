# 📘 SQL Notes

## **SQL (Structured Query Language)**
SQL is used to communicate with a database—primarily for querying, updating, and managing data.

---

## **DBMS & SQL Server**

**Database Management System (DBMS)** is software that handles requests made to the database. It manages:
- Execution priorities for SQL queries
- Access control and security
- Data consistency and concurrency

### ⭐️ Key Points:
- **Database**: Stores data  
- **SQL**: Language used to interact with the database  
- **DBMS**: Manages and organizes how the database operates  
- **Server**: The physical or cloud location where the database resides

![alt text](<Screenshot 2025-06-15 at 00.23.02-1.png>)

---

## **Types of Databases**

### 1. **Relational Database**
- Structured like spreadsheets with rows and columns.
- Relationships exist between tables.
- 📌 Examples: `Microsoft SQL Server`, `MySQL`, `PostgreSQL`

### 2. **Key-Value Store**
- Stores data as key-value pairs (like a dictionary).
- Highly performant for simple queries.
- 📌 Examples: `Redis`, `Amazon DynamoDB`

### 3. **Column-Based Database**
- Data is stored and queried by columns rather than rows.
- Efficient for large-scale data and analytics workloads.
- 📌 Examples: `Apache Cassandra`, `Amazon Redshift`

### 4. **Graph-Based Database**
- Designed to represent and query relationships between entities.
- Ideal for social networks, recommendation systems, etc.
- 📌 Example: `Neo4j`

### 5. **Document-Oriented Database**
- Stores data as JSON-like documents.
- Schema-flexible; each document can have a different structure.
- 📌 Example: `MongoDB`

> **📝 Note:**  
> - **Relational Databases** are often referred to as **SQL Databases**.  
> - The rest (Key-Value, Column-Based, Graph, Document) are commonly grouped as **NoSQL Databases**.

---

