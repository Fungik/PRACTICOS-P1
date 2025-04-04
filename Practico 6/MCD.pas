program MCD;
var
    m, n, temp : integer;
begin
    write('Ingrese m y n: ');
    readln(m, n);
    
    while n <> 0 do
    begin
        temp := m mod n;
        m := n;
        n := temp;
    end;
    writeln('El MCD es: ',m:0)
end.