program numRandom;
var
    x, x2, newx : integer;
begin
    write('Ingrese un entero de dos cifras: ');
    readln(x);
    x2 := sqr(x);
    newx := (x2 DIV 10) mod 100  ;
    writeln('Numero introducido = ',x);
    writeln('Cuadrado del numero = ',x2);
    writeln('Siguiente numero seudoaleatorio = ', newx)
end.
