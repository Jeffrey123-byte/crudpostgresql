 CREATE TABLE employees(
 	id SERIAL PRIMARY KEY,name VARCHAR(100),role VARCHAR(50),salary INTEGER);
	
select * from employees;

 insert into employees(name, role, salary)
 values('Rey Johnson', 'Developer', '60000');

 insert into employees(name,role,salary)
 values('Raj kumar', 'Developer', '40000');

 select * from employees;
 select * from employees where name = 'Raj kumar';

SELECT * FROM employees
ORDER BY salary DESC;
select name,role from employees where name = 'Rey Johnson';

INSERT INTO employees (name, role, salary) VALUES
('Raj kumar', 'Developer', '40000'),
('Priya Sharma', 'UI Designer', '35000'),
('Anil Mehta', 'QA Engineer', '30000'),
('Sonia Verma', 'Developer', '42000'),
('Amit Das', 'Project Manager', '60000'),
('Kiran Rao', 'HR Executive', '28000'),
('Neeraj Gupta', 'System Analyst', '45000'),
('Riya Sen', 'Frontend Developer', '39000'),
('Manoj Singh', 'Backend Developer', '43000'),
('Sneha Kapoor', 'Business Analyst', '47000'),
('Deepak Mishra', 'Support Engineer', '32000'),
('Harshita Jain', 'Marketing Executive', '36000'),
('Siddharth Reddy', 'Data Scientist', '55000'),
('Lakshmi Iyer', 'DevOps Engineer', '52000'),
('Gaurav Bhatt', 'Tech Lead', '65000'),
('Meena Joseph', 'Content Writer', '31000'),
('Vikram Chauhan', 'Android Developer', '40000'),
('Tanvi Bansal', 'iOS Developer', '41000'),
('Ramesh Menon', 'Database Admin', '48000'),
('Anjali Pillai', 'UI/UX Designer', '37000'),
('Arjun Kapoor', 'Scrum Master', '59000');

select * from employees;

select distinct role,name from employees

alter table employees add column company varchar(50);

update employees set company = 'Amadis'

select * from employees;

SELECT * FROM employees
ORDER BY id ASC;

SELECT * FROM employees
ORDER BY id DESC;



