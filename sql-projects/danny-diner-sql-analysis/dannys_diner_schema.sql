-- CREATE DATABASE dannys_diner;

USE dannys_diner;

CREATE TABLE menu(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(5,2)
);

CREATE TABLE members(
customer_id VARCHAR(10) PRIMARY KEY,
join_date DATE
);

CREATE TABLE sales(
sales_id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
customer_id VARCHAR(10),
order_date DATE,
CONSTRAINT fk_menu FOREIGN KEY (product_id) REFERENCES menu(product_id)
);
