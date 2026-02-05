## Level 5: Subqueries (Inner Queries)
-----------------------------------------

# 1. List all products priced above the average product price
SELECT product_id,name,price FROM products WHERE price > (SELECT AVG(price) FROM products);

# 2. Find customers who have placed at least one order
SELECT customer_id,name FROM customers WHERE customer_id IN (SELECT DISTINCT customer_id FROM orders);

# 3. Show orders whose total amount is above the average for that customer
SELECT o.order_id,o.customer_id,o.total_amount FROM orders o WHERE o.total_amount > (SELECT AVG(o2.total_amount) FROM orders o2 WHERE o2.customer_id=o.customer_id);

# 4. Display customers who haven’t placed any orders
SELECT customer_id,name FROM customers WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);

# 5. Show products that were never ordered
SELECT product_id,name FROM products WHERE product_id NOT IN (SELECT DISTINCT product_id FROM order_items);

# 6. Show highest value order per customer
SELECT customer_id,MAX(total_amount) AS highest_order_value FROM orders GROUP BY customer_id;

# 7. Highest order per customer including customer names
SELECT c.name,o.customer_id,MAX(o.total_amount) AS highest_order_value FROM customers c INNER JOIN orders o ON c.customer_id=o.customer_id GROUP BY c.name,o.customer_id;