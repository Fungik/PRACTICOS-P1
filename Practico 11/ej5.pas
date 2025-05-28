(* A, B *)
type
    Natural = 0..maxint;
    Tipo = (nat, error);

    Err = (diverr, reserr, argerr);

    Nerr = record
            case caso : Tipo of
                nat : (
                    valor : Natural
                );
                error : (
                    err : Err
                );
            end;

(* C *)

//Procedimiento auxiliar
procedure hayError (var resu : Nerr);
begin
    resu.caso := error;
    resu.err := argerr;
end;

procedure division (a, b : Nerr; var resu: Nerr);
begin
    if (a.caso = error) or (b.caso = error) then
        hayError(resu);
    else if (a.caso = nat) and (b.valor = 0) then
    begin
        resu.caso := error;
        resu.err := diverr;
    end
    else
    begin
        resu.caso := nat;
        resu.valor := a.valor div b.valor;
    end;
end;

procedure resta (a, b: Nerr; var resu: Nerr);
begin
    if (a.caso = error) or (b.caso = error) then
        hayError(resu);
    else if (a.valor < b.valor) then
    begin
        resu.caso := error;
        resu.err := reserr;
    end
    else 
    begin
        resu.caso := nat;
        resu.valor := a.valor - b.valor;
    end;
end;

procedure suma(a, b: Nerr; var resu: Nerr);
begin
    if (a.caso = error) or (b.caso = error) then
        hayError(resu)
    else
    begin
        resu.caso := nat;
        resu.valor := a.valor + b.valor;
    end;
end;

procedure producto(a, b: Nerr; var resu: Nerr);
begin
    if (a.caso = error) or (b.caso = error) then
        hayError(resu)
    else
    begin
        resu.caso := nat;
        resu.valor := a.valor * b.valor;
    end;
end;