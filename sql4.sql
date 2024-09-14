-- ddl

create table account(
id int primary key,
name varchar(255) unique,
-- balance int,
-- constraint acc_balance_chk check(balance>1000)
balance int not null default 0
);
insert into account (id,name)
values (1,'A');
insert into account (id,name)
values (3,'F');
insert into account (id,name)
values (4,'Q');
-- drop table account;
select * from account_details;
 
-- add new column alter
alter table account add interest float not null default 0;

-- modify 
alter table account modify interest double not null default 0;

desc account;

-- change columns
alter table account change interest saving_interest float not null default 0;

-- drop columns
alter table account drop column saving_interest;

-- rename table
alter table account rename to account_details;



