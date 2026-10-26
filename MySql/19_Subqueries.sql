use startersql;

SELECT AVG(salary) FROM users;
SELECT * FROM users WHERE salary > (SELECT AVG(salary) FROM users);

SELECT id, name, refered_by_id
FROM users
WHERE refered_by_id IN(
SELECT id FROM users WHERE salary > (SELECT AVG(salary) FROM users)
);