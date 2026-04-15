use batch730pmapr;
show tables;

-- 5. insert from another table
-- ---------------------------------

drop table temp_students;

create table temp_students(
name varchar(30),
email_id varchar(30),
mobile varchar(30));

insert into temp_students values(
"hrithik","hrithik34@gmail.com","8756783456"),
("ritesh","ritesh23@gmail.com","9987896756"),
("ritika","ritika5@gmail.com","98745678");

select * from students;
select * from temp_students;

insert into students 
select * from temp_students;

-- ----------------------------------------------------
drop table students;
drop table temp_students;

show tables;

create table temp_students(
name varchar(30),
email_id  varchar(30),
mobile varchar(10),
location  varchar(50),
age int
);

insert into temp_students (name,email_id,mobile,
location,age) values("hrithik","hrithik34@gmail.com","8756783456","katol",23),
("rithik2","rithik34@gmail.com","9028697209","nagpur",23),
("krishu","krishu@gmail.com","9567892323","banglore",23);

select * from temp_students;

create table students(
fullname varchar(20),
email_id varchar(20),
phone varchar(20));

select * from students;

insert into students (fullname,email_id,phone)
select name ,email_id,mobile  from temp_students;

insert into students (fullname,email_id,phone)
select name,email_id,mobile from temp_students  where location="pune";

drop table students;

insert into students (fullname,email_id,phone)
select name, email_id,mobile from temp_students where age=23;

-- 6. insert using SET syntax
-- --------------------------------
insert into students
set fullName="prachi k",
email_id="prachi@gmail.com",
phone="987656834";

select * from students;
