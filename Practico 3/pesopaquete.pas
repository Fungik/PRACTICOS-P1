program costoenvio;
const
    costoBase = 77;
    costoAdicional = 56;
var
    peso, pesoAdicional, costoTotal :  real;
begin
    writeln('Ingrese peso del paquete: ');
    readln(peso);

    if peso > 1 then
    begin
        pesoAdicional := peso - 1;
        if trunc(pesoAdicional) <> pesoAdicional then
            pesoAdicional := trunc(pesoAdicional) + 1;
    end;
    costoTotal := costoBase + pesoAdicional * costoAdicional;
    writeln('Peso  Costo');
    writeln(peso:1:2, '  $', costoTotal:1:0)
end.
