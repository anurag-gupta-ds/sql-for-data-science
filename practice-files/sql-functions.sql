USE startersql;
-- SELECT * FROM users;
-- SELECT COUNT(*) FROM users;
-- SELECT COUNT(*) FROM users WHERE gender='Male';
-- SELECT COUNT(*) FROM users WHERE gender='Female';
-- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
-- SELECT SUM(salary) AS total_salary FROM users;
-- SELECT AVG(salary) AS avg_salary FROM users;
-- SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;
-- SELECT gender, SUM(salary) AS avg_salary FROM users GROUP BY gender;
-- SELECT LOWER(name) as lower,CONCAT(LOWER(name), '5677') AS con_low, LENGTH(name) AS name_len FROM users;
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days FROM users;

