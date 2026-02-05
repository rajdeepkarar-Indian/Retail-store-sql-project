## Level 6: Set Operations
---------------------------

# 1. List all customers who have either placed an order or written a product review
# Used to identify engaged customers from different activity areas.
SELECT DISTINCT c.customer_id, c.name
FROM customers c
INNER JOIN (
    SELECT customer_id FROM orders
    UNION
    SELECT customer_id FROM product_reviews
) x
ON c.customer_id = x.customer_id;

# 2. List all customers who have placed an order as well as reviewed a product
# Used to identify highly engaged customers for rewards
SELECT DISTINCT c.customer_id, c.name
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN product_reviews pr ON c.customer_id = pr.customer_id;