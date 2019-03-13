declare
v_countemp number(5);
begin
select count(*) into v_countemp from emp where salary between 12000 and 17000;
dbms_output.put_line('Total no of employees are'||' '||v_countemp);
end;
/
