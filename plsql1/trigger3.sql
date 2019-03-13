create or replace trigger sal_audit
after
update on emp
for each row
begin
insert into salary_audit values(:old.employee_id,:old.salary,:new.salary);
end;
