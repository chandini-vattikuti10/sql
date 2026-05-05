show databases;
use demo;
create table user(
    user_id int primary key auto_increment,
    username varchar(20) not null,
    age int check(age >= 25),
    email varchar(20) unique,
    phno bigint unique,
    branch varchar(20) default "Reliance Digital"
);
desc user;
-- # 1. inserting the data with violating the constraint ---> age check 
insert into user(username, age, email, phno)
values('akhila', 22, 'khila@gmail.com', 7865324425);
-- #correcting the above error following the constraints
insert into user(username, age, email, phno)
values('akhila', 27, 'khila@gmail.com', 7865324425);
-- #2. inserting data into user
insert into user(username, age, email, phno)
values('shahrukh', 34, 'shah@gmail.com', 78756467575),
('srinadh', 30, 'srinadh@gmail.com', 74567324987);
insert into user(email, username, phno, age)
values('kajal@gmail.com', 'kajal', 69642973856, 35),
('jay@gmail.com', 'jay', 5674348278947, 28);
-- #3. can't insert values as the remaining values are not given 
insert into
values(email, phno)
values('janu@gmail.com', 87654567654);
-- #4. value count error as the user_id is given auto_increment constraint
insert into user
values(4, 'latha', 32, 'latha@gmail.com', 98765445698);
insert into user(username, age, email, phno)
values('jayalatha', 45, 'jay@gmail.com', 9876845345);
-- 5. duplicate entry at email as it is given a constraint "unique"
insert into user(username, age, email, phno)
values('yash', 29, 'yash@gmail.com', 9876845345);
-- 6. duplicate entry for phno
insert into user(username, age, email, phno)
values('krish', 31, 'krish@gmail.com', 9876845345);
-- 7. altering the user_id. To remove primary key we must first remove auto_increment by modfying the user_id
alter table user
modify user_id int;
-- 8. now, you can drop primary key directly as there will be only one primary key in the entire table of records
alter table user drop primary key;
-- 9. dropping the check constraint
show create table user;
alter table user drop check user_chk_1;
-- 10. uername dosn't have a default value
insert into user(user_id, email, age)
values(6, 'harika@gmail.com', 33);
desc user;
select *
from user;