USE startersql;

-- Wildcard operator:
SELECT * FROM users WHERE name LIKE '_a_h%';
-- the expression '_a_h%' means return a name where there is frist char, then a then any char, then h.

-- OFFSET
SELECT * FROM users
ORDER BY id
LIMIT 5;
-- above return first 5 entries, but if we want to skip first 10 entries we use offset

SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;

-- DISTINCT: Return only unique values froma table
SELECT DISTINCT name FROM users;

-- TRUNCATE KEYWORD:
SELECT * FROM addresses;
TRUNCATE TABLE addresses;
SELECT * FROM addresses;

-- MODIFY: only change datatype
ALTER TABLE users
MODIFY COLUMN salary BIGINT;