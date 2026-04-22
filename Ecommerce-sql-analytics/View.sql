-- Analysis  — Create a view for quick revenue report:
CREATE VIEW revenue_report AS
SELECT p.category,
       p.product_name,
       SUM(oi.quantity) AS units_sold,
       SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items AS oi
JOIN products AS p ON oi.product_id = p.product_id
GROUP BY p.category, p.product_name
ORDER BY revenue DESC;



