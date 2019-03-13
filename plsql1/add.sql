create or replace procedure getsum(a in number,b in number)
as
sum number(5);
begin
sum:=a+b;
dbms_output.put_line('Sum is '||sum);
end;
/
