USE startersql;

-- SELECT department,MAX(salary) AS empl_salary
-- FROM employees
-- GROUP BY department;


-- Window's Functions(1.Aggregate - SUM,MIN,MAX,AVG)
-- SELECT * , 
-- SUM(salary) OVER(PARTITION BY department) AS max_salary
-- FROM employees;


-- (2.Ranking/Analytic Function - row_number,rank,desk_rank,lead and lag)
-- SELECT *,
-- ROW_NUMBER() OVER() AS sr_no
-- FROM employees;

-- SELECT *,
-- ROW_NUMBER() OVER(PARTITION BY department ORDER BY emp_id) AS sr_no
-- FROM employees;



-- Fetch the First 2 Employees from each Department to Join the Company
-- SELECT * FROM (
-- SELECT *,
-- ROW_NUMBER() OVER(PARTITION BY department ORDER BY emp_id) AS sr_no
-- FROM employees) AS X
-- WHERE X.sr_no<3;

-- fetch the first 3 employees for each department who earn the max salary
-- SELECT * FROM(
-- SELECT * ,
-- RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rnk
-- FROM employees) X
-- WHERE X.rnk<4;

-- SELECT * ,
-- RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rnk,
-- DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rnk,
-- ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS sr_no
-- FROM employees;


-- fetch a query to display the salary on an employees in higher, lower or equal to the previous employee
-- SELECT *,
-- LAG( salary) OVER(PARTITION BY department ORDER BY  emp_id) AS pre_emp_sal,
-- LEAD(salary)  OVER(PARTITION BY department ORDER BY  emp_id) AS nxt_emp_sal
-- FROM employees;

SELECT *,
LAG( salary) OVER(PARTITION BY department ORDER BY  emp_id) AS pre_emp_sal,
	CASE WHEN salary > LAG( salary) OVER(PARTITION BY department ORDER BY  emp_id) THEN 'Higher than Previous Employee'
	     WHEN salary < LAG( salary) OVER(PARTITION BY department ORDER BY  emp_id) THEN 'Lower than Previous Employee'
		 WHEN salary = LAG( salary) OVER(PARTITION BY department ORDER BY  emp_id) THEN 'Same as Previous Employee'
	END AS salary_range
FROM employees;




