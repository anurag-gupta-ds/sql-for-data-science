USE startersql;

 SHOW INDEX FROM users;
-- CREATE INDEX idx_gender ON users(gender);
-- CREATE INDEX idx_salary_gender ON users(gender,salary);
-- SELECT * FROM users
-- WHERE gender = 'Female' AND salary > 70000;

-- DROP INDEX idx_gender ON users;
DROP INDEX idx_salary_gender ON users;

