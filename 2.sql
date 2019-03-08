create database db_ip;

create table db_ip.ip
(
  id  varchar(15)  not null comment 'id pk',
  min varchar(255) not null comment 'min id NN',
  max varchar(255) not null comment 'max id NN',
  loc varchar(255) not null comment 'location NN'
) comment 'ip address table';

select *
from db_ip.ip;

load data local infile 'd:/ip.txt'
  into table db_ip.ip
  fields terminated by '|'
  (min, max, loc)
  set id = null;