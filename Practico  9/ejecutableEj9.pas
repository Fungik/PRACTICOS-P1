program triangMatriz;
const
    N = 4; 
type
    MatrizN = array[1..N, 1..N] of integer;
    ArregloUni = array[1..(N * (N + 1)) div 2] of integer; 
var
    matrizUni : ArregloUni;
    i, j, k, coord1, coord2, valor : integer;

procedure matriz2arreglo(a:MatrizN; VAR arreglo:ArregloUni);
var
    i, j, k : integer;
begin
    k := 1;
    for i := 1 to N do
        for j := i to N do
        begin
            arreglo[k] := a[i,j];
            k := k + 1;
        end;
end;

procedure arreglo2matriz(arreglo:ArregloUni; VAR a:MatrizN);
var
    i, j, k : integer;
begin
    k := 1;
    for i := 1 to N do
        for j := i to N do
        begin
            a[i,j] := arreglo[k];
            a[j,i] := arreglo[k];
            k := k + 1;
        end;
end;

function obtSim(a:ArregloUni; i,j:integer) : integer;
var
    indice, fila, columna : integer;
begin
    if i > j then
    begin
        fila := j;
        columna := i;
    end
    else
    begin
        fila := i;
        columna := j;
    end;

    indice := (((fila - 1)*((2 * N) - fila + 2)) div 2) + (columna - fila + 1); //la formula la busque, ni idea como se hacia sino
    obtSim := a[indice];
end;

begin
    k := 1;
    for i := 1 to N do
        for j := i to N do
        begin
            write('Ingrese valor para ', i:1, ' ', j:1,': ');
            read(matrizUni[k]);
            k := k + 1;
        end;
    
    write('Ingrese parejas de coordenadas: ');
    read(coord1);

    while coord1 <> -1 do
    begin
        read(coord2);
        writeln('Coordenadas: ', coord1:1, ' ', coord2:1);
        
        valor := obtSim(matrizUni, coord1, coord2);
        writeln('Valor almacenado: ', valor:1);

        read(coord1);
    end;
end.


    