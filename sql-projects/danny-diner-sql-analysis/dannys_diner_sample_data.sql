USE dannys_diner;

INSERT INTO menu(product_name,price)
VALUES
('Sushi', 10),
('Curry', 15),
('Ramen', 12);

INSERT INTO members(customer_id,join_date)
VALUES
('A', '2021-01-07'),
('B', '2021-01-09');

INSERT INTO sales(customer_id,order_date,product_id)
VALUES
('A', '2021-01-01', 1),
('A', '2021-01-01', 2),
('A', '2021-01-07', 2),
('A', '2021-01-10', 3),
('A', '2021-01-11', 3),
('A', '2021-01-11', 3),
('B', '2021-01-01', 2),
('B', '2021-01-02', 2),
('B', '2021-01-04', 1),
('B', '2021-01-11', 1),
('B', '2021-01-16', 3),
('B', '2021-01-01', 2),
('C', '2021-01-01', 3),
('C', '2021-01-01', 3),
('C', '2021-01-07', 3);

SELECT * FROM menu;
SELECT * FROM members;
SELECT * FROM sales;
