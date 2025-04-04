program sqrRoot;
var
    a, sqrta : real;
begin
    write('Ingrese su numero real positivo: ');
    readln(a);
    sqrta := exp(0.5 * ln(a));
    writeln('Valor introducido: a = ',a);
    writeln('Raiz cuadrada calculada = ',sqrta);
    writeln('Valor de Sqrt (a) = ', sqrt(a))
end.
