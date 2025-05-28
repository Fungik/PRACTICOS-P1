program ej9;
const
    M = 20;
    N = 20;

type 
    Factor = record
                primo : 1..N;
                case multiple : boolean of
                    true: (exponente : 2..N);
                    false : ();
    end;
    
    Descomp = record
                factores : array [1..M] of Factor;
                tope : 0..M;
    end;
    
var
    num : integer;
    listaFac : Descomp;

procedure factorizacion (num : Integer; var listaFac : Descomp);
var
    i, contador : integer;
begin
    i := 2;
    listaFac.tope := 0;

    while num > 1 do
    begin
        contador := 0;
        while ((num mod i) = 0) do
        begin
            num := num div i;
            contador := contador + 1;
        end;

        if contador > 0 then
        begin
            listaFac.tope := listaFac.tope + 1;
            with listaFac.factores[listaFac.tope] do
            begin
                primo := i;
                if contador = 1 then
                    multiple := false
                else
                begin
                    multiple := true;
                    exponente := contador;
                end;
            end;
        end;

        i := i + 1;
    end;
end;

procedure mostrarDescomp (listaFac : Descomp);
var
    i : integer;
begin
    for i := 1 to listaFac.tope do
    begin
        if i > 1 then
            write(' * ');
        write(listaFac.factores[i].primo);
        if listaFac.factores[i].multiple then
            write('^', listaFac.factores[i].exponente);
    end;

    writeln;
end;

begin
    write('Ingrese un numero entero mayor a 1: ');
    readln(num);

    factorizacion(num, listaFac);
    write('Factorizacion prima de ',num,': ');
    mostrarDescomp(listaFac);
end.

