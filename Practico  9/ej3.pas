const
    N = ...; {valor mayor estricto a 1}
type
    CadenaN = array [1..N] of integer;

(*A*)
function cantMayores(cadn:CadenaN; num:integer) : integer;
var
    i, aux : integer;
begin
    aux := 0;

    for i := 1 to n do
        if cadn[i] > num then
            aux := aux + 1;

    cantMayores := aux
end;

(*B*)
function ordenado(cadn:CadenaN) : boolean;
var
    i : integer;
begin 
    i := 1;
    while i < N and (cadn[i-1] <= cadn[i]) do
        i := i + 1;
    
    ordenado := i = N
end;

(*C*)
procedure maxValorPos(cadn:CadenaN; VAR valor, pos:integer);
var
    i : integer;
begin
    pos := 1;
    valor := cadn[1];

    for i := 2 to N do
        if valor < cadn[i] then
        begin
            valor := cadn[i];
            pos := i;
        end;

end;

        