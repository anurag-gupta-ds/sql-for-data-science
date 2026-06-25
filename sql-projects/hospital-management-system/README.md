# 🏥 Hospital Management System (CRUD + Basic Analysis)

A SQL-based Hospital Management System built using MySQL to simulate real-world healthcare database operations. This project demonstrates database design, relational modeling, CRUD operations, table relationships, and basic data analysis using SQL.

The project was created as part of my Data Analytics and Data Science learning journey to strengthen SQL fundamentals through a practical business scenario.

---

## 📌 Project Overview

The Hospital Management System helps manage hospital-related information including:

- Patient Records
- Doctor Information
- Department Details
- Appointment Scheduling

The project focuses on implementing database concepts and performing operations that are commonly used in real-world hospital systems.

---

## 🎯 Objectives

- Design a relational database from scratch
- Create tables with appropriate relationships
- Perform CRUD operations
- Maintain data integrity using constraints
- Practice SQL joins and analysis queries
- Simulate a real-world healthcare management system

---

## 🗂️ Database Structure

### 👤 Patients Table

Stores patient-related information:

- Patient ID
- Name
- Age
- Gender
- Address
- Phone Number
- Weight
- Height

---

### 👨‍⚕️ Doctors Table

Stores doctor-related information:

- Doctor ID
- Doctor Name
- Specialization
- Contact Details

---

### 🏢 Departments Table

Stores hospital department details:

- Department ID
- Department Name

Examples:

- Cardiology
- Neurology
- Orthopedics
- Pediatrics

---

### 📅 Appointments Table

Stores appointment information:

- Appointment ID
- Patient ID
- Doctor ID
- Appointment Date
- Appointment Time
- Appointment Status

Examples:

- Scheduled
- Completed
- Cancelled

---

## 🔗 Relationships Implemented

The project uses relational database concepts.

### One-to-Many Relationships

- One Patient → Multiple Appointments
- One Doctor → Multiple Appointments
- One Department → Multiple Doctors

### Referential Integrity

Implemented using:

- Primary Keys
- Foreign Keys

---

## 📋 Project Workflow

### Phase 1: Database Design

Created the Hospital Management Database and designed tables for:

- Patients
- Doctors
- Departments
- Appointments

Established relationships using Primary Keys and Foreign Keys.

---

### Phase 2: Data Insertion

Inserted sample records for:

- Patients
- Doctors
- Departments
- Appointments

This data simulates real-world hospital operations.

---

### Phase 3: CRUD Operations

#### ➕ Create

Added new records such as:

- New Patients
- New Doctors
- New Appointments

---

#### 📖 Read

Retrieved records using SELECT statements.

Examples:

- View all patients
- View all doctors
- View all appointments

---

#### ✏️ Update

Updated existing records.

Examples performed in this project:

- Updated patient weight
- Updated patient phone number
- Updated appointment status from Scheduled to Completed

---

#### 🗑️ Delete

Deleted records when required.

Examples performed in this project:

- Deleted appointment records using Appointment ID

---

### Phase 4: Data Analysis

Performed SQL analysis using:

- Aggregate Functions
- GROUP BY
- JOIN Operations

Examples:

- Appointment statistics
- Patient analysis
- Doctor-wise appointment counts
- Department-level analysis

---

## ⚙️ SQL Concepts Applied

### 🏗️ Database Design

- CREATE DATABASE
- CREATE TABLE
- AUTO_INCREMENT
- PRIMARY KEY

### 🔒 Constraints

- NOT NULL
- UNIQUE
- FOREIGN KEY

### 🔄 CRUD Operations

- INSERT
- SELECT
- UPDATE
- DELETE

### 🔗 Joins

- INNER JOIN

### 📊 Data Analysis

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- GROUP BY
- ORDER BY

---

## 📁 Project Files

### hospital_management_system_schema.sql

Contains:

- Database Creation
- Table Creation
- Constraints
- Relationships

---

### hospital_management_system_sample_data.sql

Contains:

- Sample Data Insertion
- Patient Records
- Doctor Records
- Department Records
- Appointment Records

---

### hospital_management_system_analysis.sql

Contains:

- CRUD Practice Queries
- JOIN Queries
- Aggregate Functions
- GROUP BY Analysis

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

### Relational Database Concepts

- Primary Keys
- Foreign Keys
- Table Relationships
- Data Integrity

### Data Analysis

- Aggregation
- Grouping
- Joining Tables
- Business-Oriented Querying

---

## 📚 Learning Outcomes

Through this project, I strengthened my understanding of:

- Relational Database Design
- CRUD Operations
- SQL Query Optimization Basics
- Table Relationships
- Foreign Key Constraints
- Data Analysis using SQL
- Real-World Business Database Modeling

---

## 🚀 Future Improvements

Potential future enhancements include:

- Billing Management System
- Prescription Management
- Patient Admission Tracking
- Medical Records Module
- Staff Management System
- Stored Procedures
- Triggers
- Advanced Reporting Dashboard

---

## 👨‍💻 Author

**Anurag Gupta**

SQL for Data Science Portfolio Project
