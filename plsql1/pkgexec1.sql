create or replace package myemp
as
function getsalary(empid number) return number;
procedure update(empid number,nsalary number);
end myemp;
