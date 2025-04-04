program secInteger;
var
    n, suma, i : integer;
    prom : real;
begin

    write('Escriba una secuencia de numeros positivos. La secuencia termina cuando se ingresa -1: ');
    read(n);
    
    suma := 0;
    i := 1;

    while n <> (-1) do
    begin
        suma := suma + n;
        prom := suma / i;
        i := i + 1;
        read(n);
    end;

    writeln('El resultado de la suma es: ',suma:0,'. EL resultado del promedio es: ',prom:0:0)
end.
