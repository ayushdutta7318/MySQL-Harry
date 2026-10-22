use startersql;

-- Update value in column

-- update users set salary = 45000 where id = 1;

-- update multiple values:
update users set salary = 43000, email = 'aarav@aarav.com' where id =1;
-- select * from users;

-- make id = 5 salary = 100000:
update users set salary = 100000 where id = 5;
-- select * from users;

update users set email = 'aisha_khan@gmail.com' where id = 7;
-- select * from users;

update users set salary=salary+10000 where salary<60000;
-- select * from users;

update users set gender = "other" where name = "Ishaan";
-- select * from users;

update users set salary = 50000;
select * from users;
