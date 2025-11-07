# Restaurant-Data-Analysis-using-SQL
## 📋 Project Overview
This project analyzes a restaurant database to gain insights into menu composition, order trends, and customer behavior.  
Using **SQL**, we explore the menu items, sales performance, and spending patterns to support data-driven decision-making.

---

## 🧾 Database Description
The project uses two main tables:

- **menu_items** → Contains information about each dish (name, category, and price).  
- **order_details** → Contains order-level data including order IDs, item IDs, and order dates.

---

## ⚙️ SQL Analysis Steps

### 1️⃣ Menu Analysis
- Count total items on the menu.  
- Identify the most and least expensive dishes.  
- Count dishes per category and calculate average price by category.  
- Example query:
  ```sql
  SELECT category, AVG(price) AS avg_price
  FROM menu_items
  GROUP BY category;
2️⃣ Order Analysis
Find the date range of all orders.

Count total orders and items sold.

Identify the orders with the highest number of items.

Example query:

sql
Copier le code
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;
3️⃣ Customer Behavior Analysis
Join menu_items and order_details tables.

Identify the most and least ordered dishes.

Find the top 5 highest-spending orders and analyze their composition.

Example query:

sql
Copier le code
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od
LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC;
📊 Key Insights
Most popular dishes and categories identified.

Average price per category calculated.

Top-spending customers and their favorite categories revealed.


👤 Author
Mohamed Amine Ned
