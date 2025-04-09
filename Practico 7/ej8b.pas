program a;
var
    i, m, n : integer;
function esprimo(num : integer) : boolean;
var
    divisores, divisorFinal : integer;
begin
    divisorFinal := trunc(sqrt(num));
    divisores := 2;
    while (divisores <= divisorFinal) and (num mod divisores <> 0) do
        divisores := divisores + 1;
    
    if (num mod divisores <> 0) or (num = 2) then
        esprimo := true
    else
        esprimo := false;
end;
begin
    write('Ingrese dos enteros positivos: ');
    readln(m,n);

    if m < n then
    begin
        write('Los numeros primos entre ', m:0,' y ', n:0, ' son: ');
        for i := m to n do
        begin
            if esprimo(i) then
            write(i:0,' ');
        end;
    end;      
end.
