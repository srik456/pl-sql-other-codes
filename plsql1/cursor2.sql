declare
cursor e_cursor is select employee_id,first_name,salary,Dept_no from emp;
v_empno emp.employee_id%type;
v_name emp.first_name%type;
v_salary emp.salary%type;
v_deptno emp.Dept_no%type;
begin
open e_cursor;
loop
fetch e_cursor into v_empno,v_name,v_salary,v_deptno;
exit when e_cursor%notfound;
dbms_output.put_line(v_empno||' '||v_name||' '||v_salary||' '||v_deptno);
end loop;
close e_cursor;
end;
/
