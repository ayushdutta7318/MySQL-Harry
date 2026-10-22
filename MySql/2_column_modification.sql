-- to rename a table--  
-- rename table users to programmers;-- 

-- alter table programmers add column is_active boolean default true;-- 
select * from programmers;

-- to switch columns--
alter table programmers modify column email varchar(100) after id;  
select * from programmers;