-- CREATE DATABASE library_management;

USE library_management;
-- CREATE TABLE books(
-- book_id INT AUTO_INCREMENT PRIMARY KEY,
-- book_name VARCHAR(100) NOT NULL,
-- author VARCHAR(100) NOT NULL,
-- category VARCHAR(100) NOT NULL,
-- publisher VARCHAR(100) NOT NULL,
-- edition VARCHAR(120) NOT NULL,
-- publication_year YEAR,
-- isbn VARCHAR(20) UNIQUE,
-- total_copies INT NOT NULL,
-- available_copies INT NOT NULL,
-- shelf_location VARCHAR(100),
-- price DECIMAL(10,2));

-- INSERT INTO books
-- (book_name, author, category, publisher, edition, publication_year, isbn, total_copies, available_copies, shelf_location, price)
-- VALUES
-- ('Python Crash Course','Eric Matthes','Programming','No Starch Press','2nd Edition',2019,'9781593279288',8,5,'A-01',650),
-- ('Clean Code','Robert C. Martin','Programming','Pearson','1st Edition',2008,'9780132350884',5,2,'A-02',850),
-- ('Data Science Handbook','Jake VanderPlas','Data Science','O''Reilly','1st Edition',2017,'9781491912058',6,3,'A-03',920),
-- ('Introduction to Algorithms','Thomas H. Cormen','Algorithms','MIT Press','4th Edition',2022,'9780262046305',4,1,'A-04',1200),
-- ('Atomic Habits','James Clear','Self Help','Avery','1st Edition',2018,'9780735211292',10,8,'B-01',550),
-- ('Rich Dad Poor Dad','Robert Kiyosaki','Finance','Plata','1st Edition',2000,'9781612680194',7,6,'B-02',450),
-- ('The Psychology of Money','Morgan Housel','Finance','Harriman House','1st Edition',2020,'9780857197689',9,7,'B-03',500),
-- ('Artificial Intelligence','Stuart Russell','AI','Pearson','4th Edition',2021,'9780134610993',5,2,'C-01',1400),
-- ('Deep Learning','Ian Goodfellow','AI','MIT Press','1st Edition',2016,'9780262035613',4,0,'C-02',1500),
-- ('SQL for Data Analysis','Cathy Tanimura','Database','O''Reilly','1st Edition',2022,'9781098103828',6,4,'C-03',780);



-- CREATE TABLE members(
-- member_id INT AUTO_INCREMENT PRIMARY KEY,
-- member_name VARCHAR(50) NOT NULL,
-- phone_number VARCHAR(15) NOT NULL,
-- email VARCHAR(50) UNIQUE,
-- address VARCHAR(100) NOT NULL,
-- membership_date DATE,
-- membership_type VARCHAR(50),
-- status VARCHAR(20));

-- INSERT INTO members
-- (member_name, phone_number, email, address, membership_date, membership_type, status)
-- VALUES
-- ('Anurag Gupta','9876543210','anurag@gmail.com','Pune','2025-08-10','Student','Active'),
-- ('Rahul Sharma','9876500011','rahul@gmail.com','Mumbai','2025-09-15','Student','Active'),
-- ('Priya Verma','9876511122','priya@gmail.com','Pune','2025-10-20','Faculty','Active'),
-- ('Sneha Patil','9876522233','sneha@gmail.com','Nashik','2025-11-05','Student','Active'),
-- ('Amit Joshi','9876533344','amit@gmail.com','Nagpur','2026-01-18','Student','Active'),
-- ('Neha Singh','9876544455','neha@gmail.com','Pune','2026-02-12','Faculty','Active'),
-- ('Rohit Kumar','9876555566','rohit@gmail.com','Delhi','2026-03-09','Student','Inactive'),
-- ('Karan Shah','9876566677','karan@gmail.com','Ahmedabad','2026-04-01','Student','Active');


-- CREATE TABLE transactions(
-- transaction_id INT AUTO_INCREMENT PRIMARY KEY,
-- member_id INT,
-- book_id INT,
-- issue_date DATE NOT NULL,
-- due_date DATE NOT NULL,
-- return_date DATE,
-- fine_amount DECIMAL(10,2),
-- status VARCHAR(50) NOT NULL,
-- FOREIGN KEY (book_id) REFERENCES books(book_id),
-- FOREIGN KEY (member_id) REFERENCES members(member_id) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- INSERT INTO transactions
-- (member_id, book_id, issue_date, due_date, return_date, fine_amount, status)
-- VALUES
-- (1,1,'2026-07-01','2026-07-15','2026-07-14',0,'Returned'),
-- (2,3,'2026-07-05','2026-07-19',NULL,0,'Issued'),
-- (3,4,'2026-07-02','2026-07-16',NULL,100,'Overdue'),
-- (4,8,'2026-07-08','2026-07-22',NULL,0,'Issued'),
-- (5,5,'2026-07-10','2026-07-24','2026-07-20',0,'Returned'),
-- (6,9,'2026-07-03','2026-07-17',NULL,150,'Overdue'),
-- (1,10,'2026-07-12','2026-07-26',NULL,0,'Issued'),
-- (8,2,'2026-07-15','2026-07-29',NULL,0,'Issued');
SELECT * FROM books;
SELECT * FROM members;
SELECT * FROM transactions;