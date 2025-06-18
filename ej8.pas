const
    MAXE = . . .; {entero mayor estricto que 0}
    MAXC = . . .; {entero mayor estricto que 0}
    MAX = . . .; {entero mayor estricto que 0}
type
    TTexto = record
        caracteres : array [1 .. MAX] of char;
        tope: 0 .. MAX;
    end;
    TEstudiante = record
        nombre : TTexto;
        generacion : integer;
    end;
    TEstudiantes = record
        estudiante : array [1 .. MAXE] of TEstudiante;
        tope : 0 .. MAXE;
    end;
    TCarrera = record
        nombre : TTexto;
        estudiantes : TEstudiantes;
    end;
    TBedelias = array [1 .. MAXC] of TCarrera;

(* A *)
function buscarCarrera(nombreCarrera : TTexto, bed : TCarrera) : integer;
var
    inf, sup, medio : integer;
    encontrada : boolean;
begin
    inf := 1;
    sup := MAXC;
    medio := (inf + sup) div 2;

    while (inf <= sup) and (comparacionNombres(nombreCarrera, bed[medio].nombre) <> igual) do
    begin
        if (comparacionNombres(nombreCarrera, bed[medio].nombre)) = menor then
            sup := medio - 1
        else
            inf := medio + 1;

        medio := (inf + sup) div 2;
    end;

    if (inf <= sup) then
        buscarCarrera := medio;
    else
        buscarCarrera := -1;
end;

function buscarEstudiante(nombreE:TTexto; nombreC:TTexto; bed:TBedelias):boolean;
var
    carr, i : integer;
begin
    carr := buscarCarrera(nombreC, bed);

    if carr <> -1 then
    begin
        i := 1;
        
        while (i <= bed[carr].estudiantes.tope) and (comparacionNombres(nombreE, bed[carr].estudiantes[i].nombre) <> igual) do
            i := i + 1;
    
        buscarEstudiante := (i <= bed[carr].estudiantes.tope);
    end
    else
        buscarEstudiante := false;
end;


