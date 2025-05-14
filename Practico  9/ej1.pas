//1)Dadas las siguientes declaraciones:
const
    N = ... ; {valor mayor estricto a 1}
var
    arreglo: array [1..N] of integer;
    i, menor, indice: integer;

//Indique cual o cuales de los siguientes fragmentos de programa encontraran el valor mas pequeno de este
//arreglo y almacenaran en la variable indice el menor indice de la celda donde esta guardado dicho valor.

//ii) 
begin
indice := 1;
    for i := 2 to N do
        if arreglo[i] < arreglo[indice] then
            indice := i;

//iv)
indice := N;
    for i := N-1 downto 1 do
        if arreglo[i] <= arreglo[indice] then
            indice := i;
end;

-----------------------------------------------------------------------------------------------------------------------------

//2)Dadas las siguientes declaraciones:
const
    N = ...; {valor mayor estricto a 1}
var
    cadena: array [1..N] of char;
    k: integer;
    temp: char;

//Indique cual o cuales de los siguientes fragmentos de programa invertiran el arreglo cadena
begin
//ii) 
for k := 1 to (N DIV 2) do
begin
    temp := cadena[k];
    cadena[k] := cadena[(N+1) - k];
    cadena[(N+1) - k] := temp
end
