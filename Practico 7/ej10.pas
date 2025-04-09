program multipNum;
var
    divs, num, x, i, mult, resto : integer;
    esPrimerFactor : boolean;
procedure multiplicidadFactor(numero, factor : integer; var multiplicidad, residuo : integer);
begin
    multiplicidad := 0;
    
    // Mientras el número sea divisible por el factor, se divide y se incrementa la cuenta
    while (numero mod factor = 0) do
    begin
        numero := numero div factor;
        multiplicidad := multiplicidad + 1;
    end;
    residuo := numero;
end;
begin
    write('Ingrese una secuencia de enteros positivos mayores a 1: ');
    read(x);

    while (x <> -1) and (x > 1) do
    begin
        write(x,' = ');
        num := x;               // Se copia el número a una variable auxiliar
        divs := 2;              // Se comienza a probar con el primer número primo
        esPrimerFactor := true; // Para controlar si se imprime el primer factor o no

        // Bucle que descompone el número en factores primos
        while num > 1 do
        begin
            // Se calcula la multiplicidad de 'divs' como factor de 'num'
            multiplicidadFactor(num, divs, mult, resto);
            num := resto; // Se actualiza 'num' con el residuo devuelto

            if mult > 0 then
            begin
                // Se imprime el factor 'divs' tantas veces como indique 'mult'
                for i := 1 to mult do
                begin
                    if not esPrimerFactor then
                        write(' * '); // Se imprime '*' solo si no es el primer factor

                    write(divs:0);   // Se imprime el factor
                    esPrimerFactor := false;
                end;
            end;

            divs := divs + 1; 
        end;

        writeln();  
        read(x);    
    end;            
end.
