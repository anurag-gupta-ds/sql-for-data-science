USE startersql;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

INSERT INTO employees VALUES
(1, 'Anurag', 'Data Science', 55000, '2023-01-15'),
(2, 'Priya', 'Data Science', 62000, '2022-06-20'),
(3, 'Rahul', 'Data Science', 48000, '2023-03-10'),
(4, 'Sneha', 'Data Science', 62000, '2021-11-05'),
(5, 'Karan', 'Marketing', 45000, '2022-08-12'),
(6, 'Pooja', 'Marketing', 51000, '2023-02-28'),
(7, 'Amit', 'Marketing', 51000, '2021-09-15'),
(8, 'Neha', 'Sales', 40000, '2023-05-01'),
(9, 'Vikram', 'Sales', 58000, '2022-12-10'),
(10, 'Sonia', 'Sales', 47000, '2021-07-22');