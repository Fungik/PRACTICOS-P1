const
    MaxDig = ...; {valor entero mayor estricto a 0};
type
    Digito = 0..9;
    Natural = record
            digitos : array[1..MaxDig] of Digito;
            tope : 0..MaxDig;
    end;

procedure sumaNaturales (a, b : Natural; var c : Natural);
var
    mayor, menor : Natural;
    suma, sumMayor9 : integer;
    i, dif: 0..MaxDig;
begin
    sumMayor9 := 0;

    //determinar cual es el numero mayor y cual el menor
    if a.tope >= b.tope then
    begin
        mayor := a;
        menor := b;
    end
    else
    begin
        mayor := b;
        menor := a;
    end;

    c.tope := mayor.tope;
    dif := mayor.tope - menor.tope;

    //copiar los digitos que no tienen otro sumando
    for i := 1 to dif do
        c.digitos[i] := mayor.digitos[i];
    
    //sumar los digitos comunes
    for i := 1 to menor.tope do
    begin  
        suma := mayor.digitos[dif + i] + menor.digitos[i] + sumMayor9;
        c.digitos[dif + i] := suma mod 10;
        sumMayor9 := suma div 10;
    end;

    //agregar digito extra si dos suman mayor a 9
    if sumMayor9 > 0 then
    begin
        c.tope := c.tope + 1;
        c.digitos[c.tope] := sumMayor9;
    end;
end;

