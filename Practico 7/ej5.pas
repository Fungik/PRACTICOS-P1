program ej5;
var
    a, b, c : integer;
procedure corrimiento(var a, b, c : integer);
var
    temp1, temp2: integer;
begin
    temp2 := c;
    temp1 := a;
    c := b;
    b := temp1;
    a := temp2;
end;
begin
    readln(a,b,c);
    corrimiento(a,b,c);
    writeln(a,b,c);
end.    
