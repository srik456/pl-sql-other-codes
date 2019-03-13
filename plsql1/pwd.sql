declare
pwd varchar2(15);
invalid_password EXCEPTION;
begin
pwd:='&e';
if length(pwd)<8 then
raise invalid_password;
end if;
dbms_output.put_line('Password Length is '||length(pwd));
exception
when invalid_password then
dbms_output.put_line('password must 8 characters long');
end;
/
