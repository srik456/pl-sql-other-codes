 declare
 v_emprow emp%rowtype;
 num number;
 begin
 select * into v_emprow from emp where employee_id=102;
 dbms_output.put_line(v_emprow.employee_id||' '||v_emprow.first_name||v_emprow.salary||v_emprow.Dept_no);
 num:=5/0;
 dbms_output.put_line(' '||num);
 exception
 when no_data_found then
 dbms_output.put_line('No such record');
 when too_many_rows then
 dbms_output.put_line('Too many rows');
 when zero_divide then
 dbms_output.put_line('Dont divide by zero');
 end;
/
