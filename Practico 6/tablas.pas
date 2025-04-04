program tablas;
var 
    m, n, i, j : integer;
begin
    write('Ingrese m: ');
    readln(m);

    write('Ingrese n: ');
    readln(n);

    if m < n then
    begin
        for i := m to n do
        begin
            writeln();
            writeln('       Tabla ', i:0);
            writeln();
            
            for j := 1 to 10 do
                writeln(j:0, ' * ', i:0,' = ', j*i);
        end;
    end;

end.