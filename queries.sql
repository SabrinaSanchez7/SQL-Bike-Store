-- Bike Store Sales Analysis


-- Products with their brand and category
SELECT p.product_name, b.brand_name, c.category_name, p.list_price
FROM products p
JOIN brands b      ON p.brand_id = b.brand_id
JOIN categories c  ON p.category_id = c.category_id;


-- Total revenue per product (top 10)
SELECT p.product_name,
       SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 10;


-- Orders placed at each store
SELECT s.store_name, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_orders DESC;


-- Top 5 customers by total spending
SELECT c.first_name || ' ' || c.last_name AS customer,
       SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS total_spent
FROM order_items oi
JOIN orders o     ON oi.order_id = o.order_id
JOIN customers c  ON o.customer_id = c.customer_id
GROUP BY customer
ORDER BY total_spent DESC
LIMIT 5;


-- Average product price by category
SELECT c.category_name, ROUND(AVG(p.list_price), 2) AS avg_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY avg_price DESC;


-- Items sold per year
SELECT EXTRACT(YEAR FROM o.order_date) AS year,
       SUM(oi.quantity) AS items_sold
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY year
ORDER BY year;


-- Products that have never been ordered
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
