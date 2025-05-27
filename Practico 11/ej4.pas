(* A *)
type
    TipoCaso = (realesIguales, realesDistintas, complejas)
    TipoRaices = record
                    caso : TipoCaso;
                    case caso of
                        realesDistintas : (r1, r2 : real);
                        realesIguales : (r : real);
                        complejas : (parteReal, parteImaginaria : real);
                    end;

(* B *)
procedure raices (a,b,c : real; var r : TipoRaices);
var
    dis : real;
begin
    dis:= sqr(b) - (4 * a * c);

    if dis < 0 then
    begin
        r.caso := complejas;

        r.parteReal := -b / (2 * a);
        r.parteImaginaria := sqrt(-dis) / (2 * a);
    end
    else if dis > 0 then
    begin
        r.caso := realesDistintas;
        
        r.r1 := (-b + sqrt(dis)) / (2 * a);
        r.r2 := (-b - sqrt(dis)) / (2 * a);
    end
    else
    begin
        r.caso := realesIguales;

        r.r := -b / (2 * a);
    end;
end;
