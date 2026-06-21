USE startersql;

-- SELECT AVG(salary) AS avg_salary FROM users;
-- SELECT * FROM users WHERE salary> (SELECT AVG(salary) AS avg_salary FROM users);
-- SELECT * FROM users WHERE salary < (SELECT AVG(salary) AS avg_salary FROM users);

-- SELECT id,name,referred_by_id
-- FROM users
-- WHERE referred_by_id IN(
-- SELECT id FROM users WHERE salary > (SELECT AVG(salary) FROM users)
-- );
SELECT name,salary,
(SELECT AVG(salary) FROM users) AS avg_salary
FROM users;
