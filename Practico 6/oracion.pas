program oracion;
var 
    letra, caracter, letrafin : char;
    cantidadPalabras : integer;
begin
    write('Letra: ');
    readln(letra);

    write('Oracion: ');
    cantidadPalabras := 0;

    repeat
        read(caracter);

        while (caracter <> ' ') and (caracter <> '.') do 
        begin
            letrafin := caracter;
            read(caracter);
        end;

        if letrafin = letra then
            cantidadPalabras := cantidadPalabras + 1;

    until caracter = '.';

    writeln('La oracion tiene ',cantidadPalabras:0,' que terminan con ',letra)

end.