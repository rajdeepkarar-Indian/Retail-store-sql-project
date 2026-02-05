## Level 1: Basics
-------------------
# 1 SELECT with Column Names
SELECT name, email FROM customers;

# 2 SELECT * (All Columns)
SELECT * FROM products;

# 3 DISTINCT Keyword
SELECT DISTINCT category FROM products;

# 4 WHERE Clause

a) Comparison Operators (=, !=, <, >, <=, >=)
SELECT * FROM products
WHERE price > 3000;
SELECT * FROM products
WHERE stock_quantity <= 50;

b) BETWEEN, IN, NOT IN, LIKE
SELECT * FROM products WHERE price BETWEEN 2000 AND 5000;
SELECT * FROM products WHERE price BETWEEN 2000 AND 5000;
SELECT * FROM customers WHERE customer_id NOT IN (1, 5, 10);
SELECT * FROM customers WHERE name LIKE 'A%';

# 5  Logical Operators (AND, OR, NOT)
SELECT * FROM products WHERE category = 'Electronics' AND price < 3000;
SELECT * FROM products WHERE category = 'Books'OR category = 'Toys';
SELECT * FROM products WHERE NOT category = 'Clothing';

# 6 Sorting: ORDER BY (ASC / DESC)
SELECT name, price FROM products ORDER BY price ASC;

# 7 LIMIT / TOP (Based on RDBMS)
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;











