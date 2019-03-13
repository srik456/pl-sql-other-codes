declare
p_string varchar2(15);
v_new_num number;
BEGIN
   p_string:='&str';
   v_new_num := TO_NUMBER(p_string);
   dbms_output.put_line('Number is '||v_new_num);
EXCEPTION
WHEN VALUE_ERROR THEN
   dbms_output.put_line('Cannot convert string to num');
END;
/
