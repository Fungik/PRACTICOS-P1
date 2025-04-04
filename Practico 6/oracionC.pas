program oracion;
var 
    letra, caracter : char;
    cantidadPalabras, aparicionesLetra : integer;
begin
    write('Letra: ');
    readln(letra);

    write('Oracion: ');
    cantidadPalabras := 0;
    aparicionesLetra := 0;

    repeat
        read(caracter);
        aparicionesLetra := 0;
        
        while (caracter <> ' ') and (caracter <> '.') do 
        begin
            if (caracter = letra) then
                aparicionesLetra := aparicionesLetra + 1;

            read(caracter);
        end;

        if (aparicionesLetra = 1) then
            cantidadPalabras := cantidadPalabras + 1;

    until caracter = '.';

    writeln('La cantidad de palabras que contienen solamente una vez la letra ',letra,' es ',cantidadPalabras:0);

end.
