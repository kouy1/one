show databases;

show tables from scott;


-- 1
select *
from scott.emp
where DEPTNO = 30;

-- 2
SELECT *
FROM scott.emp
WHERE JOB = 'clerk';

-- 3
select *
from scott.emp
where comm > sal;

-- 4
select *
from scott.emp
where comm > sal * 0.3;

-- 5
select *
from scott.emp
where DEPTNO = 10 and JOB = 'manager'
   or DEPTNO = 20 and JOB = 'clerk';

-- 6
select *
from scott.emp
where DEPTNO = 10 and job = 'manager'
   or DEPTNO = 20 and job = 'clerk'
   or JOB != 'manager' and job != 'clerk' and sal > 2000;

-- 7
select *
from scott.emp
where comm > 0;

-- 8
select *
from scott.emp
where comm < 100
   or comm is null;



