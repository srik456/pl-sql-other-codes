declare
v_deptid number(4):=10;
v_dname varchar2(30);
v_mgrid number(6);
v_locid number(4);
begin
select department_name,manager_id,location_id into v_dname,v_mgrid,v_locid from departments where department_id=v_deptid;
dbms_output.put_line(v_deptid||' '||v_dname||' '||v_mgrid||' '||v_locid);
end;
/
