program divsEntero;
var
    i, n : integer;
begin
    write('n = ');
    readln(n);
    for i := 1 to (n div 2) do
        if n mod i = 0 then
        write(i:0,' ');
    writeln(n:0)
end.