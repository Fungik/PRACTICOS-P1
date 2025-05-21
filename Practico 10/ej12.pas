const
    CANT_LETRAS = ...; { valor entero mayor a 0 }
    CANT_ARTICULOS = ...; { valor entero mayor a 0 }
type
    TIdioma = (es, en, pt);
    TFecha = record
                dia : 1..31;
                mes : 1..12;
                anio : 2001..9999; (* La wikipedia comienza en 2001 *)
             end;
    TNombre = array [1..CANT_LETRAS] of char;
    TArticulo = record
                    nombre : TNombre;
                    idioma : TIdioma;
                    visitas : Integer;
                    ultima_act : TFecha;
                end;
    Wikipedia = array [1..CANT_ARTICULOS] OF TArticulo;

(* A *)
function esPosterior (f1, f2: TFecha) : boolean;
begin
    if (f1.anio <> f2.anio) then
        esPosterior := f1.anio > f2.anio
    else if f1.mes <> f2.mes then
        esPosterior := f1.mes > f2.mes
    else 
        esPosterior := f1.dia > f2.dia;
end;
       
(* B *)
procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var
    i, j: integer;
    encontrado : boolean;
begin
    i := 1;
    encontrado := false;

    while i <= CANT_ARTICULOS and not encontrado do
    begin
        if wiki[i].idioma = idioma then
        begin
            art := wiki[i];
            encontrado := true;
        end;
        i := i + 1;
    end;

    for j := i + 1 to CANT_ARTICULOS do
        if (idioma = wiki[j].idioma) and esPosterior(wiki[j].ultima_act, art.ultima_act) then
            art := wiki[j];
end;

(* C *)
procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
var
    idioma : TIdioma;
    art : TArticulo;
    i : integer;
begin
    for idioma := es to pt do
    begin
        articuloMasReciente(wiki,idioma,art);
        write('Articulo en ');
        case idioma of
            es : writeln('Espaniol: ');
            en : writeln('Ingles: ');
            pt : writeln('Portugues: ');
        end;
    
        writeln('Nombre: ');
        for i := 1 to CANT_LETRAS do
            write(art.nombre[i]);
        writeln();
    
        writeln('Visitas: ', art.visitas);
    
        writeln('Ultima actualizacion: ',art.ultima_act.dia,'/'
                ,art.ultima_act.mes,'/',art.ultima_act.anio);
        writeln();
    end;
end;
    