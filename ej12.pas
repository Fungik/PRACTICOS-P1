program pendulo;
const
    pi = 3.14;
    g = 9.8;
var
    l, p : real;
begin
    write('Ingrese longitud del pendulo');
    readLn(l);
    p := 2 * pi * sqrt(l / g);
    writeLn('El periodo del pendulo es: ',p:5:3)
end.
