-- dml
show databases;
create database temp;
use temp;

create table customer(
id integer primary key,
cname varchar(255),
gender varchar(255),
pincode int
);

insert into customer 
values(1,'sagar','male',263629),
(2,'sourabh','female',263624),
(3,'chiku','male',263623),
(4,'darshit','female',263622),
(5,'nikhil','female',263620);

insert into customer values(6,'bob','male',263626);

insert into customer (id,cname) values(7,'okok');

select* from customer;
-- update

update customer set gender ='male' ,pincode=23453 where id=7;

-- it have some security 
set sql_safe_updates=1;
update customer set pincode=pincode+1;

-- delete
delete from customer where id=7;
set sql_safe_updates=0;
delete from customer ;

 

 



