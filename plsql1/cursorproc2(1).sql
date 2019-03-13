declare
v_sal emp.salary%type;
v_empno emp.employee_id%type;
cursor c_empsal is select employee_id,salary from emp for update;
begin
if not c_empsal%isopen then
open c_empsal;
end if;
loop
fetch c_empsal into v_empno,v_sal;
exit when c_empsal%notfound;
delete salary from emp where salary<6000;
end loop;
close c_empsal;
commit;
end;
/
