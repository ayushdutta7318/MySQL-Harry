-- SELF JOIN in SQL: Used when we want to join a table to itself such that we get name of referer.
use startersql;
-- ALTER TABLE users
-- ADD COLUMN refered_by_id INT
UPDATE users SET refered_by_id = 2 WHERE id IN (3,4,10,21,20);
UPDATE users SET refered_by_id = 3 WHERE id IN (7,13,12);

SELECT
a.id,
a.name AS user_name,
b.name AS refered_by_name
FROM users AS a
INNER JOIN users AS b ON a.refered_by_id = b.id;

SELECT * FROM users;

