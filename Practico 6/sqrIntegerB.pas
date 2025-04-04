program sqrIntegerfor;
var
    k, entero : integer;
begin
    read(k);
    
    if k mod 2 = 0 then
    begin
        for entero := 1 to ((k div 2) + 1) do
            write(sqr(entero):0,'  ');
    end
    else
    begin
        for entero := 1 to ((k div 2) + 1) do
            write(sqr(entero):0,'  ');
    end;    
end.