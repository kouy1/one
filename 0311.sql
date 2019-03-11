create or replace view scott.v_emp
as
select ename, empno, job
from scott.emp
where DEPTNO = 30;

select *
from scott.v_emp;
show tables from scott;
