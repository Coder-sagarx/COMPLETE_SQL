show databases;
create database rev;
use rev;
create table pairs(
a int,
b int
);

insert into pairs values(1,2),(6,5),(2,1),(4,2),(4,3),(5,6),(1,3),(2,4);
select * from pairs;

-- remove reverse pairs	
-- method one

