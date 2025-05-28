const
    MAXPIRATAS = ...; {valor entero mayor estricto a 0}
    MAXASALTOS = ...; {valor entero mayor estricto a 0}
    MAXDIGITOSCI = ...; {valor entero mayor estricto a 0}
    MAXCADENA = ...; {valor entero mayor estricto a 0}
type
    TipoCadena = record
            letras: array [1..MAXCADENA] of char;
            tope: 0 .. MAXCADENA;
    end;
    TipoCI = array [1..MAXDIGITOSCI] of '0'..'9';
    TipoFecha = record
            dia: 1..31;
            mes: 1..12;
            anio: 0..maxint;
    end;
    TipoAsalto = record
            nombre_barco: TipoCadena;
            fecha: TipoFecha;
            botin: integer;
    end;
    ConjuntoAsaltos = record
            asaltos: array [1..MAXASALTOS] of TipoAsalto;
            tope: 0..MAXASALTOS;
    end;
    TipoCausaMuerte = (asesinato, enfermedad, accidente);
    TipoPirata = record
            nombre: TipoCadena;
            ci: TipoCI;
            case estaVivo: boolean of
                true: (asaltos: ConjuntoAsaltos);
                false: (causaMuerte: TipoCausaMuerte; fechaMuerte: TipoFecha)
    end;
    Banda = record
            pirata: array [1..MAXPIRATAS] of TipoPirata;
            tope: 0..MAXPIRATAS;
    end;

    ConjuntoCIs = record
            cedulas: array [1..MAXPIRATAS] of TipoCI;
            tope: 0..MAXPIRATAS;
    end;

(* A *)
//Subprograma auxiliar
function ciIguales (ci1, ci2: TipoCI): boolean;
var
    i : integer;
begin
    // Compara dos cedulas digito a digito
    i := 1;
    while (i <= MAXDIGITOSCI) and (ci1[i] = ci2[i]) do
        i := i + 1;

    // Devuelve true si todos los digitos coinciden
    ciIguales := i > MAXDIGITOSCI;
end;

//Subprograma auxiliar
function contarDinero (ca: ConjuntoAsaltos; anio:integer): integer;
var
    i, dinero: integer;
begin
    dinero := 0;

    // Suma el botin de los asaltos ocurridos en el año dado
    for i := 1 to ca.tope do
        if ca.asaltos[i].fecha.anio = anio then
            dinero := dinero + ca.asaltos[i].botin;
    
    contarDinero := dinero;
end;

function dineroObtenidoPorPirata(pirata: TipoCI; anio: integer; b:Banda) : integer;
var 
    i : 0..MAXPIRATAS;
begin
    i := 1;
    // Busca al pirata por su cedula
    while (i <= b.tope) and (not ciIguales(pirata, b.pirata[i].ci)) do
        i := i + 1;
    
    // Si lo encuentra y esta vivo, calcula el dinero obtenido ese año
    if (i <= b.tope) then
    begin
        if b.pirata[i].estaVivo then
            dineroObtenidoPorPirata := contarDinero(b.pirata[i].asaltos, anio)
        else
            dineroObtenidoPorPirata := 0;
    end
    else
        dineroObtenidoPorPirata := 0;  // Si no se encuentra, devuelve 0
end;

procedure hallarGanadores (piratas:Banda; anio:integer; var piratasMerecedores: ConjuntoCIs);
var
    i : 0..MAXPIRATAS;
    dinero, maxDinero : integer;
begin
    piratasMerecedores.tope := 0;
    maxDinero := -1;  // Inicializa el maximo dinero con un valor inválido

    // Recorre la banda buscando piratas vivos
    for i := 1 to piratas.tope do
    begin
        if piratas.pirata[i].estaVivo then
        begin
            // Calcula cuanto gano el pirata ese año
            dinero := dineroObtenidoPorPirata(piratas.pirata[i].ci, anio, piratas);
            
            // Si supera el maximo actual, reinicia la lista de ganadores
            if dinero > maxDinero then
            begin
                maxDinero := dinero;
                piratasMerecedores.tope := 1;
                piratasMerecedores.cedulas[1] := piratas.pirata[i].ci;
            end
            // Si iguala el maximo, se agrega como otro ganador
            else if dinero = maxDinero then
            begin
                with piratasMerecedores do
                begin
                    tope := tope + 1;
                    cedulas[tope] := piratas.pirata[i].ci;
                end;
            end;
        end;
    end;
end;
