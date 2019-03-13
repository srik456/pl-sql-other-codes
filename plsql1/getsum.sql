create or replace procedure getsum(a in number,b in number)
as
sum2 number(5);
begin
sum2:=a+b;
dbms_output.put_line('Sum is '||sum2);
end;
/
