(* 1 *)
type Letra = ('X', 'Y', 'Z') //Incorrecto, no deben ir entre comillas.

type Lenguaje = (Pascal, Fortran, Basic) //Correcto.

type Codigo = (1, 2, 3, 4, 5) //Incorrecto, no se pueden usar integer.

type Codigo = (c1, c2, c3, c4, c5) //Correcto.

procedure encontrar (var ciudad :(Minas, Florida, Flores)) //Incorrecto, no se puede definir un tipo 
//enumerado en la declaracion de parametros.

type Trabajo = (obrero, oficinista);
...
procedure buscar (var empleo : Trabajo); //Correcto.

---------------------------------------------------------------------------------------------------------

(* 2 *)
type color = (rojo, blanco, azul, purpura);
    var coloracion : color;

1)read (rojo);
    write (rojo); 
// Incorrecto, rojo no es una variable

2)coloracion := blanco;
case coloracion of
    rojo : write ('rojo');
    blanco : write ('blanco');
    azul : write ('azul');
    purpura: write ('purpura')
end;
//Correcto

3)read (coloracion);
write (coloracion);
// Incorrecto, read y write no funciona directamente con tipos enumerados

4)coloracion := blanco;
write (coloracion);
//Parcialmente correcto, devolveria 1, su numero ordinal

5)if coloracion = azul then
    write ('azul')
else
    write ('no azul');
//Correcto

---------------------------------------------------------------------------------------------------------

(* 3 *)
program Ejercicio3;
type Asignatura = (matematica, historia, computacion, geografia, fisica);
var a, b: Asignatura;
begin
    a := matematica;
    b := computacion;
    if a > b then
        write ('Magnifico')
    else
        write ('Excelente')
end.
//Sem devuelve Excelente

---------------------------------------------------------------------------------------------------------

(* 4 *)
type TipoDia = (lunes, martes, miercoles, jueves, viernes, sabado, domingo);
var dia : TipoDia;
    laborable : lunes..viernes;
    finsemana : sabado..domingo;

1)laborable := pred(sabado);
//Correcto, pred(sabado) es viernes, que esta en el rango.

2)finsemana := martes;
//Error de rango, martes no esta en sabado..domingo.

3)dia := succ(domingo);
//Error de rango, luego de Domingo, dia 6, no hay un dia 7.

4)dia := laborable;
//Correcto, laborable esta incluido en dia.

---------------------------------------------------------------------------------------------------------

(* 5 *)
1)type Tipo1 = '0'..9
//Incorrecto, se usa char, '0', e integer, 9.

2)type Tipo2 = -3..6
//Correcto

3)type Tipo3 = -1..-3
//Incorrecto, un subrango siempre se declara de menor a mayor

4)type Tipo4 = 0.0..9.0
//Incorrecto, se usan reales, los subrangos usan tipos ordinales

5)type Tipo5 = 1..1
//Correcto

6)type Tipo6 = false..false
//Correcto