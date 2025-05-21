program operacionesComplejos;
type
    Complejo = record
                re, im : Real;
               end;
var 
    c1, c2, resultado : Complejo;

(* A *)
procedure sumaComplejos (c1, c2 : Complejo; VAR c3 : Complejo);
begin
    c3.re := (c1.re + c2.re);
    c3.im := (c1.im + c2.im);
end;

(* B *)
procedure multComplejos (c1, c2 : Complejo; var c3 : Complejo);
begin
    c3.re := (c1.re * c2.re) - (c1.im * c2.im);
    c3.im := (c1.im * c2.re) + (c2.im * c1.re);
end;

(* C *)
procedure leerComplejos (var c1 : Complejo);
begin
    Writeln('Ingrese la parte real del numero: ');
    read(c1.re);

    Writeln('Ingrese la parte imaginaria del numero: ');
    read(c1.im);
end;

begin
    leerComplejos(c1);
    leerComplejos(c2);

    sumaComplejos(c1,c2,resultado);
    writeln('La suma vale: ',resultado.re:1:2, ' + ', resultado.im:1:2, 'i');

    multComplejos(c1,c2,resultado);
    writeln('La multiplicacion vale: ', resultado.re:1:2, ' + ', resultado.im:1:2, 'i');
end.