declare
v_sal emp.salary%type;
v_empno emp.employee_id%type;
cursor c_empsal is select employee_id,salary from emp where salary between 6000 and 50000;
begin
if not c_empsal%isopen then
open c_empsal;
end if;
loop
fetch c_empsal into v_empno,v_sal;
exit when c_empsal%notfound;
update emp set salary=salary+(1.1*v_sal) where employee_id=v_empno;
end loop;
close c_empsal;
commit;
end;
/
