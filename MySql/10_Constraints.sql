-- Constraints in MySQL:

use startersql;
-- Alter table users add constraint unique_email unique (email);
-- select * from users;

-- Modify column
Alter table users
modify column name varchar(100) not null;
-- select * from users;

-- check constraint
-- Alter table users Add constraint check_dob check (date_of_birth > '1900-01-01');
select * from users;