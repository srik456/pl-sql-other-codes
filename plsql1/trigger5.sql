 create or replace trigger chk_salary
 before insert
 on emp
 for each row
 begin
 if not :new.salary between 4000 and 60000 then
 raise_application_error(-20100,'salary should be between 4000 and 60000');
 end if;
 end;