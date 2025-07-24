--Aggregations & Functions (COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING,order by and desc,asc)
CREATE TABLE sales (
  id SERIAL PRIMARY KEY,
  employee_name TEXT NOT NULL,
  department TEXT NOT NULL,
  sale_amount NUMERIC(10, 2),
  sale_date DATE
);

INSERT INTO sales (employee_name, department, sale_amount, sale_date) VALUES
('Alice', 'Electronics', 1200.50, '2024-07-01'),
('Bob', 'Electronics', 800.00, '2024-07-02'),
('Charlie', 'Clothing', 450.75, '2024-07-01'),
('Alice', 'Electronics', 1100.25, '2024-07-03'),
('David', 'Clothing', 600.00, '2024-07-04'),
('Eva', 'Home', 900.10, '2024-07-01'),
('Bob', 'Electronics', 700.30, '2024-07-03'),
('Charlie', 'Clothing', 300.00, '2024-07-02'),
('David', 'Clothing', 850.00, '2024-07-05'),
('Eva', 'Home', 1200.00, '2024-07-06');


select count(*) from sales;

select avg(sale_amount) as avg_sale_amount from sales;

select max(sale_date) as max_sale_date from sales;

select min(sale_date) as min_sale_date from sales;

select * from sales order by sale_date;

SELECT employee_name, COUNT(*) AS name_count
FROM sales
GROUP BY employee_name
HAVING COUNT(*) > 1;






