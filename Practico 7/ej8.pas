program a;
var
    numero : integer;
    primo : boolean;
function esprimo(num : integer) : boolean;
var
    divisores, divisorFinal : integer;
begin
    divisorFinal := trunc(sqrt(num));
    divisores := 2;
    while (divisores <= divisorFinal) and (num mod divisores <> 0) do
        divisores := divisores + 1;
    
    if num mod divisores = 0 then
        esprimo := false
    else
        esprimo := true;
end;
begin
    read(numero);
    if numero > 2 then
    begin
        primo := esprimo(numero);
        writeln(primo);
    end
    else
    if numero = 2 then
        writeln('true';)

end.