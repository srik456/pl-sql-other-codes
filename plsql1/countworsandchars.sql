create or replace function wordcountandcharcount(s1 varchar2)
return number
as
nchars number(4):=0;
nwords number(4):=0;
s char;
begin
for i in 1..length(s1) loop
s:=substr(s1,i,1);
nchars:=nchars+1;
if s = ' ' then --counting number of spaces
nwords:=nwords+1;--adding 1 for last word
end if;
end loop;
return nchars;
return nwords;
end;
/
