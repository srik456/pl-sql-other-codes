create or replace function wordcountandcharcount(s1 varchar2)
return number
as
--nchars number(4):=0;
nwords number(4):=0;
s char;
begin
for i in 1..length(s1) loop
s:=substr(s1,i,1);
--nchars:=nchars+1;
if s = ' ' then
nwords:=nwords+1;
end if;
end loop;
nwords:=nwords+1;
--return nchars;
return nwords;
end;
/
