-- INSERT INTO users VALUES
-- (1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Bob1', 'bob1@example.com', 'Male', '1990-11-24');
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Bob2', 'bob2@example.com', 'Male', '1990-11-23'),
('Charlie2', 'charlie2@example.com', 'Other', '1988-02-17');
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Charlie3', 'charlie3@example.com', 'Other', '1988-02-18'),
('David', 'david@example.com', 'Male', '2000-08-09'),
('Eva', 'eva@example.com', 'Female', '1993-12-30');
SELECT * FROM users;