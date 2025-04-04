program ecSegundoGrado;
var
    a, b, c, determinante, r1, r2 : real;

begin
    //Pedir y leer los coeficientes de la ecuacion
    write('Ingrese coeficientes de la ecuacion: ');
    readln(a, b, c);

    //Calcular el determinante
    determinante := (sqr(b)) - (4 * a * c);

    //Evaluar si las raices son reales o compleas
    if determinante >= 0 then
    begin
        //Calcular las raices reales
        r1 := ((-b) + sqrt(sqr(b) - (4 * a * c))) / (2 * a);
        r2 := ((-b) - sqrt(sqr(b) - (4 * a * c))) / (2 * a);

        //Mostrar resultados segun el caso
        if r1 = r2 then
            writeln('Dos raices reales iguales: ', r1:3:2)
        else
            writeln('Dos raices reales diferentes: ', r1:3:2, ' y ', r2:3:2);
    end
    else
    begin
        //Calcular y mostrar raices complejas
        determinante := (abs(sqr(b) - (4 * a * c))) / (2 * a);
        writeln('Dos raices complejas diferentes: ', ((-b) / (2 * a)):2:2, ' (+/-) i ',sqrt(determinante / (2 * a)):2:2);
    end;
end.


