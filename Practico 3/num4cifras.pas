program num4cifras;
var
    num, millares, centenas: integer;
begin
    write('Ingrese un numero decimal de a lo sumo 4 cifras: ');
    readln(num);
    if num >= 1000 then
    begin
        millares := num div 1000;
        centenas := num mod 1000;
        if (centenas < 100) and (centenas > 9) then
            writeln(millares,'.0',centenas)
        else writeln(millares,'.00',centenas)
    end
    else writeln(num);
end.
