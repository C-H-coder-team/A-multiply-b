var a,b:ansistring;
    le:boolean;
    c,d,e:array[0..20000]of longint;
    i,j:longint;
begin
  readln(a);
  readln(b);
  for i:=length(a) downto 1 do
   val(a[i],c[length(a)-i+1]);
  for i:=length(b) downto 1 do
   val(b[i],d[length(b)-i+1]);
  for i:=1 to length(a) do
   for j:=1 to length(b) do
     inc(e[i+j-1],c[i]*d[j]);
  for i:=1 to (length(a)+length(b)) do
   if e[i]>9 then
   begin
     e[i+1]:=e[i+1]+e[i] div 10;
     e[i]:=e[i] mod 10;
   end;
  le:=false;
  for i:=(length(a)+length(b)) downto 1 do
   if le=false then begin if e[i]<>0 then begin le:=true; write(e[i]); end; end
               else write(e[i]);
  if le=false then writeln(0);
end.
