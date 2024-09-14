 show databases;
 create database info;
 use info;
 
 create table detail(
 id INT primary key,
 name varchar(255),
 age INT primary key
 );

insert into detail values(2900,' singh bisht', 288);
insert into detail values(207,'  bisht', 2989);
insert into detail values(6780,'sourabh singh ', 2890);
insert into detail values(80,'tt singh ', 75);
insert into detail values(480,'dsaf singh ', 42);
insert into detail values(68,'sf singh ', 23);
insert into detail values(6430,'faa singh ', 4);
insert into detail values(674320,'fd singh ', 87);
 
select * from  detail;
show tables ;
select +1;
select now();
select ucase('sgarjkabsh bajbhjajh hsbabhk xskj ahk');
select lcase('NEWUIHIUSIUGDIS KDBUIBDSIU');

 select * from detail where id>500;
 select * from detail where age between 200 and 300;
 select * from detail where name in ('sagar singh bisht',' singh bisht','  bisht')  ;
 select * from detail where age in (21,75)  ;   
 select * from detail where name NOT IN  ('sagar singh bisht','  bisht', ' singh');
 
 
 
 
 
 
 


 
 

