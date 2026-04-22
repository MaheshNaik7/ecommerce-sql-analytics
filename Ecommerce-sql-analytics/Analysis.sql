-- Analysis 1 — Total revenue generated:
SELECT SUM(quantity * unit_price) AS total_revenue
FROM order_items;

-- Analysis 2 — Revenue by category:
SELECT p.category,
       SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items AS oi
JOIN products AS p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- Analysis 3 — Top 3 best selling products:
SELECT p.product_name,
       SUM(oi.quantity) AS total_units_sold,
       SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM order_items AS oi
JOIN products AS p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 3;

-- Analysis 4 — Monthly revenue trend:
SELECT MONTH(o.order_date) AS month,
       SUM(oi.quantity * oi.unit_price) AS monthly_revenue
FROM orders AS o
JOIN order_items AS oi ON o.order_id = oi.order_id
WHERE o.status = 'DELIVERED'
GROUP BY MONTH(o.order_date)
ORDER BY month;

-- Analysis 5 — Top customers by spending:
SELECT c.customer_name,
       c.city,
       COUNT(DISTINCT o.order_id) AS total_orders,
       SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_items AS oi ON o.order_id = oi.order_id
WHERE o.status = 'DELIVERED'
GROUP BY c.customer_name, c.city
ORDER BY total_spent DESC;

-- Analysis 6 — Cities with most customers:
SELECT city,
       COUNT(customer_id) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;

-- Analysis 7 — Find the total number of DELIVERED orders vs CANCELLED orders:
SELECT status, 
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY status;