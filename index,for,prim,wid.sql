-- Primary Key
CREATE TABLE authors (
  author_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
-- Foreign key
CREATE TABLE books (
  books_id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  author_id INT REFERENCES authors(author_id)
);

INSERT INTO authors (name) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Stephen King');


INSERT INTO books (title, author_id) VALUES
('Harry Potter and the Sorcerer''s Stone', 1),
('Harry Potter and the Chamber of Secrets', 1),
('A Game of Thrones', 2),
('A Clash of Kings', 2),
('The Fellowship of the Ring', 3),
('The Two Towers', 3),
('Murder on the Orient Express', 4),
('And Then There Were None', 4),
('The Shining', 5),
('It', 5);

select * from authors;
select * from books;

-- width 
--indexing 
-- primary key
-- foreign key

-- width
CREATE TABLE emp (
  emp_name VARCHAR(50),   -- max 50 characters
  salary NUMERIC(8,2)     -- max 8 digits, 2 after the decimal
);

INSERT INTO emp (emp_name, salary) VALUES ('Alice Thomas', 55000.00);
INSERT INTO emp (emp_name, salary) VALUES ('Brian Kapoor', 47000.50);
INSERT INTO emp (emp_name, salary) VALUES ('Catherine Davis', 62000.00);
INSERT INTO emp (emp_name, salary) VALUES ('David Lee', 39000.75);
INSERT INTO emp (emp_name, salary) VALUES ('Eva Smith', 58000.20);
INSERT INTO emp (emp_name, salary) VALUES ('Franklin Jones', 45500.00);
INSERT INTO emp (emp_name, salary) VALUES ('Grace Patel', 73500.95);
INSERT INTO emp (emp_name, salary) VALUES ('Harish Kumar', 52000.00);
INSERT INTO emp (emp_name, salary) VALUES ('Isabelle Wright', 61000.30);
INSERT INTO emp (emp_name, salary) VALUES ('Jayden Hall', 49999.99);

select * from emp;

--Index
CREATE INDEX username ON emp(emp_name);
SET enable_seqscan = off;
ANALYZE emp;
EXPLAIN SELECT emp_name FROM emp WHERE emp_name = 'John';













