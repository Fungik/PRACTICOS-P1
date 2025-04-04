program descomponerNum;
var
    num, potencia, val : integer;
begin
    write('Ingrese un numero natural positivo: ');
    read(num);

    potencia := 0;
    val := num;

    while ((val MOD 2) = 0) do
    begin
        potencia := potencia + 1;
        val := val DIV 2;
    end;

    write('2^',potencia:0,' * ',val:0);
end.