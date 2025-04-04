program desvN;
var
    num, n, a, suma, s, desvN : real;
begin
    n := 0;
    s := 0;
    suma := 0;

    read(num);
    while num >= 0 do
    begin
        n := n + 1;
        s := s + sqr(num);
        suma := suma + num;
        read(num);
    end;

    a := suma / n;
    desvN := sqrt(s / n - sqr(a));
    
    writeln('La desviacion estadar es: ',desvN:1:2)
end.
