const
    N = ...; {valor mayor estricto a 1}
type
    Digito = '0'..'9';
    Digitos = array [1..N] of Digito;

//A
procedure leerArreglo(VAR a:Digitos);
var
    i : integer;
begin
    for i := 1 to N do
        read(a[i]);
end;

//B
function conversion(a:Digitos) : integer;
var
    i, entero : integer;
begin
    entero := 0;
    for i := 1 to N do
        entero := (entero * 10) + (ord(a[i]) - ord('0'));
    conversion := entero;
end;

//C
var
    arregloDigitos : Digitos;
    enteroEquivalente : integer;
begin
    write('Ingrese los ', N:1, ' terminos del arreglo: ');
    leerArreglo(arregloDigitos);

    enteroEquivalente := conversion(arregloDigitos);
    writeln('El entero equivalente es: ',enteroEquivalente:1);
end.

