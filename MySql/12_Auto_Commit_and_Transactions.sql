use startersql;

SET autocommit = 0;
-- select * from users;
-- by mistake we deleted id = 6 rather than id = 5;
rollback;
-- delete from users where id = 6;

-- deleting correct person:
delete from users where id = 5;
commit;
select * from users;