program distance;
var
    coorx1, coorx2, coory1, coory2, distance : real;

function distancia(x1,y1,x2,y2 : real) : real;
var
    dist : real;
begin
    if x1 = x2 then
        dist := abs(y2 - y1)
    else
    if y1 = y2 then 
        dist := abs(x2 - x1)
    else
        dist := sqrt(sqr(abs(x2-x1)) + sqr(abs(y2-y1)));
    
    distancia := dist;
end;
begin
    write('Ingrese las coordenadas del primer punto: ');
    readln(coorx1, coory1);

    write('Ingrese las coordenadas del segundo punto: ');
    readln(coorx2, coory2);

    distance := distancia(coorx1,coory1,coorx2,coory2);
    
    writeln('La distancia entre los puntos es: ', distance:1:2);
end.


