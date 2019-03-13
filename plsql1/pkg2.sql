create or replace package body myemp
as
function getsalary(empid number) return number
as
v_salary number;
begin
select salary from emp where employee_id=empid;
return v_salary;
end getsalary;
procedure updatesalary(empid number,nsalary number)
as
begin
update emp set salary=nsalary where employee_id=empid;
end updatesalary;
end myemp;