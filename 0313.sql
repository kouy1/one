drop database if exists db_ec;
create database db_ec;

drop table if exists db_ec.user;
create table db_ec.user
(
  id       int auto_increment primary key comment 'id pk',
  email    varchar(255) not null unique comment 'email nn un',
  password varchar(255) not null comment 'password nn',
  mobile   varchar(255) not null unique comment 'mobile nn un'
) comment 'user table';

drop table if exists db_ec.info;
create table db_ec.info
(
  id     int auto_increment primary key comment 'id pk',
  avatar varchar(255) comment 'avater',
  gender char(2) comment 'gender',
  city   varchar(255) comment 'city',
  userid int comment 'user id fk'
) comment 'user info table';


alter table db_ec.info
  ADD constraint
    info_fk_userid
    foreign key (userid)
      references db_ec.user (id);



select *
from db_ec.user;
select *
from db_ec.info;
