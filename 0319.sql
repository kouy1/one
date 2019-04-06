drop database if exists db_test;
create database db_test;

drop table if exists db_test.groups;
create table db_test.groups
(
  ID         int auto_increment not null primary key comment 'id nn pk',
  Name       varchar(50)        not null comment 'Name  nn',
  CreateDate varchar(50) comment 'password '
) comment 'groups table';

select *
from db_test.groups;

drop table if exists db_test.students;
create table db_test.students
(
  ID      int auto_increment not null primary key comment 'id nn pk',
  GroupID INT comment 'GroupID fk',
  Name    varchar(50)        not null comment 'Name  nn',
  Gender  int comment 'Gender ',
  Aga     int comment 'Aga'
) comment 'students table';

alter table db_test.students
  ADD constraint
    students_fk_groups
    foreign key (GroupID)
      references db_test.groups (ID);

insert into  db_test.groups(ID, Name, CreateDate) value (11,'一班','0101');
insert into  db_test.students() value (11,'一班','0101');

select s.Aga + 1
from db_test.students s;

# delete
# from db_test.students s
# where s.Name = '张三';

select s.Name, s.Gender, s.Aga
from db_test.students s
where s.Name like '张%'and s.Gender=1;

select s.Name, s.Gender, s.Aga
from db_test.students s
order by s.Aga
limit 0 offset 10;

select s.Name, s.GroupID, s.Aga
from db_test.students s
where s.Aga in (20, 22);

select s.Name, s.GroupID, s.Aga
from db_test.groups g,
     db_test.students s
where s.Gender = 1
  and g.ID = 1;

select g.Name, count(s.ID)
from db_test.groups g,
     db_test.students s
group by g.ID;

