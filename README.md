# 📚 Bookstore Database Project

This project contains the design and implementation of a MySQL relational database for a fictional bookstore. It includes the database schema, sample data, user access management, and SQL queries for data manipulation and retrieval.

## 📁 Project Structure

- `1_schema.sql` – Contains the SQL code to create the database and all tables.
- `2_sample_data.sql` – Inserts sample data into the tables.
- `3_user_management.sql` – Manages users and sets privileges for accessing the database.
- `4_queries.sql` – Includes queries to retrieve order details and status using `JOIN`s and `WHERE` clauses.

## 🗃️ Database Entities

- **Books**: Information about each book available in the store.
- **Authors**: Details about authors.
- **Publishers**: Details about publishing companies.
- **Customers**: Data about customers who place orders.
- **Orders**: Records of customer orders.
- **OrderDetails**: Line items for each order (which books and how many).
  
Each entity is linked through appropriate foreign keys to maintain data integrity.

## 🧩 ERD Diagram

An Entity Relationship Diagram (ERD) is included to visualize the structure and relationships between entities.

## 🛠️ Technologies Used

- MySQL
- Draw.io (for ERD diagram)
- SQL scripts

## ✅ How to Use

1. Clone the repository:
   ```bash
   git clone[https://github.com/Evans200png/database_assignment.git]
