# 🚗 Vehicle Rental System - Database Design & SQL Queries

## 📌 Overview

This project is a simplified **Vehicle Rental System Database** designed to demonstrate database design concepts, ERD relationships, and SQL query implementation.

The system manages:

- Users
- Vehicles
- Bookings

---

## 🎯 Objectives
 I was able to:

- Design an ERD with 1:1, 1:M, and M:1 relationships
- Understand Primary Keys (PK) and Foreign Keys (FK)
- Implement real-world business logic
- Write SQL queries using JOIN, EXISTS, WHERE, GROUP BY, and HAVING

---


# 📊 ERD Design

The ERD includes:

- Primary Keys (PK)
- Foreign Keys (FK)
- Relationship cardinality
- Status fields

## 🔗 Relationships

- **One-to-Many:** One User → Many Bookings  
- **Many-to-One:** Many Bookings → One Vehicle  
- **Logical One-to-One:** Each booking connects exactly one user and one vehicle  

📎 ERD Tool Used:  drawsql.app 
🔗 Public ERD Link: https://drawsql.app/teams/abdullah-shekh/diagrams/vehicle-rental-system


# 💻 SQL Queries

## ✅ Query 1 – INNER JOIN

Retrieve booking information with:

- Customer name  
- Vehicle name  

Concepts Used:
- `INNER JOIN`

---

## ✅ Query 2 – NOT EXISTS

Find all vehicles that have never been booked.

Concepts Used:
- `NOT EXISTS`

---

## ✅ Query 3 – WHERE

Retrieve all available vehicles of a specific type (e.g., Car).

Concepts Used:
- `SELECT`
- `WHERE`

---

## ✅ Query 4 – GROUP BY & HAVING

Find the total number of bookings for each vehicle and display only vehicles that have more than 2 bookings.

Concepts Used:
- `GROUP BY`
- `HAVING`
- `COUNT()`

---

# 📁 Project Structure
├── schema.sql # Table creation statements
├── queries.sql # All SQL queries with explanations
├── README.md # Project documentation



📎 Viva video Google Drive Link -> 
🔗 Public Video Link: https://drive.google.com/file/d/13JpSy5Nki5UkQpBmkEM9U8M9xW3uRKAS/view?usp=sharing