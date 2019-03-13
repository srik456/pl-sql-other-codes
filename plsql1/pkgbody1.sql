create or replace package body mypack
as
procedure helloworld(name varchar2)
as
begin
dbms_output.put_line('Hello'||name);
end;
function addition(a number,b number)
return number as total number;
begin
total:=a+b;
return total;
end;
end mypack;
/
