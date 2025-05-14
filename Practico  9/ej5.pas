program cadenas;
const M = 3; {valor mayor estricto a 1}
const N = 10; {valor mayor estricto a M}
type
    CadenaM = array [1..M] of char;
    CadenaN = array [1..N] of char;
var
    indice : integer;
    cad1 : CadenaM;
    cad2 : CadenaN;

(*A*)
function indiceSubCadena(cad1: CadenaM; cad2: CadenaN): integer;
var
    i, j: integer;
    coincide: boolean;
    indice: integer;
begin
    indice := 0;
    i := 1;

    while (i <= N - M + 1) and (indice = 0) do
    begin
        coincide := true;
        j := 1;

        while (j <= M) and coincide do
        begin
            if cad1[j] <> cad2[i + j - 1] then
                coincide := false
            else
                j := j + 1;
        end;

        if coincide then
            indice := i
        else
            i := i + 1;
    end;

    indiceSubCadena := indice;
end;




(*B*)
procedure leerCadenaM(var cad1 : CadenaM);
var
    i : integer;
begin 
    for i := 1 to M do
        read(cad1[i]);
end;

procedure leerCadenaN(var cad2 : CadenaN);
var
    i : integer;
begin 
    for i := 1 to N do
        read(cad2[i]);
end;

(*C*)
begin
    write('Ingrese los ', M:1, ' caracteres de la cadenaM: ');
    leerCadenaM(cad1);

    write('Ingrese los ', N:1, ' caracteres de la cadenaN: ');
    leerCadenaN(cad2);

    indice := indiceSubCadena(cad1,cad2);

    if indice <> 0 then
        write('La cadena se encuentra a partir de la posicion ', indice:0)
    else
        write('La cadena no se encuentra');
end.

