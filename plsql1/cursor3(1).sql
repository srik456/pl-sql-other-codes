declare
v_sal emp.salary%type;
v_empno emp.employee_id%type;
ctr number:=0;
cursor c_empsal is select employee_id,salary from emp where salary>=20000;
begin
if not c_empsal%isopen then
open c_empsal;
end if;
loop
fetch c_empsal into v_empno,v_sal;
exit when c_empsal%notfound;
delete from emp where salary<6000;
ctr:=ctr+1;
end loop;
close c_empsal;
commit;
dbms_output.put_line('Total records delete'||' '||ctr);
end;
/
