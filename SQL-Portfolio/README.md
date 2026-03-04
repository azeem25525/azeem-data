# SQL Portfolio

This repository contains SQL queries and analysis used in real data analytics scenarios.

## Topics Covered
- SQL Joins
- Window Functions
- Aggregations
- Subqueries
- Data Analysis Queries

## Example Queries

### Top Customers by Revenue
```sql
SELECT customer_id, SUM(total_amount) AS revenue
FROM orders
GROUP BY customer_id
ORDER BY revenue DESC;
