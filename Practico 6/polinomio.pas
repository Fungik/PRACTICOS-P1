program polinomio;
var
    potencia, coefPolinomio, i : integer;
    x, vTotal, vPotencia : real;
begin
    write('Ingrese x: ');
    readln(x);

    write('Ingrese los coeficientes: ');
    read(coefPolinomio);

    vTotal := 0;
    vPotencia := 1;
    potencia := coefPolinomio;
    
    while (coefPolinomio <> -1) do
    begin
        for i := 1 to potencia do
            vPotencia := x * vPotencia;
        
        vTotal := vTotal + vPotencia * coefPolinomio;

        potencia := potencia - 1;
        vPotencia := 1;

        read(coefPolinomio);
    end;

    writeln(vTotal:1:2);
end.