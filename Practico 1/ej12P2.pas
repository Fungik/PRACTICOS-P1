program aTriangulo;
var
    a, b, c, s, area : real;
begin
    readln(a, b, c);
    s := (a + b + c)/2;
    area := sqrt(s*(s - a)* (s - b) * (s-c));
    writeln(area)
end.
