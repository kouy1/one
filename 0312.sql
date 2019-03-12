-- 创建数据库
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
create table db_b.enroll
(
  id     int auto_increment primary key comment 'id pk',
  time   datetime not null default now() comment 'enroll time nn',
  userid int      not null comment 'user id fk',
  bookid int      not null comment 'book id fk'
) comment 'enroll table';

alter table db_b.enroll
  add constraint
    enroll_fk_user
    foreign key (userid)
      references db_b.user (id);

alter table db_b.enroll
  add constraint
    enroll_fk_bookid
    foreign key (bookid)
      references db_b.book (id);

-- 查询数据库
show databases;
show tables from db_b;

select *
from db_b.user;

select *
from db_b.book;

select *
from db_b.enroll;

-- 添加数据

-- 添加管理员
insert into db_b.user value (null, 'admin', md5('123'), 1);

-- 图书馆加书
insert into db_b.book value (null, 'c语言程序设计');
insert into db_b.book value (null, 'java程序设计');

-- 图书馆减书
# delete
# from db_b.book
# where id = 1;

-- 修改借书信息
update db_b.book
set book_name='python程序设计'
where id = 1;

-- 学生注册
insert into db_b.user(username, password) value ('小明', md5('abc'));
insert into db_b.user(username, password) value ('小红', md5('def'));
insert into db_b.user(username, password) value ('小华', md5('ghi'));

-- 学生登陆借书
insert into db_b.enroll(id, userid, bookid) value (null, 2, 1);
insert into db_b.enroll(id, userid, bookid) value (null, 3, 2);

-- 查询借书情况
select u.username, b.book_name
from db_b.user u
       inner join db_b.enroll e
                  on u.id = e.userid
       inner join db_b.book b
                  on e.bookid = b.id;


select u.username, b.book_name
from db_b.user u
       inner join db_b.enroll e
                  on u.id = e.userid
       inner join db_b.book b
                  on e.bookid = b.id
where b.id = 1;



