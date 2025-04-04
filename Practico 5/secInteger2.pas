program secInteger2;
var
    n, maxN, minN : integer;
begin
    write('Escriba una secuencia de numeros positivos. La secuencia termina cuando se ingresa -1: ');
    read(n);

    maxN := n;
    minN := n;

    while n <> (-1) do
    begin
        if n > maxN then
            maxN := n;
        
        if n < minN then
            minN := n;

        read(n);
    end;

    writeln('EL mayor entero ingresado es: ',maxN:0);
    writeln('El menor entero ingresado es: ',minN:0)
end.