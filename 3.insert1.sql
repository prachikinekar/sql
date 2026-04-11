use batch730pmapr;
-- create database 
-- use database 
-- drop database 
-- create table 
-- drop table
-- describe table 
-- ----------------------------------------------------------------------------------------------
-- CRUD Operations
-- ----------------------

-- create - insert statements
-- read - select statements
-- update - update statements
-- delete - delete statements

-- Insert statements
-- -------------------------------------------
show tables;

create table student (
name varchar(30),
emailid varchar(30),
phoneno BIGINT
);

drop table  student;


desc student;


insert into student values ("krish1","krishkinekar07@gmail.com",9878045645);
describe student;

select * from student;
show tables;
-- Insert statements
-- -------------------------------------------
-- 1. Simple INSERT (All columns, single row)
insert into student(name,emailid,phoneno) values ('prachi', 'prachikinekar1214@gmail.com', "8766079061");

-- 2️. INSERT Without Column Names (order matters!)
insert into student values("krish","krishkinekar12@gmail.com","3455667773");
insert into student values("vaish","vaishkinekar12@gmail.com","8967899078");

-- retrive 
select * from student;

-- 3} insert with multiple rows
insert into student (name,emailid,phoneno) 
values 
("priti","priti12@gmail.com","8764567889"),
("radha","radha12@gmail.com","8764567889"),
("radha","radha12@gmail.com","8764567889");

-- 4. insert selected column

insert into student (name,phoneno) values("grishu","9807890785");

select * from student;

insert into student (emailid,phoneno) values("jui@gmail.com","9807890785");