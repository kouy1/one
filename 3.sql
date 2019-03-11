drop database if exists db_csda;
create database db_csda;

show tables from db_csda;

create table db_csda.user
(
  id       varchar(15) comment 'id nn',
  username varchar(255) comment 'username nn',
  password varchar(255) comment 'password nn',
  email    varchar(255) comment 'email nn'
) comment 'id';

select *
from db_csda.user;

load data local infile 'D:\1.txt'
  into table db_csda.user
  fields terminated by '?'
  (username, password, email)
  set id = null;

select password, count(password)
from db_csda.user
group by password
order by 2 desc
limit 10 offset 0;