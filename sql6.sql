-- refrencial constraints
show databases;
create database referential;
use referential;

create table customer(
id integer primary key,
cname varchar(255),
address varchar(255),
city varchar(255),
gender varchar(255),
pincode int

);

insert into customer 
values(1,'sagar','kausani','almora','male',263629),
(6,'a','kausani','almora','male',263629),
(2,'b','ss','almora','male',263629),
(3,'c','f','e','female',23232),
(4,'d','fv','v','male',233216),
(5,'f','ee','almora','female',676555);

select * from customer;
-- replace
replace into customer(id,address)
values(6,'colony');

replace into customer(id,cname,gender,city,pincode)
values(10,'koko','male','bageshwar',898987);
 
create table order_details(
order_id int primary key,
delivery_data Date,
cust_id int,
foreign key(cust_id) references Customer(id) ON DELETE set NULL
);

insert into order_details values(1,'2024-09-02',1);
insert into order_details values(4,'2024-09-02',1);
select * from order_details;

delete from customer  where id=1;

