program logexp;
var
    a, b, c, ab: real;
begin
    readln(a,b);
    c := (b * ln(a));
    ab := exp(c);
    writeln(ab)
end.
