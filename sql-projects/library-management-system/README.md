# 📚 Library Management System (SQL Database + Analysis)

A SQL-based Library Management System built using MySQL to simulate real-world library database operations. This project demonstrates database design, relational modeling, CRUD operations, table relationships, joins, aggregate functions, subqueries, correlated subqueries, and analytical querying using SQL.

The project was created as part of my Data Analytics and Data Science learning journey to strengthen SQL fundamentals through a practical library management scenario.

---

## 📌 Project Overview

The Library Management System helps manage library-related information including:

- Book Records
- Member Information
- Book Transactions
- Book Issue and Return Tracking
- Fine Management

The project focuses on implementing relational database concepts and performing SQL queries to analyze books, members, transactions, categories, and fines.

---

## 🎯 Objectives

- Design a relational database from scratch
- Create tables with appropriate relationships
- Perform CRUD operations
- Maintain data integrity using constraints
- Practice SQL joins and aggregate functions
- Perform analysis using GROUP BY and HAVING
- Practice subqueries and correlated subqueries
- Analyze book transactions and fines
- Simulate a real-world library management system

---

## 🗂️ Database Structure

### 📚 Books Table

Stores book-related information:

- Book ID
- Book Name
- Author
- Category
- Publisher
- Edition
- Publication Year
- ISBN
- Total Copies
- Available Copies
- Shelf Location
- Price

---

### 👤 Members Table

Stores library member information:

- Member ID
- Member Name
- Phone Number
- Email
- Address
- Membership Date
- Membership Type
- Status

---

### 📋 Transactions Table

Stores book issue and return information:

- Transaction ID
- Member ID
- Book ID
- Issue Date
- Due Date
- Return Date
- Fine Amount
- Transaction Status

Examples of transaction status:

- Issued
- Returned
- Overdue

---

## 🔗 Relationships Implemented

The project uses relational database concepts.

### One-to-Many Relationships

- One Member → Multiple Transactions
- One Book → Multiple Transactions

### Referential Integrity

Implemented using:

- Primary Keys
- Foreign Keys
- UNIQUE Constraints
- NOT NULL Constraints
- ON DELETE CASCADE
- ON UPDATE CASCADE

The `transactions` table acts as the relationship between members and books.

---

## 📋 Project Workflow

### Phase 1: Database Design

Created the Library Management Database and designed tables for:

- Books
- Members
- Transactions

Established relationships using Primary Keys and Foreign Keys.

---

### Phase 2: Data Insertion

Inserted sample records for:

- Books
- Members
- Transactions

The sample data contains different book categories, member types, transaction statuses, prices, availability, and fine amounts to simulate real-world library operations.

---

### Phase 3: CRUD Operations

#### ➕ Create

Added new records such as:

- Books
- Members
- Transactions

---

#### 📖 Read

Retrieved records using SELECT statements.

Examples:

- Display all books
- Display selected book details
- Display books from a specific category
- Display active members
- Display issued transactions
- Display books based on price
- Display books based on publication year

---

#### ✏️ Update

Practiced updating existing records as part of CRUD operations.

---

#### 🗑️ Delete

Practiced deleting existing records as part of CRUD operations.

---

### Phase 4: Basic Data Analysis

Performed SQL analysis using:

- Aggregate Functions
- GROUP BY
- HAVING
- ORDER BY

Examples:

- Total number of books
- Total number of members
- Total book price
- Average book price
- Minimum and maximum book price
- Category-wise book count
- Category-wise average price
- Category-wise total price
- Categories based on book count
- Categories based on average price
- Categories based on total price

---

### Phase 5: Filtering & Sorting Analysis

Performed analytical queries using conditions and sorting.

Examples:

- Books costing more than ₹500
- Books with low availability
- Available books
- Books published after 2020
- Books costing more than ₹700
- Books ordered by price
- Categories ordered by total price
- Categories ordered by number of books

---

### Phase 6: Subquery Analysis

Used subqueries to perform comparisons against overall dataset values.

Examples:

- Books priced above the average book price
- Members who paid a fine greater than the average fine
- Finding the most expensive book
- Finding the least expensive book

---

### Phase 7: Correlated Subquery Analysis

Used correlated subqueries to perform category-level comparisons.

Example:

- Finding the most expensive book in each category

The subquery references the category from the outer query to calculate the maximum price for the current category.

---

### Phase 8: JOIN Analysis

Used INNER JOIN to combine information from:

- Books
- Members
- Transactions

Examples:

- Member and book transaction details
- Issued books
- Books with fines
- Overdue transactions
- AI category books
- Books above a specific price
- Returned books
- Student members with expensive books

---

### Phase 9: JOIN + Aggregation Analysis

Combined joins with aggregate functions to generate analytical insights.

Examples:

- Total fine paid by each member
- Number of transactions for each book
- Top 3 members based on total fine
- Category-wise overdue book analysis
- Category-wise total fine
- Category-wise average fine

---

### Phase 10: LEFT JOIN Analysis

Used LEFT JOIN to include records even when related transaction records do not exist.

Examples:

- All members with their total transactions
- All members with their total fines
- All books with their total issued transactions
- Members with no transactions
- Books that have never been issued

Used `COALESCE()` to handle NULL fine values when required.

---

## ⚙️ SQL Concepts Applied

### 🏗️ Database Design

- CREATE DATABASE
- USE
- CREATE TABLE
- AUTO_INCREMENT
- PRIMARY KEY

### 🔒 Constraints

- NOT NULL
- UNIQUE
- FOREIGN KEY
- ON DELETE CASCADE
- ON UPDATE CASCADE

### 🔄 CRUD Operations

- INSERT
- SELECT
- UPDATE
- DELETE

### 🔗 Joins

- INNER JOIN
- LEFT JOIN

### 📊 Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

### 📈 Data Analysis

- WHERE
- GROUP BY
- HAVING
- ORDER BY
- LIMIT

### 🔍 Subqueries

- Scalar Subqueries
- Aggregate Subqueries
- Correlated Subqueries

### 🧮 Additional SQL Concepts

- COALESCE()
- Column Aliases
- Multiple Conditions
- Filtering Before Aggregation
- Filtering After Aggregation

---

## 📁 Project Files

### library_management_system_schema.sql

Contains:

- Database Creation
- Table Creation
- Table Structure
- Primary Keys
- Foreign Keys
- Constraints
- Sample Data Insertion

---

### library_management_system_crud_analysis.sql

Contains:

- SELECT Queries
- CRUD Practice
- Filtering Queries
- Sorting Queries
- Basic Book Analysis
- Basic Member Analysis
- Transaction Analysis

---

### library_management_system_advance_analysis.sql

Contains:

- Aggregate Analysis
- GROUP BY & HAVING
- INNER JOIN
- LEFT JOIN
- JOIN + Aggregation
- Subqueries
- Correlated Subqueries
- Fine Analysis
- Category-wise Analysis
- Top-N Analysis

---

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench

---

## 📈 Skills Demonstrated

### SQL Fundamentals

- Database Creation
- Table Design
- Data Manipulation
- Query Writing
- Data Filtering
- Data Sorting

### Relational Database Concepts

- Primary Keys
- Foreign Keys
- Table Relationships
- Referential Integrity
- Constraints

### SQL Analysis

- Aggregate Functions
- GROUP BY
- HAVING
- Joins
- Subqueries
- Correlated Subqueries
- NULL Handling

### Business-Oriented Querying

- Book Analysis
- Category Analysis
- Member Analysis
- Transaction Analysis
- Fine Analysis
- Availability Analysis

---

## 📚 Learning Outcomes

Through this project, I strengthened my understanding of:

- Relational Database Design
- CRUD Operations
- Primary and Foreign Keys
- Table Relationships
- SQL Joins
- Aggregate Functions
- GROUP BY and HAVING
- Subqueries
- Correlated Subqueries
- LEFT JOIN and NULL Handling
- Analytical SQL Querying
- Real-World Database Modeling

---

## 🚀 Future Improvements

Potential future enhancements include:

- Book Reservation System
- Fine Payment Tracking
- Book Availability Alerts
- Member Borrowing History
- Stored Procedures
- Triggers
- Views
- Advanced Reporting Dashboard
- Power BI Integration

---

## 👨‍💻 Author

**Anurag Gupta**
