program numOctal;
var
    x, octx : integer;
begin
    write('Ingrese su numero octal de tres digitos: ');
    readln(x);
    octx := ((x div 100) * (8*8) + (((x div 10) mod 10)  * 8) + (x mod 10));
    writeln('Octal ',x,' = Decimal ',octx)
end.
