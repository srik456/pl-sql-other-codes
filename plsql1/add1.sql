create or replace procedure add1(a in number,b in number,c in varchar)
as
sum1 number(5);
begin
if(c='+') then
sum1:=a+b;
dbms_output.put_line('sum is '||sum1);
elsif(c='-') then
sum1:=a-b;
dbms_output.put_line('sum is '||sum1);
else
dbms_output.put_line('Invalid Character');
end if;
end;
/
