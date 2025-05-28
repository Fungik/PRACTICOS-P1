//Comentarios hechos por CHATGPT para que se les haga mas legible el codigo :)

const
    X = 10;  { cantidad máxima de columnas en las matrices }
    Y = 10;  { cantidad máxima de filas en las matrices }

type
    Natural = 0..maxint;  { tipo para números naturales }
    Tipo = (nat, error);  { indica si un valor es un número natural o un error }
    Err = (diverr, reserr, argerr);  { posibles tipos de errores }

    { Tipo que representa un número natural o un error }
    Nerr = record
        caso : Tipo;  { indica si es número o error }
        case caso of
            nat   : (valor : Natural);  { si es número, guarda el valor }
            error : (err : Err);        { si es error, indica cuál }
    end;

    { Tipo para identificar si la matriz es válida o tiene error }
    MatTipo = (valido, merr);

    { Tipo que representa una matriz de Nerr o un error }
    MNerr = record
        estado : MatTipo;   { si la matriz es válida o error }
        case estado of
            valido : (
                filas : 1..Y;         { cantidad de filas usadas }
                columnas : 1..X;      { cantidad de columnas usadas }
                datos : array[1..Y, 1..X] of Nerr  { los datos de la matriz }
            );
            merr : ();  { si hay error, no se guarda información adicional }
    end;

//-------------------Procedimientos del ejercicio 5--------------------//

{ Procedimiento para manejar producto entre dos valores Nerr }
procedure producto(a, b: Nerr; var resu: Nerr);
begin
    { Si alguno de los operandos es error, el resultado es argerr }
    if (a.caso = error) or (b.caso = error) then
        hayError(resu)
    else
    begin
        { Si ambos son números, calculamos el producto normal }
        resu.caso := nat;
        resu.valor := a.valor * b.valor;
    end;
end;

{ Procedimiento para manejar suma entre dos valores Nerr }
procedure suma(a, b: Nerr; var resu: Nerr);
begin
    { Si alguno es error, resultado es argerr }
    if (a.caso = error) or (b.caso = error) then
        hayError(resu)
    else
    begin
        { Si ambos son números, calculamos la suma normal }
        resu.caso := nat;
        resu.valor := a.valor + b.valor;
    end;
end;
//--------------------------------------------------------//

{ Producto de matrices con elementos tipo Nerr }
procedure mprod(m1, m2: MNerr; var resu: MNerr);
var 
    i, j, k: integer;  { variables para los índices }
    prod, suma: Nerr;  { variables para guardar resultados intermedios }
begin
    { Prim     {si hay error, no se guarda información adicional }ero, chequeamos si alguna matriz ya tiene error }
    if (m1.estado = merr) or (m2.estado = merr) then
        resu.estado := merr  { si alguna tiene error, resultado también es error }
    
    { Verificamos que las dimensiones sean compatibles para multiplicar }
    else if m1.columnas <> m2.filas then
        resu.estado := merr  { dimensiones incompatibles, error }

    else
    begin
        { Matriz resultado es válida }
        resu.estado := valido;
        resu.filas := m1.filas;      { filas del resultado = filas de m1 }
        resu.columnas := m2.columnas;{ columnas del resultado = columnas de m2 }
        
        { Recorremos cada posición de la matriz resultado }
        for i := 1 to resu.filas do
            for j := 1 to resu.columnas do
            begin
                { Inicializamos suma en cero para acumular la suma de productos }
                suma.caso := nat;
                suma.valor := 0;

                { Calculamos la suma del producto de elementos correspondientes }
                for k := 1 to m1.columnas do
                begin
                    { Multiplicamos elemento de m1 y m2 }
                    producto(m1.datos[filasMat1, elementos], m2.datos[elementos, columnasMat2], prod);

                    { Sumamos el producto a la suma acumulada }
                    suma(suma, prod, suma);
                end;
            
                { Guardamos la suma acumulada en la posición [filasMat1, columnasMat2] }
                resu.datos[filasMat1, columnasMat2] := suma;
            end;
    end;
end;
