program oracion;
var 
    letra, caracter, letrainicial : char;
    cantidadPalabras : integer;
begin
    write('Letra: ');
    readln(letra);

    write('Oracion: ');
    cantidadPalabras := 0;

    repeat
        read(caracter);
        letrainicial := caracter;
        while (caracter <> ' ') and (caracter <> '.') do 
            read(caracter);

        if letrainicial = letra then
            cantidadPalabras := cantidadPalabras + 1;

    until caracter = '.';

    writeln('La oracion tiene ',cantidadPalabras:0,' palabras que empiezan con ',letra)

end.