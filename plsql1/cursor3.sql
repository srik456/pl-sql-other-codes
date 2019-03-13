declare
cursor e_cursor is select employee_id,first_name,salary,Dept_no from emp;

begin
for emp_rec in e_cursor
loop
dbms_output.put_line(emp_rec.employee_no||' '||emp_rec.first_name||' '||emp_rec.salary||' '||emp_rec.Dept_no);
end loop;
end;
/
