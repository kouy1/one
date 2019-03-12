drop database if exists db_b;
create database db_b;

drop table if exists db_b.user;
create table db_b.user
(
  id       int auto_increment primary key comment 'id pk',
  username varchar(255) not null comment 'username nn',
  password varchar(255) not null comment 'password nn',
  role     int(1)       not null default 0 comment 'role 0-sutdent 1-admin nn'
) comment 'user table';

drop table if exists db_b.book;
create table db_b.book
(
  id        int auto_increment primary key comment 'id pk',
  book_name varchar(255) not null comment 'Borrow book nn'
) comment 'book table';

drop table if exists db_b.enroll;
create table db_b.enrooll
(
  id     int auto_increment primary key comment 'id pk',
  time   datetime not null default now() comment 'enroll time nn',
  userid int      not null comment 'user id nn',
  book   int      not null comment 'book id nn'
) comment 'enroll table';

alter table db_b.enroll
add constraint