USE startersql;

-- CREATE TABLE admin_users (
-- id INT PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100),
--     gender ENUM('Male', 'Female', 'Other'),
--     date_of_birth DATE,
--     salary INT
-- );
-- SELECT * FROM admin_users;

-- INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
-- (101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
-- (102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
-- (103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
-- (104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);
-- SELECT * FROM admin_users;

-- SELECT gender,name FROM users 
-- UNION 
-- SELECT gender,name FROM admin_users;

SELECT * FROM admin_users;
SELECT * FROM users;

SELECT gender,name, date_of_birth,'User' AS ROLE FROM users 
UNION ALL
SELECT gender,name,date_of_birth,'Admin' AS ROLE FROM admin_users
ORDER BY date_of_birth;
