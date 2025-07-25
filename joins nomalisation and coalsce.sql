-- inner join
-- outer join
-- ull join
-- self join
-- normalisation
-- natural  
-- COALESCE().

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(100),
  city VARCHAR(100)
);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  product VARCHAR(100),
  amount NUMERIC(8, 2)
);

INSERT INTO customers (customer_name, city) VALUES
('Alice', 'New York'),
('Bob', 'Los Angeles'),
('Charlie', 'Chicago');

INSERT INTO orders (customer_id, product, amount) VALUES
(1, 'Laptop', 1200.00),
(1, 'Mouse', 25.50),
(2, 'Keyboard', 45.99),
(3, 'Monitor', 300.00);


SELECT * FROM customers;
SELECT * FROM orders;

select a.customer_name,b.product,b.amount,a.city,a.customer_id
from customers a
inner join orders b
on a.customer_id = b.customer_id;

SELECT c.customer_name, o.product, o.amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.product, o.amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_name, o.product, o.amount
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;

SELECT *
FROM customers
NATURAL JOIN orders;

SELECT 
  e1.name AS employee_name,
  e2.name AS manager_name
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.emp_id;

SELECT c.name, p.promo_code
FROM customers c
CROSS JOIN promotions p;

SELECT product, COALESCE(amount * 2, 0) AS total_cost
FROM orders;








