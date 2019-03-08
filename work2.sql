show databases;
show tables from scott;

select *
from emp;
select *
from dept;
select *
from salgrade;

-- 1
select scott.emp.ENAME, scott.emp.DEPTNO
from scott.emp
where job = 'clerk';

-- 2
select emp.sal a
from scott.emp
where ENAME = 'scott'

union

select *
from scott.emp
where ENAME != 'scott' and sal>a;


