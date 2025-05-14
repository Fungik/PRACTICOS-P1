(*A*)
type
    TipoMatriz = array[0..9, 0..9] of Integr;

(*B*)
procedure cargarMatriz(var matriz : TipoMatriz);
var
    i, j : integer;
begin
    for i := 0 to 9 do
        for j := 0 9 do
        begin
            write('Ingrese el termino ',i:0,' de la fila ',j:0,' : ');
            readln(matriz[i][j]);
        end;
end;

(*C*)
procedure changeRows(var matriz : TipoMatriz; m, n : integer;);
var
    aux, i : integer;
begin
    for i := 0 to 9 do
    begin
        aux := matriz[m,i];
        matriz[m,i] := matriz[n,i];
        matriz [n,i] := aux;
    end;
end;

(*D*)
program intercambiarFilas;
.
.
.
var
    matriz : TipoMatriz;
    m, n : integer;
begin
    cargarMatriz(matriz);
    write('Ingrese dos filas para intercambiarlas : ');
    readln(m,n);

    if ((m <= 9) and (m >= 0)) and ((n <= 9) and (n >= 0)) then
        changeRows(matriz,m,n)
    else
        writeln('Error: Valor/es de filas incorrectos!');
end;