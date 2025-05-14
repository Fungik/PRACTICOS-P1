//A
procedure transpuestaMatrizAB(a:Matriz; VAR b:Matriz)
var 
    i, j : integer;
begin
    for i := 1 to N do
        for j := 1 to N do
            b[i , j] := a[j, i];
end;

//B
procedure transpuestaMatrizA(VAR a:Matriz);
var
    i, j, aux: integer;
begin
    for i := 1 to N do
        for j := 1 to N do
        begin
            aux := a[i,j];
            a[i,j]:= a[j,i];
            a[j,i] := aux;
        end;
end;
            

