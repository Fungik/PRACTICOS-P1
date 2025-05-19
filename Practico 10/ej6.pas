(* A *)
type
    TipoMes = (enero, febrero, marzo, abril, 
               mayo, junio, julio, agosto, setiembre, 
               octubre, noviembre, diciembre);

(* B *)
procedure nombreMes(mes : TipoMes);
begin
    case mes of
        enero : write('Enero');
        febreo : write('Febrero');
        marzo : write('Marzo');
        abril : write('Abril');
        mayo : write('Mayo');
        junio : write('Junio');
        julio : write('Julio');
        agosto : write('Agosto');
        setiembre : write('Setiembre');
        octubre : write('Octubre');
        noviembre : write('Noviembre');
        diciembre : write('Diciembre');
    end;
end;

(* C *)
type
    TipoMesRango = 1..12;

(* D *)
procedure mesCorrespondiente(numMes : TipoMesRango; var mes : TipoMes);
begin
    mes := TipoMes(numMes - 1);
end;
    