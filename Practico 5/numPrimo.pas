program numPrimo;
var
    n, divs, divFinal : integer;
begin
    write('Ingrese un entero positivo: ');
    readln(n);

    divFInal := trunc(sqrt(n));
    divs := 2;
    while (divs <= divFinal) and (n mod divs <> 0) do
        divs := divs + 1;
    
    if n mod divs = 0 then
        writeln('No es primo')
    else
        writeln('Es primo')
end.

