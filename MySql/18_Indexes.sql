-- INDEXES in SQL: An index is a data structure the database uses to find rows faster—like an index in a book. Without one, SQL may need to scan every row.
use startersql;
CREATE INDEX idx_gender on users(gender);
-- Multi Column index:
CREATE INDEX idx_gender_salary ON users(gender, salary);
SHOW INDEXES FROM users;
-- Compare if select query is fast:
SELECT * FROM users WHERE gender = "Female" AND salary > 70000;
-- Dropping an index:
DROP INDEX idx_gender ON users;