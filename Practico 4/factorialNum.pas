program factorialNum;
var
    num, factNum, i : integer;
begin
    write('Ingrese un valor para n: ');
    readln(num);

    factNum := 1;

    for i := 1 to num do
        factNum := factNum * i;

    writeln('EL factorial de ', num:0,' es ', factNum:0)
end.