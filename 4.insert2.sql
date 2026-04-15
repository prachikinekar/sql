-- create database 
-- use database 
-- drop database 
-- create table 
-- drop table
-- descibe table 

show databases;
use batch730pmapr;
show tables;
select * from student;

drop table student;

drop database batch730pmapr;

create database batch730pmapr;

use batch730pmapr;

create table students(
name varchar(20),
email_id varchar(20),
mobile varchar(10)
);

-- Insert statements
-- -------------------------------------------
-- 1. Simple INSERT (All columns, single row)
-- -----------------------------------------------
insert into students(name,email_id,mobile)values("prachi","prachi@gmail.com","8766079061");
select * from students;

-- 2️. INSERT Without Column Names (order matters!)
insert into students values("krish","krish07@gmail.com","8806294627");
insert into students values ("vaish","vaish11@gmail.com","9527552556");
insert into students values ("vaishnavi","vaishnavi3@gmail.com","9923599695");


-- 3️. INSERT With Multiple Rows (Bulk Insert)
-- --------------------------------------------
insert into students values
("ritu singh","ritu@gmail.com","9875689078"),
("nitu rao","nitu@gmail.com","8875689078"),
("pankaj","pankaj@gmail.com","8879689078");

-- 4. insert selected column
-- --------------------------
insert into students(name,email_id)
values("preet","preet12@gmail.com"),
("ram","ram12@gmail.com");

describe students;
insert into students(email_id,mobile)
values("radha1@gmail.com","5674556342"),
("ritu44@gmail.com","8879689078");

-- 5. insert from another table
-- ---------------------------------

create table temp_students(
name varchar(20),
email_id varchar(20),
mobile varchar(20)
);

show tables;

insert into temp_students values
("vishu","vishu123@gmail.com","9855645232"),
("kishu","kishu23@gmail.com","9923567890");

select * from students;

select * from temp_students;

insert into students 
select * from temp_students;



