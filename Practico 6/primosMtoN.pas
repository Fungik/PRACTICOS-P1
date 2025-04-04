program primoMN;
var
    i, m, n, divs, divFinal : integer;
begin
    write('Ingrese dos enteros positivos: ');
    readln(m,n);

    if m < n then
    begin
        write('Los numeros primos entre ', m:0,' y ', n:0, ' son:');
        for i := m to n do
        begin
            divFinal := trunc(sqrt(i));
            divs := 2;

            while (divs <= divFinal) and (i mod divs <> 0) do
                divs := divs + 1;
    
            if i mod divs <> 0 then
                write(i:4);
             
        end;
    end;
end.
            