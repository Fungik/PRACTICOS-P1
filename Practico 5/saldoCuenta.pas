program saldoCuenta;
var
    saldo, dinero : real;
    transaccion : char;
begin
    readln(saldo);
    read(transaccion);

    while (transaccion <> 'X') AND (transaccion <> 'x') do
    begin
        if transaccion = 'D'then 
        begin
            readln(dinero);
            saldo := saldo + dinero;
        end;

        if transaccion = 'R' then
        begin
            readln(dinero);
            saldo := saldo - dinero;
        end;
        read(transaccion);
    end;
    
    writeln('EL saldo final es ',saldo:0:2)
end.



