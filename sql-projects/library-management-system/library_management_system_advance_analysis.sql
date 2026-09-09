USE library_management;

-- SELECT COUNT(book_id) AS total_books
-- FROM books;

-- SELECT COUNT(member_id) AS total_members
-- FROM members;

-- SELECT SUM(price) AS total_price
-- FROM books; 

-- SELECT AVG(price) AS avg_book_price
-- FROM books;

-- SELECT MIN(price) AS lowest_price_book
-- FROM books;

-- SELECT MAX(price) AS highest_price
-- FROM books;

-- SELECT category,COUNT(book_id) AS total_books
-- FROM books
-- GROUP BY category;

-- SELECT category,AVG(price) AS avg_price
-- FROM books
-- GROUP BY category;

-- SELECT category,SUM(price) AS total_price
-- FROM books
-- GROUP BY category;

-- SELECT category,COUNT(book_id) AS total_id
-- FROM books
-- GROUP BY category
-- HAVING COUNT(book_id) > 2;

-- SELECT category,AVG(price) AS avg_price
-- FROM books
-- GROUP BY category 
-- HAVING AVG(price) > 500;

-- SELECT category,SUM(price) AS total_price
-- FROM books
-- GROUP BY category
-- HAVING SUM(price) > 2000;

-- SELECT category, COUNT(book_id) AS total_books
-- FROM books
-- GROUP BY category
-- ORDER BY total_books DESC;

-- SELECT category, SUM(price) AS total_price
-- FROM books
-- GROUP BY category
-- ORDER BY total_price DESC;

-- SELECT category,COUNT(book_id) AS total_books
-- FROM books 
-- WHERE price > 500
-- GROUP BY category
-- HAVING total_books > 1;

-- SELECT category,AVG(price) AS avg_price
-- FROM books 
-- WHERE price >500 
-- GROUP BY category 
-- HAVING avg_price > 700
-- ORDER BY avg_price DESC;

-- SELECT category,COUNT(book_id) as total_books
-- FROM books
-- WHERE price > 500  AND available_copies < 5
-- GROUP BY category
-- HAVING total_books >= 1 ;

-- SELECT category,AVG(price) AS avg_price
-- FROM books
-- WHERE available_copies > 0
-- GROUP BY category;

-- SELECT category,SUM(price) AS total_price
-- FROM books 
-- WHERE publication_year >2020
-- GROUP BY category;

-- SELECT category,SUM(price) AS total_price,COUNT(book_id) AS total_books
-- FROM books
-- WHERE price > 700 
-- GROUP BY category 
-- HAVING total_books >=2;

-- SELECT category,AVG(price) AS avg_price
-- FROM books
-- WHERE available_copies > 2
-- GROUP BY category 
-- HAVING avg_price > 600 
-- ORDER BY avg_price DESC;

-- SELECT category,COUNT(book_id) AS total_books,SUM(price) AS total_price 
-- FROM books 
-- GROUP BY category
-- HAVING total_price > 3000
-- ORDER BY total_price DESC;

-- SELECT category, book_name, price
-- FROM books
-- WHERE price = (
--     SELECT MAX(price)
--     FROM books b2
--     WHERE b2.category = books.category
-- );

-- SELECT book_name ,price
-- FROM books
-- WHERE price = (
-- 		SELECT MAX(price)
--         FROM books b2 
-- 	);
--     
-- SELECT book_name ,price
-- FROM books
-- WHERE price = (
-- 		SELECT MIN(price)
--         FROM books b2 
-- 	);
--     
-- SELECT member_name,book_name,issue_date
-- FROM books
-- INNER JOIN transactions ON transactions.book_id = books.book_id
-- INNER JOIN members ON members.member_id = transactions.member_id;

-- SELECT member_name,book_name,issue_date
-- FROM books 
-- INNER JOIN transactions ON  transactions.book_id = books.book_id
-- INNER JOIN members ON members.member_id = transactions.member_id
-- WHERE transactions.status = "Issued";

-- SELECT member_name,book_name,fine_amount
-- FROM books
-- INNER JOIN transactions ON transactions.book_id = books.book_id
-- INNER JOIN members ON members.member_id = transactions.member_id
-- WHERE transactions.fine_amount > 0;

-- SELECT member_name,book_name,transactions.status
-- FROM books
-- INNER JOIN transactions ON transactions.book_id = books.book_id
-- INNER JOIN members ON members.member_id = transactions.member_id
-- WHERE transactions.fine_amount > 50 AND transactions.status = 'Overdue' ;

-- SELECT member_name,book_name,category,issue_date
-- FROM books
-- INNER JOIN transactions ON transactions.book_id = books.book_id
-- INNER JOIN members ON members.member_id = transactions.member_id
-- WHERE books.category = "AI";

-- SELECT member_name, book_name, price
-- FROM books
-- INNER JOIN transactions 
--     ON transactions.book_id = books.book_id
-- INNER JOIN members 
--     ON members.member_id = transactions.member_id
-- WHERE books.price > 800 
--   AND transactions.status = "Issued";
--   

-- SELECT member_name, book_name, transactions.status, return_date
-- FROM books
-- INNER JOIN transactions 
--     ON transactions.book_id = books.book_id
-- INNER JOIN members 
--     ON members.member_id = transactions.member_id
-- WHERE members.status = "Active" 
--   AND transactions.status = "Returned";
--   

-- SELECT member_name,book_name,fine_amount
-- FROM books
-- INNER JOIN transactions ON transactions.book_id = books.book_id
-- INNER JOIN members ON members.member_id = transactions.member_id
-- WHERE members.address = "Pune" AND transactions.fine_amount > 0 ;

-- SELECT member_name,book_name,category,price
-- FROM books
-- INNER JOIN transactions ON transactions.book_id = books.book_id
-- INNER JOIN members ON members.member_id = transactions.member_id
-- WHERE members.membership_type = "Student" AND books.price > 700;

SELECT category,COUNT(books.book_id) AS book_issued,SUM(transactions.fine_amount) AS total_fine
FROM books 
INNER JOIN transactions ON transactions.book_id = books.book_id
WHERE transactions.status = "Overdue"
GROUP BY books.category;

SELECT category,COUNT(books.book_id) AS book_issued,AVG(transactions.fine_amount) AS avg_fine
FROM books
INNER JOIN transactions ON transactions.book_id = books.book_id
WHERE transactions.status = "Overdue"
GROUP BY books.category;

SELECT category,COUNT(books.book_id) AS total_book_issued,SUM(transactions.fine_amount) AS total_fine,AVG(transactions.fine_amount) AS avg_fine
FROM books
INNER JOIN transactions ON transactions.book_id = books.book_id
WHERE transactions.status = "Overdue" AND books.price > 500
GROUP BY books.category
HAVING total_book_issued >=2
ORDER BY total_fine DESC;

SELECT member_name,membership_type,COUNT(books.book_id) AS total_books_issued,SUM(transactions.fine_amount) AS total_fine
FROM members
LEFT JOIN transactions ON members.member_id = transactions.member_id
		AND transactions.status = "Overdue"
LEFT JOIN books ON  books.book_id = transactions.book_id
		AND books.price > 500
GROUP BY member_name,membership_type;


SELECT member_name ,COUNT(transaction_id) AS total_transactions 
FROM members
LEFT JOIN transactions ON transactions.member_id = members.member_id
GROUP BY member_name
ORDER BY total_transactions DESC;

SELECT member_name, membership_type, coalesce(SUM(transactions.fine_amount),0) AS total_fine
FROM members
LEFT JOIN transactions ON transactions.member_id = members.member_id
GROUP BY member_name,membership_type
ORDER BY total_fine DESC;

SELECT book_name,category,COUNT(transactions.transaction_id) AS total_issued
FROM books
LEFT JOIN transactions ON transactions.book_id = books.book_id 
GROUP BY book_name, category;

SELECT book_name,price 
FROM books 
WHERE price> (
		SELECT AVG(books.price) AS avg_price 
        FROM books 
	);

SELECT member_name,fine_amount
FROM transactions AS t 
INNER JOIN members AS m
	ON m.member_id = t.member_id
WHERE t.fine_amount>(
			SELECT AVG(fine_amount) AS avg_fine
            FROM transactions
            );
            
SELECT member_name,SUM(fine_amount) AS total_fine
FROM members
INNER JOIN transactions ON transactions.member_id = members.member_id
GROUP BY member_name
HAVING total_fine>0;

SELECT book_name,COUNT(transaction_id) AS total_transactions
FROM books AS b
INNER JOIN transactions AS t
		ON t.book_id = b.book_id
GROUP BY book_name;

SELECT member_name,SUM(fine_amount) AS total_fine 
FROM members AS m
INNER JOIN transactions AS t
	ON t.member_id =  m.member_id
GROUP BY member_name 
ORDER BY total_fine DESC 
LIMIT 3;

SELECT category, book_name, price
FROM books AS b
WHERE price = ( 
				SELECT MAX(price)
                FROM books 
                WHERE b.category = category
			);


