program sqrtNPrimosb;
var
    sqrtPrimo : real;
    primo, num, divs, divFinal, cantPrimos : integer;
begin
    write('Ingrese n: ');
    read(num);
    primo := 1;

    for cantPrimos := 1 to num do
    begin
        repeat
            primo := primo + 1;
            divFinal := trunc(sqrt(primo));
            divs := 2;
            while (divs <= divFinal) and (primo mod divs <> 0) do
                divs := divs + 1;
        until (primo = 2) or (primo mod divs <> 0);

        sqrtPrimo := sqrt(primo);
        writeln(cantPrimos:0,': Primo: ',primo:0, ' Raiz cuadrada: ',sqrtPrimo:1:2);
    end;
end.