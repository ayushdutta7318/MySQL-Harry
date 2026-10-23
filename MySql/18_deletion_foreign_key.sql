-- When we delete an id from users table, the address is also deleted with that user_id in addresses table.

-- DELETE FROM users WHERE id = 17;
select * from users;
select * from addresses;

-- Join Operation: we will join id coln from users and user_id coln from addresses and willl display name and city

select users.name, addresses.city, addresses.state, addresses.id
from users
INNER JOIN addresses on users.id = addresses.user_id;

-- we have LEFT JOIN and RIGHT JOIN as well where LEFT JOIN means users all records will be displayed and RIGHT JOIN means addresses all records will be displayed.