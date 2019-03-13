create or replace function grade_print(score number)
return char is
begin
if score>=90 then
return 'A';
elsif score>=80 then
return 'B';
elsif score>=70 then
return 'C';
elsif score>=60 then
return 'D';
else
return 'F';
end if;
end;
/
