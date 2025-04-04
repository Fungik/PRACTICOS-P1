program asteriscos;
var
    n, num, i, j : integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese 5 enteros positivos: ');
    read(num);

    for i := 1 to n do
    begin
        for j := 1 to num do
            write('*');

        writeln();
        read(num);
    end;

end.