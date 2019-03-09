show databases;
show tables from scott;

select *
from scott.emp;
select *
from scott.dept;
select *
from salgrade;

-- 1
select distinct d.dname, d.deptno
from scott.dept d,
     scott.emp e
where d.DEPTNO = e.DEPTNO;


-- 2
select *
from scott.emp
where sal > (select scott.emp.SAL from scott.emp where ENAME = 'scott');

-- 3
select e.ENAME, m.ename
from scott.emp e
       left outer join scott.emp m on e.mgr = m.EMPNO;

select e.ename, (select m.ename from scott.emp m where m.EMPNO = e.mgr) ename
from scott.emp e;

select e.ename, m.ename
from scott.emp e,
     scott.emp m
where e.MGR = m.empno;


-- 4
select e.ename, m.ename
from scott.emp e
       inner join scott.emp m on e.mgr = m.EMPNO
where e.HIREDATE;

select e.ename, m.ename
from scott.emp e,
     scott.emp m
where e.mgr = m.EMPNO
  and e.HIREDATE;

-- 5
select e.ENAME, d.DNAME
from scott.emp e,
     scott.dept d
where e.DEPTNO = d.DEPTNO;

-- 6
select e.ENAME, d.DNAME
from scott.emp e,
     scott.dept d
where job = 'clerk'
  and e.DEPTNO = d.DEPTNO;


