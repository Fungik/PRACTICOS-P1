program errorRelativo;
var
    m, v, errorR : real;
begin
    write('Escriba su medicion: ');
    readln(m);
    write('Escriba su valor verdadero: ');
    readln(v);
    errorR := (abs(m - v) / v);
    writeln('Medicion = ',m);
    writeln('Valor verdadero = ',v);
    writeln('Error relativo = ',errorR)
end.

