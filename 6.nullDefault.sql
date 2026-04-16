-- Constraints
-- NULL, Default and check Constraints
-- ------------------------------------
use batch730pmapr;

show tables;
show databases;

select * from students;
select * from temp_students;


drop table students;

create table students(
fullname varchar(20),
email_id varchar(20),
phone varchar(20));

insert into students (email_id ,phone)
values("xyz@gmail.com","9876543788");

insert into students (email_id ,phone)
values("abc@gmail.com","9844654378");
-- ----------------------------------------------
drop table students;


create table students 
(fullname varchar(30) not null,
email_id  varchar(30),
phone  varchar(20));

insert into students (fullname,email_id ,phone)
values("abc","abc@gmail.com","9844654378");

insert into students values(
"krish","krish12@gmail.com","9023445789");

insert into students (fullname) values(
"vaishnavi");


-- ------------------------------------------------------------------------------------
create table students(
fullName  varchar(20) not null,
email_id varchar(20),
phone varchar(20),
age int not null default 18
);

describe students;
select * from students;

insert into students values ("prachik","prachi12@gmail.com","9987788245",34),
("grishu","grishu23@gmail.com","5675544333",23);

select * from students;

insert into students (fullName,email_id,phone)
values("kk","kk@gmail.com","8897897672");

insert into students (fullName,email_id,phone)
 values ("kir","kir@gmail.com","3444443234");

-- insert into students (fullName,email_id,phone,age)
-- values ("vedu","vedu@gmail.com","9876456723",null);-- col  age cannot be null

