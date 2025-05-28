(* A *)
const
    X = ..;
    Y = ..;
type
    Natural = 0..maxint;
    Tipo = (nat, error);
    Err = (diverr, reserr, argerr);

    Nerr = record
        caso : Tipo;
        case caso of
            nat   : (valor : Natural);
            error : (err : Err);
    end;

    MatTipo = (valida, merr);

    MNerr = record
            estado : MatTipo;
            case estado of
                valida : (filas : 1..Y; columnas : 1..X; datos : array[1..Y, 1..X] of Nerr);
                merr : ();
            end;

(* B *)
procedure mprod (m1, m2: MNerr; VAR resu: MNerr);
begin
    if m1
end;