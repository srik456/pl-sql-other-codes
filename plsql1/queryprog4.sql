declare
v_countemp number(5);
v_salary number(6);
begin
select count(*) into v_countemp from emp;
dbms_output.put_line('Total no of employees are'||' '||v_countemp);
select sum(salary) into v_salary from emp;
dbms_output.put_line('Total salary is'||' '||v_salary);
end;
/
