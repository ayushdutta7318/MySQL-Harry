--  select * from users where gender in ("Male", "Female");
--  select * from users where gender = "Female" and salary > 70000;

--  select * from users where gender = "Male" or salary>70000 order by date_of_birth asc;
--  select * from users where gender = "Male" or salary>70000 order by date_of_birth desc;

select * from users where gender = "Male" or salary>70000 order by date_of_birth desc limit 5;