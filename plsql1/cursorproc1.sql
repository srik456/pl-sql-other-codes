create or replace procedure getSalemp(v_salary emp.salary%type)
as
cursor emp_cursor is select employee_id,first_name,salary,Dept_no from emp where salary<=v_salary;
v_empno emp.employee_id%type;
v_name emp.first_name%type;
v_sal emp.salary%type;
v_deptno emp.Dept_no%type;
begin
open emp_cursor;
loop
fetch emp_cursor into v_empno,v_name,v_sal,v_deptno;
exit when emp_cursor%notfound;
dbms_output.put_line(v_empno||' '||v_name||' '||v_sal||' '||v_deptno);
end loop;
close emp_cursor;
end;
/
