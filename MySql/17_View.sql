-- VIEW in MYSQL: It is a virtual table with some complex select query, so that we dont have to use complex select query again and again

-- SYNTAX:
CREATE VIEW rich_users AS
SELECT * FROM users WHERE salary > 70000;

-- SELECT * FROM rich_users;

-- Now lets decrease salary of one user to 30000, will VIEW also change? Yes!
UPDATE users SET salary = 30000 WHERE id = 14;

SELECT * FROM rich_users;
DROP VIEW rich_users;
