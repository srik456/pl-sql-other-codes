create or replace procedure srikswap(num1 in out number,num2 in out number)
as
temp number:=0;
begin
temp:=num1;
num1:=num2;
num2:=temp;
dbms_output.put_line('values swapped');
end;
/
