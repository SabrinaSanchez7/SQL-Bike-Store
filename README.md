# SQL-Bike-Store
Analyzing bike store sales data from Kaggle 

## **Bike Store SQL Project**
This is my first complete SQL Project. I wanted to practice writing queries on a real dataset, so I used a bike store database from Kaggle that was good for SQL analyzation. 

I decided to investigate 2 questions:
1. **Which store sells the most?**
2.  **Who are the top customers?**

### **Dataset**
Bike Store Relational Database from Kaggle:
https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database

This dataset has 9 CSV files (brands, categories, customers, orders, order_items, products, staffs, stocks, stores). I used `JOIN` to connect the tables to each other through IDs. 

### **Setup**
I laoded the CSVs into PostgreSQL. The `setup.sql` file create the tables and loads the data. After that I ran the queries in `queries.sql`.

### **What I looked at**
* Products with their brand and category
* Total revenue per product
* Number of orders at each store
* Top 5 custoemrs by spending
* Average price by category
* Items sold per year
* Products that were never ordered

### **SQL commands I used**
* `SELECT`
* `FROM`
* `JOIN`
* `LEFT JOIN`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `LIMIT`
* `COUNT`
* `SUM`
* `AVG`
* `ROUND`

### **What I learned**
This project helped me get comfortable using the most well known and used commands within SQL. After this project I feel more confident in being able to join tables, group data, and use the functions like SUM, COUNT, and AVG. 
