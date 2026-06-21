USE startersql;

SELECT * FROM users;
SELECT * FROM addresses;

-- SELECT users.name,users.gender , addresses.city, addresses.state, addresses.id AS addresses_id
-- FROM users
-- INNER JOIN addresses ON users.id = addresses.user_id;

-- SELECT users.name,users.gender , addresses.city, addresses.state, addresses.id AS addresses_id
-- FROM users
-- LEFT JOIN addresses ON users.id = addresses.user_id;

SELECT users.name,users.gender , addresses.city, addresses.state, addresses.id AS addresses_id
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;

