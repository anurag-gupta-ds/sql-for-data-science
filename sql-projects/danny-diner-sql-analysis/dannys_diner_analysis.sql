USE dannys_diner;

-- Purpose : total amount spent by each customer at restaurent
-- SELECT sales.customer_id,SUM(menu.price) AS total_spent
-- FROM menu
-- INNER JOIN sales ON menu.product_id = sales.product_id
-- GROUP BY sales.customer_id;


-- Purpose : to have the count that how much frequently each customers orders , not on each day to have the count of unique days
-- SELECT customer_id,COUNT(DISTINCT order_date) AS order_count
-- FROM sales
-- GROUP BY customer_id;


-- Purpose : To have the each customer's 1st ordered item from menu and order date
-- SELECT * FROM(
-- 		SELECT menu.product_name,sales.customer_id,sales.order_date,
--         RANK() OVER(PARTITION BY sales.customer_id ORDER BY sales.order_date ASC,sales.sales_id ASC) AS rnk
--         FROM menu 
--         INNER JOIN sales ON menu.product_id = sales.product_id
--         ) AS ranked 
--         WHERE rnk = 1;


-- Purpose : For having the most purchased item on the menu, and how many times was it purchased by all customers
-- SELECT menu.product_name,COUNT(sales.product_id) AS order_count
-- FROM menu 
-- INNER JOIN sales ON menu.product_id = sales.product_id
-- GROUP BY menu.product_name ORDER BY order_count DESC LIMIT 1;


-- Purpose : Which item was the most popular for EACH customer
-- SELECT * FROM(
-- 	SELECT customer_id,menu.product_name,COUNT(sales.product_id) AS order_count,
--     RANK() OVER(PARTITION BY customer_id ORDER BY COUNT(sales.product_id)  DESC ) AS rnk
-- 	FROM sales
-- 	INNER JOIN menu ON menu.product_id = sales.product_id
-- 	GROUP BY customer_id,menu.product_name
--     ) AS most_fav
--     WHERE rnk=1;



-- Purpose: Which item was the first one purchased by each customer AFTER they became a member?
-- SELECT * FROM(
-- 	SELECT sales.customer_id,menu.product_name,members.join_date,sales.order_date,
--     RANK() OVER(PARTITION BY members.customer_id ORDER BY sales.order_date ASC,sales.sales_id ASC) AS rnk
-- 	FROM sales
-- 	INNER JOIN menu ON menu.product_id = sales.product_id 
-- 	INNER JOIN members ON members.customer_id = sales.customer_id
-- 	WHERE sales.order_date>=members.join_date
-- ) AS first_item
-- WHERE rnk=1;



-- Which item was the first one purchased by each customer before they became a member?
-- SELECT * FROM(
-- 	SELECT sales.customer_id,menu.product_name,members.join_date,sales.order_date,
--     RANK() OVER(PARTITION BY members.customer_id ORDER BY sales.order_date DESC,sales.sales_id DESC) AS rnk
-- 	FROM sales
-- 	INNER JOIN menu ON menu.product_id = sales.product_id 
-- 	INNER JOIN members ON members.customer_id = sales.customer_id
-- 	WHERE sales.order_date<members.join_date
-- ) AS first_item
-- WHERE rnk=1;



-- Purpose: Danny wants to reward his most loyal customers. Each $1 spent earns 10 points. However, the sushi item has a 2x points multiplier — so spending $1 on sushi earns 20 points. Additionally, members earn 2x points on ALL items (not just sushi) during the first 7 days of joining the loyalty program — that is, from their join_date through join_date + 6 days, inclusive. After this first week, normal rules apply (sushi = 2x, everything else = 1x). Calculate the total points earned by each customer, considering only orders up to the end of January 2021.
-- SELECT members.customer_id,
-- SUM(CASE 
-- 	WHEN order_date < join_date THEN 0 
--     WHEN order_date >= join_date AND order_date <= join_date + INTERVAL 6 DAY THEN price * 20
--     WHEN order_date > join_date + INTERVAL 6 DAY THEN 
-- 		CASE
-- 			WHEN menu.product_name = 'Sushi' THEN price*20
--             ELSE price*10
--         END
-- END) AS points_count
-- FROM sales
-- INNER JOIN menu ON menu.product_id = sales.product_id
-- INNER JOIN members ON members.customer_id = sales.customer_id
-- GROUP BY members.customer_id




-- Purpose : Danny wants a single combined table that brings together all the key information needed for his analysis. Create a table that has the following columns: customer_id, order_date, product_name, price, and a column indicating whether the customer was a member at the time of that order ('Y') or not ('N')."
-- Important detail: this should include all customers — both members (A, B) and non-members (C) — since C should appear with 'N' for all their orders (they never joined).

SELECT  sales.customer_id, sales.order_date, members.join_date,  menu.product_name, menu.price AS product_price,
	CASE
		WHEN join_date IS NULL THEN 'N'
        WHEN order_date < join_date THEN 'N'
		WHEN order_date >= join_date THEN 'Y'
	END AS order_status
FROM sales
INNER JOIN menu ON menu.product_id = sales.product_id
LEFT JOIN members ON members.customer_id = sales.customer_id
 