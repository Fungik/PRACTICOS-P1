program sqrInteger;
var
    k, entero : integer;
begin
    write('Ingrese k: ');
    readln(k);

    entero := 1;
    writeln('Secuencia de cuadrados:');
    write(sqr(entero):0, '  ');

    while (sqr(entero) - sqr(entero - 1)) < k do 
    begin
        entero := entero + 1;
        write(sqr(entero):0);
        write('  ');
    end; 

    writeln()
end.