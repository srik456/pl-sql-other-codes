create or replace package body myemp
as
function getsalary(empid number) return number as v_salary number;
begin
select salary into v_salary from emp where employee_id=empid;
return v_salary;
end getsalary;
procedure updatesal(empid number,nsalary number)
as
begin 
update emp set salary=nsalary where employee_id=empid;
end updatesal;
end myemp; 
/
