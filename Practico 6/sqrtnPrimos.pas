program sqrtNPrimos;
var
    sqrtPrimo : real;
    primo, num, divs, divFinal, cantPrimos : integer;
begin
    read(num);
    primo := 2;
    cantPrimos := 0;

    if num > 2 then
    begin
        writeln(sqrt(2):1:2);
        cantPrimos := 1;
    end;
    
    while cantPrimos < num do
    begin
        divFinal := trunc(sqrt(primo));
        divs := 2;
        while (divs <= divFinal) and (primo mod divs <> 0) do
            divs := divs + 1;
    
        if primo mod divs <> 0 then
        begin
            cantPrimos := cantPrimos + 1;
            sqrtPrimo := sqrt(primo);
            writeln(sqrtPrimo:1:2);
        end;
        primo := primo + 1;
    end;
end.