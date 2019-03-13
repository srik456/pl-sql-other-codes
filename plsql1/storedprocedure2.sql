create or replace procedure getSalary(v_empid in number)
as
v_salary number(5);
begin
select salary into v_salary from emp where employee_id=v_empid;
dbms_output.put_line('Salary of '||v_empid||' is '||v_salary);
end;
/
