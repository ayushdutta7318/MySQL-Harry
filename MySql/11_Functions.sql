-- SQL Functions

use startersql;

Select * from users;
select count(*) from users;
select count(*) from users where gender = "Male";
select min(salary) as min_salary, max(salary) as max_salary from users;
select sum(salary) as total_salary from users;
select avg(salary) as avg_salary from users;

-- calculate avg salary by gender
select gender, avg(salary) as avg_salary from users group by gender;
select gender, min(salary) as min_salary, max(salary) as max_salary from users group by gender;
select gender, sum(salary) as total_salary from users group by gender;

-- NOTE: We can use Comma(,) for chaining functions and constraints.
select id, gender, lower(name) as lower_name, length(name) as name_len from users;

-- add username
select id, gender, concat(lower(name), "5677") as username from users;

-- chaining functions:
select id, gender, concat(lower(name), "12345") as username, length(name) as name_len, year(date_of_birth) as yob from users;
