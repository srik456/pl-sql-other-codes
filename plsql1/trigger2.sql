create or replace trigger row_trigger
after update on emp
for each row
begin
dbms_output.put_line('After update row level');
end;
/
