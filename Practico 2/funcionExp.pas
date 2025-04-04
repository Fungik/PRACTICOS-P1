program funcionExp;
var
    x, sumx5: real;
begin
    write('Digite un numero mayor a 0,0 y menor a 1,0: ');
    readln(x);
    sumx5 := ( 1 + x + (sqr(x) / 2) + ((sqr(x) * x) / 6) + (sqr(sqr(x)) / 24) + (sqr(sqr(x)) * x) / 120);
    writeln('Valor introducido: x = ',x);
    writeln('Suma de los cinco terminos = ',sumx5);
    writeln('Valor de Exp (x) = ', exp(x))
end.
