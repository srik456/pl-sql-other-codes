create or replace package mypack
as
procedure helloworld(name varchar2);
function addition(a number,b number)
return number;
end mypack;
/
