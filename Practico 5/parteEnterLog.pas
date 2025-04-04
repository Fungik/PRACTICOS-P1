program logNumBaseB;
var
    num, base, resultado : integer; 

begin
    write('Ingrese numero: ');
    readln(num);

    write('Ingrese base: ');
    readln(base);

    // Inicializamos el resultado en 0
    resultado := 0;

    // Mientras num sea mayor o igual a base, seguimos dividiendo
    while base <= num do
    begin
        num := num DIV base;   // Dividimos num por la base
        resultado := resultado + 1;  // Contamos cuántas veces dividimos
    end;

    writeln('Resultado: ', resultado);
end.
