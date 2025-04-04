program funcx2;
var 
    func, n, x, y, maxNum : integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);

    maxNum := sqr(n) - (9 * sqr(n)) + sqr(n);
    
    for x := (-n) to n do
    begin
        for y := (-n) to n do
            func := sqr(x) - (9 * x * y) + sqr(y);
        if func > maxNum then
            maxNum := func;
    end;
        
    writeln('El valor maximo para x e y en el entorno de ', n:0, ' a ',(-n):0, ' es ',maxNum:0);
end.


