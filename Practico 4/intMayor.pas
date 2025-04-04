program intMayor;
var
    numInteger, i, num, maxNum, minNum : integer;
begin
    write('Ingrese un valor para n: ');
    readln(numInteger);

   
    write('Ingrese ',numInteger:0,' enteros: ');
    read(num);

    maxNum := num;
    minNum := num;

    for i := 1 to (numInteger - 1) do
    begin
    read(num);
    if num > maxNum then
        maxNum := num;
    
    if num < minNum then
        minNum := num
    end;

    writeln('El mayor entero ingresado es: ', maxNum>:0);
    writeln('El menor entero ingtesado es: ', minNum:0)

end.
