program segGrado;
var
    a, b, c, x : integer;
    r1, r2 : real;

procedure raices(a,b,c : integer; var cant : integer; var raiz1, raiz2 : real);
var
    discr : real;
begin
    discr := sqr(b) - (4 * a * c);
    if discr < 0 then
        cant := 0
    else
    if discr = 0 then
    begin
        raiz1 := (-b + sqrt(discr))/ (2 * a);
        raiz2 := raiz1;
        cant := 1;
    end
    else
    begin
        raiz1 := (-b + sqrt(discr))/ (2 * a);
        raiz2 := (-b - sqrt(discr))/ (2 * a);
        cant := 2;
    end; 
end;
begin
    write('Ingrese en orden a, b y c: ');
    readln(a,b,c);

    raices(a,b,c,x,r1,r2);
    writeln('Cantidad de raices = ',x:0,', Raiz 1 = ',r1:1:2,', Raiz 2 = ',r2:1:2);
end.