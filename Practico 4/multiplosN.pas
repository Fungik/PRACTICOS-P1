program multiplosN;
var
    a, b, i, n : integer;
begin
    write('a = ');
    read(a);
    write('b = ');
    read(b);
    write('n = ');
    read(n);

    for i := a to b do
    if (i mod n = 0) then
    write(i:0,' ');
end.  
