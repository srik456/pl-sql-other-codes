declare

cursor e_cursor is select empno,name,salary,deptno from emp;

v_empno emp.employee_id%type;
v_name emp.name%type;
v_salary emp.salary%type;
v_deptno emp.deptno%type;
begin
open e_cursor;
fetch e_cursor into v_empno,v_name,v_salary,v_deptno;
dbms_output.put_line(v_empno||' '||v_name||' '||v_salary||' '||v_deptno);
close e_cursor;

end;