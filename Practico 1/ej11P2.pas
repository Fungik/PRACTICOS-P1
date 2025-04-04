PROGRAM Muestra2;
CONST
    medio = 0.5;
VAR
    num : Real;
    a, b : Integer;
BEGIN
    readln(num);
    a := round(num);
    b := trunc(num + medio);
    writeln(num, a, b)
END.

(*Si ingreso 2 por consola se obtiene 2 2 2*)
(*num es real entonces el primero se escribe como 2.000...E y luego 22 sin espacios*)

(*Si ingreso -3 por consola se obtiene -3.0000E -3 -3*)
(*b es trunc(-2.5) entonces se obtiene -3 -3 -2*)

(*Si ingreso -1.3 por consola se obtiene -1.00000E -1 0*)
(*Correcto*)

(*Si ingreso 2.6 por consola se obtiene 2.6000000E 3 3*)
(*Correcto*)









)
