# 🍽️ Restaurant Sales Analysis — SQL

> **A SQL-based analysis of restaurant menu performance, order trends, and customer spending behavior.**

[![SQL](https://img.shields.io/badge/SQL-MySQL-blue?logo=mysql)](https://www.mysql.com/)
[![Data Analysis](https://img.shields.io/badge/Focus-Data%20Analysis-orange)]()
[![Business Intelligence](https://img.shields.io/badge/Focus-Business%20Intelligence-purple)]()

---

## 📌 Project Overview

This project analyzes restaurant sales data using **SQL** to uncover patterns in menu performance, ordering behavior, and customer spending.

The objective is to transform raw restaurant transaction data into **actionable business insights** that could support decisions related to menu optimization, product performance, and sales strategy.

### 🎯 Business Objective

The analysis aims to answer questions such as:

* Which menu items are the most popular?
* Which categories contain the most products?
* What are the most and least expensive menu items?
* Which menu categories have the highest average prices?
* What are the busiest ordering periods?
* Which orders generate the highest spending?
* Which menu items contribute most to sales?
* What patterns can help improve restaurant performance?

---

## 🗂️ Dataset

The project uses two main datasets:

### `menu_items`

Contains information about the restaurant's menu.

| Column         | Description                        |
| -------------- | ---------------------------------- |
| `menu_item_id` | Unique identifier of the menu item |
| `item_name`    | Name of the menu item              |
| `category`     | Food category                      |
| `price`        | Item price                         |

### `order_details`

Contains transactional information about customer orders.

| Column             | Description                         |
| ------------------ | ----------------------------------- |
| `order_details_id` | Unique transaction identifier       |
| `order_id`         | Customer order identifier           |
| `order_date`       | Date of the order                   |
| `item_id`          | Identifier of the ordered menu item |

---

## 🛠️ Technologies

* **MySQL**
* **SQL**
* **Git**
* **GitHub**

### SQL Techniques

The project demonstrates:

* `SELECT`
* `WHERE`
* `ORDER BY`
* `GROUP BY`
* `HAVING`
* Aggregate functions
* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `JOIN`
* Subqueries
* Date analysis
* Business-oriented aggregations

---

## 🗄️ Database Structure

The analysis is based on a relational structure connecting menu information with order transactions.

```text
┌─────────────────────┐
│     menu_items      │
├─────────────────────┤
│ menu_item_id   PK   │
│ item_name           │
│ category            │
│ price               │
└──────────┬──────────┘
           │
           │ item_id
           │
┌──────────▼──────────┐
│    order_details    │
├─────────────────────┤
│ order_details_id PK │
│ order_id            │
│ order_date          │
│ item_id        FK   │
└─────────────────────┘
```

---

## 🔎 Analysis

### 1. Menu Analysis

The menu analysis focuses on understanding the restaurant's product portfolio.

Key questions include:

* How many items are available?
* What are the most expensive dishes?
* What are the least expensive dishes?
* How many items exist in each category?
* What is the average price by category?

Example:

```sql
SELECT
    category,
    COUNT(*) AS number_of_items,
    ROUND(AVG(price), 2) AS average_price
FROM menu_items
GROUP BY category
ORDER BY average_price DESC;
```

---

### 2. Order Analysis

The order analysis examines transaction volume and ordering behavior.

Key questions include:

* What is the analyzed order period?
* How many orders were placed?
* How many items were sold?
* Which orders contained the highest number of items?
* Which dates generated the most orders?

Example:

```sql
SELECT
    order_id,
    COUNT(item_id) AS number_of_items
FROM order_details
GROUP BY order_id
ORDER BY number_of_items DESC;
```

---

### 3. Product Performance Analysis

By joining the two tables, we can analyze menu-item performance.

```sql
SELECT
    mi.item_name,
    mi.category,
    COUNT(od.order_details_id) AS number_of_purchases
FROM order_details AS od
JOIN menu_items AS mi
    ON od.item_id = mi.menu_item_id
GROUP BY
    mi.item_name,
    mi.category
ORDER BY number_of_purchases DESC;
```

This allows us to identify the restaurant's highest-demand products.

---

### 4. High-Value Orders

The analysis also identifies orders containing a large number of items and high-value transactions.

This helps answer:

> **Which orders have the greatest potential revenue contribution?**

The results can be used to investigate customer purchasing patterns and identify opportunities for upselling or promotional strategies.

---

## 📊 Key Insights

The analysis is designed to identify:

### 🍕 Menu Performance

* Most popular menu items
* Least popular menu items
* Highest-priced products
* Lowest-priced products
* Average price by category

### 📦 Order Behavior

* Total number of orders
* Items sold
* Order volume over time
* Largest orders

### 💰 Sales Performance

* High-value orders
* Product contribution to sales
* Category-level performance
* Customer spending patterns

---

## 📁 Project Structure

```text
Restaurant-Sales-Analysis-SQL/
│
├── 📄 README.md
│
├── 🗄️ create_restaurant_db.sql
├── 📊 menu_analysis.sql
├── 📈 orders_analysis.sql
├── 🧾 restaurant_db_data_dictionary.csv
│
├── 📦 menu_items.csv
├── 📦 order_details.csv
│
└── 🗃️ szs.sql
```

---

## ⚙️ How to Run

### 1. Clone the repository

```bash
git clone https://github.com/mohamed-amine111/Restaurant-Sales-Analysis-SQL.git
```

### 2. Open MySQL Workbench

Create a new MySQL database.

### 3. Create the database structure

Run:

```text
create_restaurant_db.sql
```

### 4. Load the data

Import:

```text
menu_items.csv
order_details.csv
```

### 5. Run the analysis

Execute:

```text
menu_analysis.sql
orders_analysis.sql
```

---

## 💡 Business Value

This project demonstrates how SQL can be used to move from **raw transactional data → structured analysis → business insights**.

The results can support decisions around:

* Menu optimization
* Product positioning
* Sales performance monitoring
* Customer purchasing behavior
* High-value order identification
* Category performance

---

## 🚀 Future Improvements

Potential extensions include:

* [ ] Add advanced SQL queries using CTEs
* [ ] Add window functions
* [ ] Calculate total revenue
* [ ] Analyze revenue by category
* [ ] Analyze sales trends by month
* [ ] Identify top-performing products
* [ ] Build a Power BI dashboard
* [ ] Add automated KPI reporting
* [ ] Add data-quality checks

---

## 👤 Author

### Mohamed Amine Ben Sebbah

**Data Analyst | Finance & Data Science**



---

⭐ **If you find this project useful, feel free to star the repository.**
