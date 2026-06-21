USE startersql;

WITH CTE_example AS
(
SELECT id,name,referred_by_id
FROM users
WHERE referred_by_id IN(
SELECT id FROM users WHERE salary > (SELECT AVG(salary) FROM users))
)
SELECT * FROM CTE_example 
;