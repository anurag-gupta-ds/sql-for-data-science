-- DROP DATABASE startersql;
SELECT name, email FROM users;
RENAME TABLE users TO customers;
RENAME TABLE customers TO users;
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
ALTER TABLE users DROP is_active;
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;
ALTER TABLE users MODIFY COLUMN gender ENUM('Male', 'Female', 'Other') AFTER name;
