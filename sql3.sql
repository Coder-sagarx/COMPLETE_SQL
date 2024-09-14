show databases;
create database ddl;
use ddl;
create table  customer(
id int primary key,
cname varchar(255),
address varchar(255),
city varchar(255),
gender varchar(255),
pincode int
);

insert into customer 
values (1,'a','kausani','almora','male',263629),
(2,'b','ss','almora','male',263629),
(3,'c','f','e','female',23232),
(4,'d','fv','v','male',233216),
(5,'f','ee','almora','female',676555);

select *from customer; 
insert into customer 
values (6,'g','ko','alra','female',null);

create table order_details(
order_id int primary key,
delivery_date date,
cust_id int,
foreign key (cust_id) references customer(id)
);
insert into order_details
values (1,'2019-03-11',245);

delete from customer where id =145;

select * from order_details;
 
