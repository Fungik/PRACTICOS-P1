program pesoPaquete;
const
    costoInicial = 77;
    costoAdicional = 56;
var
    peso, pesoAdicional, costoTotal : real;
begin
    readln(peso);
    if peso > 1 then
    begin
        pesoAdicional := (peso - 1) * 56;
        costoTotal := costoInicial + pesoAdicional;
        write(peso:1:2,'  ', costoTotal:1:2);
    end
end.
