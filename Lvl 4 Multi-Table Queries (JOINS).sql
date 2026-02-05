## Level 4: Multi-Table Queries (JOINS)
-----------------------------------------

# 1. Retrieve order details along with the customer name
SELECT o.order_id,c.name,o.order_date,o.status,o.total_amount FROM orders o INNER JOIN customers c ON o.customer_id=c.customer_id;

# 2. Get list of products that have been sold (INNER JOIN with order_items)
SELECT DISTINCT p.product_id,p.name,p.category,p.price FROM products p INNER JOIN order_items oi ON p.product_id=oi.product_id;

# 3. List all orders with their payment method (INNER JOIN)
SELECT o.order_id,o.order_date,o.total_amount,p.method FROM orders o INNER JOIN payments p ON o.order_id=p.order_id;

# 4. Get list of customers and their orders (LEFT JOIN)
SELECT c.customer_id,c.name,o.order_id,o.order_date,o.status FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id;

# 5. List all products along with order item quantity (LEFT JOIN)
SELECT p.product_id,p.name,oi.quantity FROM products p LEFT JOIN order_items oi ON p.product_id=oi.product_id;

# 6. List all payments including those with no matching orders (RIGHT JOIN)
SELECT p.payment_id,p.amount_paid,p.method,o.order_id FROM orders o RIGHT JOIN payments p ON o.order_id=p.order_id;

# 7. Combine data from customer, order, and payment tables
SELECT c.name,o.order_id,o.order_date,o.total_amount,p.method,p.amount_paid FROM customers c INNER JOIN orders o ON c.customer_id=o.customer_id INNER JOIN payments p ON o.order_id=p.order_id;