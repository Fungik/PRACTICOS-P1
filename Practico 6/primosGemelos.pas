program primoMN;
var
    i, m, n, divs, divFinal, primoAnterior : integer;
begin
    write('Ingrese dos enteros positivos: ');
    readln(m,n);

    if m < n then
    begin
        writeln('Los numeros primos entre ', m:0,' y ', n:0, ' son:');
        
        primoAnterior := 0;
        for i := m to n do
        begin
            divFinal := trunc(sqrt(i));
            divs := 2;

            while (divs <= divFinal) and (i mod divs <> 0) do
                divs := divs + 1;

            if divs > divFinal then
            begin
                if (i - primoAnterior = 2) then
                    writeln(primoAnterior:0, ' y ',i:0);
                    
                primoAnterior := i;
            end;
        end;
    end;
end.
            