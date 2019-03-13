declare
result number;
begin
result:=myemp.getsalary(102);
dbms_output.put_line('salary'||result);
myemp.updatesal(102,90000);
end;
/
