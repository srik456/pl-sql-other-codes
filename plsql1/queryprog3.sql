declare
counter number(3);
begin
dbms_output.put_line('The following are the details of department with dept id less than 40');
for counter in(select * from departments where department_id<40)
loop
dbms_output.put_line(counter.department_id||' '||counter.department_name||' '||counter.manager_id||' '||counter.location_id);
end loop;
end;
/
