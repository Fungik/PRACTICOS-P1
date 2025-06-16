(* A *)
function multiplos(k : Positivo; num : Positivo) : ListaInt;
var
    l, p, nuevaCelda : ListaInt;
    cont : integer;
begin
    cont := 1;

    new(l);
    l^.info := num;
    l^.sig := nil;
    p := l;

    while (cont < k) and (p <> nil) do
    begin
        cont := cont + 1;
        new(nuevaCelda);
        nuevaCelda^.info := cont * num;
        nuevaCelda^.sig := nil;
        p^.sig := nuevaCelda;
        p := p^.sig;
    end;
    multiplos := l;
end;
