declare
name varchar2(2);
begin
select first_name into name from emp where employee_id=&eid;
dbms_output.put_line('Name is'||name);
exception
when no_data_found then
dbms_output.put_line('no employees exists');
when value_error then 
dbms_output.put_line('Name is too big');
end;
/
