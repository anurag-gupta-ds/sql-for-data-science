USE startersql;

-- SELECT gender, AVG(salary) as avg_salary, COUNT(*) AS Count
-- FROM users 
-- GROUP BY gender HAVING AVG(salary)>60000;

-- SELECT referred_by_id, COUNT(*) AS total_referred
-- FROM users
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY referred_by_id
-- HAVING COUNT(*)>1

SELECT gender, AVG(salary) as avg_salary, COUNT(*) AS Count
FROM users
GROUP BY gender WITH ROLLUP HAVING AVG(salary)>60000;



