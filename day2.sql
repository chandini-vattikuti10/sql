show databases;
use demo;
-- using DDL commands 
create table fruits(sno int,name varchar(20),cost int);
desc fruits;
-- DML commands - 4 types
select * from fruits;
insert into fruits values(1,'mangoes',500);
insert into fruits values(2,'apple',300),(3,'banana',60);
select * from fruits;
insert into fruits(name,cost,sno)values('guava',100,4);
insert into fruits(name,sno,cost)values('grapes',5,200),('pineapple',6,700),('strawberry',7,450),('lychee',8,800),('cherry',9,900),('orange',10,100);
--DQL commands- 4 types
select * from fruits;
select * from fruits where cost>500;
select name from fruits;
select name,cost from fruits where cost<700;
alter table fruits add kg int;
desc fruits;
-- DML commands 
alter table fruits rename column name to f_name;
select * from fruits;
insert into fruits(f_name,sno,cost)values('pineapple',6,700),('strawberry',7,450),('lychee',8,800),('cherry',9,900),('orange',10,100);
select * from   fruits; 
update fruits set kg=1;    1
select * from fruits;
update fruits set f_name='custard' where sno=2;   2
update fruits set f_name='kiwi' where sno=3;
update fruits set f_name='grapes' where sno=1;
update fruits set f_name='lemon' where sno=4;
update fruits set f_name='water melon' where sno=5;
update fruits set f_name='carrot' where sno=6;
update fruits set f_name='berry' where sno=7;
update fruits set f_name='amla' where sno=8;
update fruits set f_name='blueberry' where sno=9;
update fruits set f_name='apricot' where sno=10;

select * from fruits;
drop table fruits 
delete from fruits where sno>5;
select * from fruits;


