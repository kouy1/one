show databases;

create database db_school;

create table db_school.student
(
  num  int(2) comment '学号',
  name varchar(255) comment '姓名'
);

create table db_school.course
(
  id      int(2) comment '课程号',
  subject varchar(255) comment '课程名'
);

create table db_school.sc
(
  num int(2) comment '学号',
  id  int(2) comment '课程号'
);

show tables from db_school;

insert into db_school.student value (01, 'tom');
insert into db_school.student value (02, 'bob');
select *
from db_school.student;

insert into db_school.course value (11, 'math');
insert into db_school.course value (12, 'Chinese');
select *
from db_school.course;

insert into db_school.sc value (01, 11);
insert into db_school.sc value (02, 12);
select *
from db_school.sc;

select db_school.sc.id,
       db_school.course.subject
from db_school.course,
     db_school.sc
where db_school.course.id = db_school.sc.id
  and db_school.sc.num = 01;