program gastoPublicidad;
const
    costoFuncionamiento = 100;
    gamusino = 30;
var
    gastoPublicidad : integer;
    ventas, beneficioNeto, beneficioAnterior : real;
begin
    write('Ingrese el gasto inicial en publicidad: ');
    readln(gastoPublicidad);

    beneficioNeto := 0;
    ventas := 20;
    writeln('Gastado Publicidad    Ventas    Beneficio neto');
    repeat
        write(gastoPublicidad,ventas:15:0);

        beneficioAnterior := beneficioNeto;
        beneficioNeto := ventas * gamusino - gastoPublicidad - costoFuncionamiento;
        writeln(beneficioNeto:15:0);

        gastoPublicidad := gastoPublicidad * 2;
        ventas := trunc(ventas * 1.5);
    
    until beneficioAnterior > beneficioNeto;
end.

