type
    Positivo = 1..MaxInt;
    ListaInt = ^TCelda;
    TCelda = record
        info : integer;
        sig : ListaInt;
    end;

    PosibleElem = record case ok : boolean of
        true : (elem : integer);
        false : ()
    end;

(* A *)
function suma(lst : ListaInt) : integer;
var
    sum : integer;
begin
    sum := 0;
    while (lst <> nil) do
    begin
        sum := sum + lst^.info;
        lst := lst^.sig;
    end;
    suma := sum;
end;

(* B *)
function minimo(lst : ListaInt) : integer;
var
    min : integer;
begin
    min := lst^.info;
    lst := lst^.sig;

    while lst <> nil do
    begin
        if lst^.info < min then
            min := lst^.info;
        lst := lst^.sig;
    end;

    minimo := min;
end;

(* C *)
function producto(lst : ListaInt) : integer;
var
    prod : integer;
begin
    prod := 1;

    while (lst <> nil) do
    begin
        prod := prod * lst^.info;
        lst := lst^.sig;
    end;

    producto := prod;
end;

(* D *)
function cuantosPares(lst : ListaInt) : integer;
var
    cont : integer;
begin
    cont := 0;

    while (lst <> nil) do
    begin
        if (lst^.info mod 2 = 0) then
            cont := cont + 1;
        
        lst := lst^.sig;
    end;

    cuantosPares := cont;
end;

(* E *)
function posicion(valor : integer; lst : ListaInt) : integer;
var
    pos : integer;
begin
    pos := 1;

    while (lst <> nil) and (lst^.info <> valor) do
    begin
        lst := lst^.sig;
        pos := pos + 1;
    end;
    
    if (lst <> nil) then
        posicion := pos
    else
        posicion := -1;
end;

(* F *)
procedure elemEnPos(pos : Positivo; lst : ListaInt; var resultado : PosibleElem);
var
    cont : Positivo;
begin
    cont := 1;

    while (lst <> nil) and (cont < pos) do
    begin
        lst := lst^.sig;
        cont := cont + 1;
    end;

    if lst <> nil then
    begin
        resultado.ok := true;
        resultado.elem := lst^.info;
    end
    else
        resultado.ok := false;
end;

(* G *)
function ultimo(lst : ListaInt) : integer;
var
    ult : integer;
begin
    while lst <> nil do
    begin
        ult := lst^.info;
        lst := lst^.sig;
    end;

    ultimo := ult;
end;

(* H *)
function ordenada(lst : ListaInt) : boolean;
var
    ord : boolean;
    anterior : integer;
begin
    anterior := lst^.info;
    lst := lst^.sig;
    ord := true;

    while (lst <> nil) and ord do
    begin
        if lst^.info < anterior then
            ord := false
        else
        begin
            anterior := lst^.info;
            lst := lst^.sig;
        end;
    end;
    
    ordenada := ord;
end;



            



  