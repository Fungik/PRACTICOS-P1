program enteroEnEntero;
var
    n, d, d1, d2, d3, d4 : integer;
begin
    write('Ingrese un entero de 4 digitos: ');
    readln(n);
    write('Ingrese un entero de 1 digito: ');
    readln(d);

    d4 := n mod 10;
    d3 := (n div 10) mod 10;
    d2 := (n div 100) mod 10;
    d1 := n div 1000;

    if (d1 = d) or (d2 = d) or (d3 = d) or (d4 = d) then
    begin
        writeln(n);
        if d1 = d then
            write('+')
        else
            write(' ');

        if d2 = d then
            write('+')
        else
            write(' ');

        if d3 = d then
            write('+')
        else
            write(' ');

        if d4 = d then
            write('+')
        else
            write(' ');
    end
    else
        writeln(d, ' no aparece en ', n);
end.
