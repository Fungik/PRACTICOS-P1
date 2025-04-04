program funcx;
var 
    func, m, n, i, maxNum : integer;
begin
    write('Ingrese un valor para m: ');
    readln(m);

    write('Ingrese un valor para n: ');
    readln(n);

    maxNum := m;
    
    for i := m to n do
    begin
        func := sqr(i) - (18 * i) + 5;

        if func > maxNum then 
        maxNum := func;

    end;

    writeln('El valor maximo para x en el entorno de ', m, ' a ', n, ' es ',maxNum);
end.


