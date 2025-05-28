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

function ciIguales (ci1, ci2: TipoCI): boolean;
var
    i : integer;
begin
    i := 1;
    while (i <= MAXDIGITOSCI) and (ci1[i] = ci2[i]) do
        i := i + 1;

    ciIguales := i > MAXDIGITOSCI;
end;

function contarDinero (ca: ConjuntoAsaltos; anio:integer): integer;
var
    i, dinero: integer;
begin
    dinero := 0;

    for i := 1 to ca.tope do
        if ca.asaltos[i].fecha.anio = anio then
            dinero := dinero + ca.asaltos[i].botin;
    
    contarDinero := dinero;
end;

function dineroObtenidoPorPirata(pirata: TipoCI; anio: integer; b:Banda) : integer;
var 
    i : integer;
begin
    while i <= b.tope and not ciIP