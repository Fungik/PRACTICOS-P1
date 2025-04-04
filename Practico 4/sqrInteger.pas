program sqrInteger;
var
    i, x, n, total: integer;
begin
    write('Ingrese un valor para x: ');
    readln(x);
    write('Ingrese un valor para n: ');
    readln(n);

    total := 1;
    for i := 1 to n do 
        total := total * x;
    
    write('El resultado de ',x:0,' elevado a la ',n:0,' es: ',total:0)


end.