-- Sales Analysis Queries

-- Top 5 Customers by Revenue
SELECT customer_id,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 5;


-- Revenue by City
SELECT city,
       SUM(total_amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY city
ORDER BY revenue DESC;


-- Average Order Value
SELECT AVG(total_amount) AS avg_order_value
FROM orders;
