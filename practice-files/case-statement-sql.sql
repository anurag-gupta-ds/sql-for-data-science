USE startersql;

-- SELECT name,salary,gender,
-- CASE 
-- 	   WHEN salary<=50000 THEN 'Middle Class'
--     WHEN salary>70000 THEN 'Rich'
--     WHEN salary BETWEEN 50000 AND 70000 THEN 'Quite Rich'
-- END AS Persons_Class
-- FROM users ;

SELECT name,gender,date_of_birth,
CASE
	WHEN date_of_birth < '2000-01-01' THEN 'OLDER'
    WHEN date_of_birth > '2000-01-01' THEN 'YOUNGER'
END AS age_stage
FROM users;

-- SELECT * FROM users;
