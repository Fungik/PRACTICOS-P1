const
    MAX = ...; {valor mayor estricto a 0}
type
    Cadena = record
                letras : array [1..MAX] of char;
                largo : 0..MAX;
             end;
    Vocales = ()


(* A *)
procedure cargarCadena(var cad : Cadena);
var
    i : integer;
    c : char;
begin
    i := 1;
    read(c);

    //Si no se digito un punto y no se llego a los caracteres maximos
    while (c <> '.') and (i <= MAX) do
    begin
        cad.letras[i] := c;
        i := i + 1;
        read(c);
    end;
    cad.largo := i - 1;
end;

(* B *)
function contarOcurrencias(frase : Cadena; letra : char) : integer;
var
    i, contador : integer;
begin
    contador := 0;
    for i := 1 to frase.largo do
        if frase.letras[i] = letra then
            contador := contador + 1;
    
    contarOcurrencias := contador;  
end;

(* C *)
function existeVocal(cad : Cadena) : boolean;
var
    i : integer;
begin
    i := 1;
    while i <= cad.largo and not cad.letras[i] in ['A','E','I','O','U','a','e','i','o','u'] do
        i := i + 1;
    end;

    existeVocal := i <= cad.largo;
end;