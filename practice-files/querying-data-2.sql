-- SELECT * FROM users WHERE gender in ('Male','Female');
-- SELECT * FROM users WHERE gender='Male' AND salary>=60000;
-- SELECT * FROM users WHERE gender='Female' AND salary<=60000;
-- SELECT * FROM users WHERE gender='Male' OR salary<=60000;
-- SELECT * FROM users WHERE gender='Male' OR salary<=60000 ORDER BY date_of_birth DESC;
-- SELECT * FROM users WHERE gender='Male' OR salary<=60000 ORDER BY date_of_birth ASC;
-- SELECT * FROM users WHERE gender='Male' OR salary<=60000 ORDER BY date_of_birth ASC LIMIT 5;
SELECT * FROM users WHERE gender='Male' OR salary<=60000 LIMIT 5;