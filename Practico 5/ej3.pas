program prueba;
var
    i, j, x : integer;
begin
    read(i, j);
    repeat
        read(x);
        i := i - x;
        j := j + x;
        writeln(i, j, x);
    until (i < j) or (x < 0)
end.