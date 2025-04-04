program funcx;
var 
    func, m, n, i, maxNum : integer;
begin
    write('Ingrese un valor para m: ');
    readln(m);

    write('Ingrese un valor para n: ');
    readln(n);

    for i := m to n do
    begin
        func := sqr(i) - (18 * i) + 5;
        if func > (sqr(i-1) - (18 * i-1) + 5) then
            maxNum := func;
    end;

    writeln('El valor maximo para x en el entorno de ', m, ' a ', n, ' es ', maxNum);
end.


