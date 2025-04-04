program triangleChar;
var
    c : char;
    n, i, j : integer;
begin
    write('Ingrese un caracter c: ');
    readln(c);
    write('Ingrese un valor para n: ');
    readln(n);
    
    for i := n downto 1 do
    begin
        for j := 1 to i do
            write(c);
        writeln();
    end;
end.