const
    MAX = . . .; {entero mayor estricto que 1}
type
    ArregloEnteros = array [1..MAX] of integer;
    ListaEnteros = ^Celda;
    Celda = record
        elem : integer;
        sig : ListaEnteros;
    end;

(* 1 *)
(* A *)
function buscarElemento(e:integer; a:arregloEnteros):boolean;
var
    i : integer;
begin
    i := 1;

    while (i <= MAX) and (a[i] <> e) do
        i := i + 1;

    buscarElemento := (i <= MAX);
end;

(* B *)
function buscarElemento(e:integer; a:arregloEnteros):boolean;
var
    inf, sup, medio : 0..MAX + 1;
begin
    inf := 1;
    sup := MAX;
    medio := (inf + sup) DIV 2;

    while (inf <= sup) and (a[medio] <> e) do
    begin
        if e < a[medio] then
            sup := medio - 1
        else
            inf := medio + 1;
        
        medio := (inf + sup) DIV 2;
    end;

    buscarElemento := (inf <= sup);
end;

(* C *)
function buscarElemento(e:integer; l:ListaEnteros):boolean;
var
    aux : listaEnteros;
begin
    aux := l;

    while (aux <> nil) and aux^.elem <> e do
        aux := aux^.sig;
    
    buscarElemento := (aux <> nil);
end;
//Si hubiera estado ordenada, la busqueda binaria no es mas eficiente
//-----------------------------------------------------------------//

(* 2 *)
(* A *)
function unSoloMayor(v:integer; a:arregloEnteros):boolean;
var
    i, contMayores : integer;
begin
    i := 1;
    contMayores := 0;

    while (i <= MAX) and (contMayores < 2) do
    begin
        if a[i] > v then
            contMayores := contMayores + 1;
        
        i := i + 1;
    end;

    unSoloMayor := (contMayores = 1);
end;

(* B *)
function unSoloMayor(v:integer; a:arregloEnteros):boolean;
var
    inf, sup, medio : integer;
begin
    inf := 1;
    sup := MAX;

    while (inf <= sup) do
    begin
        medio := (inf + sup) div 2;

        if a[medio] > v then
            sup := medio -1
        else
            inf := medio + 1;
    end;

    unSoloMayor := (inf <= MAX) and ((inf = MAX) or (a[inf + 1] <= v));
end;

(* C *)
function unSoloMayor(v:integer; l:ListaEnteros):boolean;
var
    aux : listaEnteros;
    cont : integer;
begin
    aux := l;
    cont := 0;
    while (aux <> nil) and (cont < 2) do
    begin
        if aux^.elem > v then
            cont := cont + 1;
        
        aux := aux^.sig;
    end;

    unSoloMayor := (cont = 1);
end;
//-----------------------------------------------------------------//

(* 3 *)
(* A *)
function todosMayores(v:integer; a:arregloEnteros):boolean;
var
    i : integer;
begin
    i := 1;

    while (i <= MAX) and (a[i] > v) do
        i := i + 1;
    
    todosMayores := (i > MAX);
end;

(* B *)
function todosMayores(v:integer; a:arregloEnteros):boolean;
var
    inf, sup, medio : 0..MAX;
    esValido : boolean;
begin
    inf := 1;
    sup := MAX;
    medio := (inf + sup) div 2;
    esValido := true;

    while (inf <= sup) and esValido do
    begin
        if a[medio] <= v then
            esValido := false
        else
        begin
            sup := medio - 1;
            medio := (inf + sup) div 2;
        end;
    end;

    todosMayores := esValido;
end;

(* C *)
function todosMayores(v:integer; l:ListaEnteros):boolean;
var
    aux : integer;
    esValido : boolean;
begin
    aux := l;
    esValido := true;

    while (aux <> nil) and esValido do
    begin
        if aux^.elem <= v then
            esValido := false;
        else
            aux := aux^.sig;
    end;

    todosMayores := esValido;
end;
//-----------------------------------------------------------------//

(* 4 *)
(* A *)
function cuantosMayores(v:integer; a:arregloEnteros):integer;
var
    i, cont: integer;
begin
    cont := 0;

    for i := 1 to MAX do
        if a[i] > v then
            cont := cont + 1;
        
    cuantosMayores := cont;
end;

(* B *)
function cuantosMayores(v:integer; a:arregloEnteros):integer;
var
    i, cont : integer;
begin
    i := 1;

    while (i <= MAX) and (a[i] <= v) do
        i := i + 1;

    if i <= MAX then
        cuantosMayores := MAX - i + 1
    else
        cuantosMayores := 0;
    
end;

(* C *)
function cuantosMayores(v:integer; l:ListaEnteros):integer;
var
    aux : listaEnteros;
    cont :integer;
begin
    aux := l;
    cont := 0;
    
    while (aux <> nil) do
    begin
        if (aux^.elem > v) then
            cont := cont + 1;
        
        aux := aux^.sig;
    end;

    cuantosMayores := cont;
end;
//-----------------------------------------------------------------//

(* 5 *)
(* A *)
function ultimaOcurrencia(e:integer; a:arregloEnteros):integer;
var
    i : integer;
begin
    i := MAX;

    while (i >= 1) and (a[i] <> e) do
        i := i - 1;
    
    if (i >= 1) then
        ultimaOcurrencia := i
    else
        ultimaOcurrencia := 0;
end;

(* B *)
function ultimaOcurrencia(e:integer; a:arregloEnteros):integer;
var
    inf, sup, medio : 0..MAX;
    pos : integer;
begin
    inf := 1;
    sup := MAX;
    pos := 0;

    while (inf <= sup) do
    begin
        medio := (inf + sup) div 2;

        if a[medio] = e then
        begin
            pos := medio;
            inf := medio + 1;
        end
        else if a[medio] < e then
            inf := medio + 1
        else
            sup := medio - 1;
    end;

    ultimaOcurrencia := pos;
end;

(* C *)
function ultimaOcurrencia(e:integer; l:ListaEnteros):integer;
var
    aux : listaEnteros;
    i, pos : integer;
begin
    aux := l;
    pos := 0;
    i := 1;

    while (aux <> nil) do
    begin
        if aux^.elem = e then
            pos := i;
        
        i := i + 1;
        aux := aux^.sig;
    end;

    ultimaOcurrencia := pos;
end;

(* 6 *)
const
    MAXCOL = . . .; {entero mayor estricto que 0}
    MAXFIL = . . .; {entero mayor estricto que 0}
type
    MatrizEnteros = array [1..MAXFIL, 1..MAXCOL] of integer;

function buscarElementoMatriz(e:Integer; m:matrizEnteros):boolean;
var
    i : integer;
    encontrado : boolean;
begin
    i := 1;
    encontrado := false;

    while (i <= MAXFIL) and (not buscarElemento(e, m[i])) do
        i := i + 1;
    
    buscarElementoMatriz := (i <= MAXFIL);
end;