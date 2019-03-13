declare
name varchar2(8);
invalid_password
begin
name:='&e';
dbms_output.put_line('Length is '||length(name));
end;
/
