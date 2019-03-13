create or replace procedure insrtrecord(v_empid number,v_name varchar2,v_salary number,deptno number)
as
begin
insert into emp(employee_id,first_name,salary,Dept_no) values(v_empid,v_name,v_salary,deptno);
end;
/
