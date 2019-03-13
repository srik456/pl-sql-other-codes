create or replace trigger statement_trigger
after update on emp
begin
dbms_output.put_line('After update Statement Level');
end;
/
