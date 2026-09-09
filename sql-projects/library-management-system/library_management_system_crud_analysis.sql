USE library_management;

# Display all records from the books table.
SELECT * FROM books;

# Display only the book_name, author, and price columns from the books table.
SELECT book_name,author,price FROM books;

# Display all books where the category is AI.
SELECT book_name 
FROM books
WHERE category = "AI";

# Display the names and prices of all books where the price is greater than ₹800
SELECT book_name,price 
FROM books
WHERE price > 800;

# Display the names and membership type of all members whose status is Active
SELECT member_name,membership_type 
FROM members
WHERE status = "Active";

# Display all transactions where the status is Issued.
SELECT transaction_id 
FROM transactions
WHERE status = "Issued";

# Display all books published after the year 2020.
SELECT book_name 
FROM books
WHERE publication_year > 2020;

# Display all books that belong to the Finance category.
SELECT book_name 
FROM books
WHERE category = "Finance";

# Display all books where the available copies are less than the total copies.
SELECT book_name 
FROM books
WHERE available_copies < total_copies;

# Display the names of all members whose membership type is Student.
SELECT member_name 
FROM members 
WHERE membership_type = "Student";

# Display all books sorted by price in ascending order.
SELECT book_name,price
FROM books
ORDER BY price ASC;

# Display all books sorted by publication year in descending order.
SELECT book_name, publication_year
FROM books
ORDER BY publication_year DESC;

# Display the first 5 books from the books table.
SELECT book_name
FROM books 
LIMIT 5;

# Display all books whose price is between ₹500 and ₹1000 (inclusive).
SELECT book_name
FROM books
WHERE price BETWEEN 500 AND 1000;

# Display all transactions where the fine amount is greater than 0.
SELECT transaction_id 
FROM transactions 
WHERE fine_amount > 0;