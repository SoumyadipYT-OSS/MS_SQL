# What is SQL Server?

**SQL Server** is a **Relational Database Management System (RDBMS)** developed by **Microsoft** that is used to **store, manage, and retrieve structured data**. It allows users and applications to interact with databases using **Structured Query Language (SQL)**.

SQL Server is widely used in **enterprise systems, web applications, data analytics platforms, and business intelligence solutions** because it provides powerful features for **data storage, security, performance optimization, and scalability**.

In simple terms:

> SQL Server is software that stores data in databases and allows users or applications to retrieve and manipulate that data using SQL queries.

---

# How SQL Server Works

SQL Server uses a **client-server architecture**.

- The **SQL Server Database Engine** acts as the server that manages databases.
- **Clients** such as applications, APIs, or tools send SQL queries to the server.
- The server processes the query and returns the requested results.

Typical workflow:

1. A user or application sends a SQL query.
2. SQL Server processes the query.
3. The database engine retrieves or modifies the data.
4. Results are returned to the client.

---

# Key Components of SQL Server

## 1. Database Engine

The **Database Engine** is the core service of SQL Server. It is responsible for:

- Storing and managing data
- Processing SQL queries
- Managing transactions
- Handling authentication and security

---

## 2. Databases

A **database** is a structured collection of data stored in SQL Server.

Each database contains multiple objects such as:

- Tables
- Views
- Stored Procedures
- Functions
- Indexes
- Triggers

Example structure:
CompanyDatabase
├── Tables
│ ├── Employees
│ └── Departments
├── Views
├── Stored Procedures


---

## 3. Tables

Tables store data in a **structured format using rows and columns**.

Example table:

| EmployeeID | Name  | Department |
|------------|-------|------------|
| 1 | Alice | HR |
| 2 | Bob | IT |

Each row represents a **record**, and each column represents a **field**.

---

## 4. SQL Queries

SQL Server uses **SQL (Structured Query Language)** to interact with the database.

Example query:

```sql
SELECT Name, Department
FROM Employees
WHERE Department = 'IT';
```
This query retrieves employees who work in the IT department.

--- 

### SQL Server Architecture 
<div>
    <img src="../Images/SqlServerArchitecture.png" alt="SQL Server Architecture PNG" width=800 height=550 />
</div>
