-- UNION and UNION ALL in SQL:

use startersql;

SELECT * FROM users;
SELECT * FROM addresses;
SELECT * FROM admin_users;

SELECT name, email FROM users
UNION
SELECT name, email FROM admin_users;

SELECT name, email, date_of_birth, "User" AS role from users
UNION
SELECT name, email, date_of_birth, "Admin" AS role from admin_users
ORDER BY date_of_birth;