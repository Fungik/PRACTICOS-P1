type
    Positivo = 1..MaxInt;
    ListaInt = ^TCelda;
    TCelda = record
        info : integer;
        sig : ListaInt;
    end;

(* A *)
procedure insertarTercero(elem : integer; var lst : ListaInt);
var
    nuevo : ListaInt;
begin
    if (lst <> nil) and (lst^.sig <> nil) then
    begin
        new(nuevo);
        nuevo^.info := elem;
        nuevo^.sig := lst^.sig^.sig;
        lst^.sig^.sig := nuevo;
    end;

end;

(* B *)
procedure insertarPenultimo(elem : integer; var lst : ListaInt);
var
    nuevo, iter : ListaInt;
begin
    if (lst <> nil) then
    begin
        new(nuevo);
        nuevo^.info := elem;

        if lst^.sig = nil then
        begin
            nuevo^.sig := lst;
            lst := nuevo;
        end
        else
        begin
            iter := lst;
            while (iter^.sig^.sig <> nil) do
                iter := iter^.sig;
            
            nuevo^.sig := iter^.sig;
            iter^.sig := nuevo;
        end;
    end;
end;

(* C *)
procedure InsertarLuegoPos(nuevo : integer; pos : Positivo; var lst : ListaInt);
var
    cont : Positivo;
    iter, nuevaList : ListaInt;
begin
    cont := 1;
    iter := lst;

    while (iter <> nil) and (cont < pos) do
    begin
        iter:= iter^.sig;
        cont := cont + 1;
    end;

    if (iter <> nil) then
    begin
        new(nuevaList);
        nuevaList^.info := nuevo;
        nuevaList^.sig := iter^.sig;
        iter^.sig := nuevaList;
    end;
end;

(* D *)
procedure InsertarAntes(nuevo,valor : integer; var lst : ListaInt);
var
    p, q : ListaInt;
begin
    if (lst <> nil) then
    begin
        if (lst^.info = valor) then
        begin
            new(p);
            p^info := nuevo;
            p^.sig := lst;
            lst := p;
        end
        else
        begin
            q := lst;
            while (q <> nil) and (q^.sig^.info <> valor) do
                q := q^.sig;
    
            if (q <> nil) then
            begin
                new(p);
                p^.info := nuevo;
                p^.sig := q^.sig;
                q^.sig := p;
            end;
        end;
    end;
end;

(* E *)
procedure InsertarOrdenado(nuevo : integer; var lst : ListaInt);
var
    celda, iterL : LIstaInt;
begin
    new(celda);
    celda^.info := nuevo;

    if (lst = nil) or (nuevo <= lst^.info) then
    begin
        celda^,sig := lst;
        lst := celda;
    end
    else
    begin
        iterL := lst;
        while (iter^.sig <> nil) and (iter^.sig^.info < nuevo) do
            iterL := iterL^.sig;
        
        celda^.sig := iterL^.sig;
        iter^.sig := celda;
    end;
end;

(* F *)
procedure BorrarSegundo(var lst : ListaInt);
var
    p : ListaInt;
begin
    if (lst <> nil) and (lst^.sig <> nil) then
    begin
        p := lst^.sig;
        lst^.sig := p^.sig;
        dispose(p);
    end;
end;

(* G *)
(* I *)
procedure borrarUltimo(var lst : ListaInt);
var
    p, q : ListaInt;
begin
    if (lst <> nil) then
    begin
        if lst^.sig = nil then
        begin
            dispose(lst);
            lst := nil;
        end
        else
        begin
            p := lst;
            q := nil;

            while p^.sig <> nil do
            begin
                p := q;
                q := q^.sig;
            end;

            dispose(p);
            q^.sig := nil;
        end;
    end;
end;

(* II *)
procedure borrarPrimerImpar(var lst : ListaInt);
var
    p, q : ListaInt;
begin
    if (lst <> nil) then
    begin

        if ((lst^.info mod 2) <> 0) then
        begin
            p := lst;
            lst := lst^.sig;
            dispose(p);
        end
        else
        begin
            p := lst;
            q := lst^.sig;
            while (q <> nil) and ((q^.info mod 2) = 0) do
            begin
                p := q;
                q := q^.sig;
            end;
        
            if (q <> nil) then
            begin
                p^.sig := q^.sig;
                dispose(q);
            end;
        end;
    end;
end;

(* III *)
procedure borrarPares(var lst: ListaInt);
var
    p, q : ListaInt;
begin
    while (lst <> nil) and (lst^.info mod 2 = 0) do
    begin
        p := lst;
        lst := p^.sig;
        dispose(p);
    end;

    if (lst <> nil) then
    begin
        q := lst;
        while (q^.sig <> nil) do
        begin
            if q^.sig^.info mod 2 = 0 then
            begin
                p := q^.sig;
                q^.sig := p^.sig;
                dispose(q);
            end
            else
                q := q^.sig;
        end;
    end;
end;

        
(* H *)
procedure BorrarPrimeraAparicion(valor : integer; var lst : ListaInt);
var
    p, q: ListaInt;
begin
    if (lst <> nil) then
    begin
        if lst^.info = valor then
        begin
            p := lst;
            lst := lst^.sig;
            dispose(p);
        end
        else
        begin
            p := lst;

            while (p^.sig <> nil) and (p^.sig^.info <> valor) do
                p := p^.sig;
    
            if (p^.sig <> nil) then
            begin
                q := p^.sig;
                p^.sig := q^,sig;
                dispose(q);
            end;
        end;
    end;
end;