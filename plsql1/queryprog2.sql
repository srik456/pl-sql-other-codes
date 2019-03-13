declare
v_deptid departments.department_id%type:=10;
v_dname departments.department_name%type;
v_mgrid departments.manager_id%type;
v_locid departments.location_id%type;
begin
select department_name,manager_id,location_id into v_dname,v_mgrid,v_locid from departments where department_id=v_deptid;
dbms_output.put_line(v_deptid||' '||v_dname||' '||v_mgrid||' '||v_locid);
end;
/
