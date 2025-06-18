const
    MAX = . . .; {entero mayor estricto que 0}
type
    TComparacion = (mayor, menor, igual);
    TTexto = record
        nombre : array [1 .. MAX] of char;
        tope: 0 .. MAX;
    end;
    ArregloNombres = array [1..MAX] of TTexto; 

(* A *)
function comparacionNombres(n1, n2:TTexto):TComparacion;
var
    i, j: integer;
    comp : TComparacion;
begin
    i := 1;
    j := 1;

    while (i <= n1.tope) and (j <= n2.tope) and (n1.nombre[i] = n2.nombre[j]) do
    begin
        i := i + 1;
        j := j + 1;
    end;

    if (i > n1.tope) and (j > n2.tope) then
        comp := igual
    else if (i > n1.tope) or (n1.nombre[i] < n2.nombre[i]) then
        comp := menor
    else
        comp := mayor;
    
    comparacionNombres := comp;
end;

(* B *)
function buscarNombre(n:TTexto; a:arregloNombres):boolean;
var
    inf, sup, medio : integer;
    encontrado : boolean;
begin
    inf := 1;
    sup := MAX;
    medio := (inf + sup) div 2;
    encontrado := false;

    while (inf <= sup) and not encontrado do
    begin
        case comparacionNombres(n, a[medio]) of
            mayor : begin
                inf := medio + 1;
                medio := (inf + sup) div 2;
            end;
            menor : begin
                sup := medio - 1;
                medio := (inf + sup) div 2;
            end;
            igual : encontrado := true;
        end;
    end;

    buscarNombre := encontrado;
end;