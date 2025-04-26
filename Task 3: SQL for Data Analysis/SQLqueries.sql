
-- 1. Basic SELECT with WHERE and ORDER BY
SELECT * FROM orders
WHERE order_date >= '2023-01-01'
ORDER BY total_amount DESC;


-- 2. INNER JOIN example
SELECT c.customer_name, o.order_id, o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;


-- 3. Aggregate Functions & GROUP BY
SELECT customer_id, COUNT(*) AS total_orders, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;


-- 4. Subquery example
SELECT customer_id, total_amount
FROM orders
WHERE total_amount > (SELECT AVG(total_amount) FROM orders);


-- 5. Create View
CREATE VIEW high_value_customers AS
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING total_spent > 1000;


-- 6. Index creation for optimization
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
