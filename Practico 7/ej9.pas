program mults;
var
    x, y : integer;
    mult : boolean;

function multiplos(m,n : integer) : boolean;
begin
    if (m mod n = 0) or (n mod m = 0) then
        multiplos := true
    else
        multiplos := false;
end;
begin
    write('Ingrese una pareja de enteros positivos: ');
    read(x);
    while x <> -1 do
    begin
        readln(y);
        mult := multiplos(x,y);
        if mult then
            writeln('Si')
        else
            writeln('No');
        
        read(x);
    end;
end.