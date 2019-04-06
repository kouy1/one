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


drop table if exists db_ec.category;
create table db_ec.category
(
  id      int auto_increment primary key comment 'id pk',
  title   varchar(255) not null comment 'title nn',
  picture varchar(255) not null comment 'picture nn'

) comment 'category table';

drop table if exists db_ec.product;
create table db_ec.product
(
  id            int auto_increment primary key comment 'id pk',
  title         varchar(255)  not null comment 'title nn',
  price         decimal(8, 2) not null comment 'price nn',
  originalprice decimal(8, 2) comment 'original price',
  sildepictures text          not null comment 'slide pictures', -- 1.jpg 2.jpe

  categoryid    int comment 'parent category id fk'
) comment 'product table';



select *
from db_ec.user;

select *
from db_ec.info;


drop table if exists db_ec.order;
create table db_ec.order
(
  id            int auto_increment primary key comment 'id pk',
  name          varchar(255) not null comment 'name nn',
  in_time       varchar(255) comment 'in_time',
  out_time      varchar(255) comment 'out_time'
) comment 'order table';
