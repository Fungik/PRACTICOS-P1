(* 7 *)
type vocal = (a, e, i, o, u);
var letra : vocal;
    uncar : char;
begin

//i
letra := a;
while letra <= u do
begin
    read (uncar);
    writeLn('El caracter leido es: ',uncar);
    letra := succ (letra)
end.
//Error. Al entrar por ultima vez al while, con letra = u, al final se intenta hacer
//letra := succ (letra), lo cual da error ya que no hay un sucesor de u.

//ii)
letra := u;
repeat
    read (uncar);
    writeLn ('El caracter leido es: ', uncar);
    letra := pred (letra)
until letra = a;
//No hay error.

---------------------------------------------------------------------------------------------------------

(* 8 *)
//A
i)[0, 1, 2, 3]
//0, 1, 2, 3

ii) [0..10, 13, 15]
//0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 15

iii) ['a'..'m','A'..'M']
//'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'

iv) ['0'..'5','9']
//'0', '1', '2', '3', '4', '5', '9'

//B
i) 'A' in ['B'..'S']
//False

ii) 0 in [-3..5]
//True

iii) 7 in [1..4,6..8]
//True

iv) ' ' in []
//False

---------------------------------------------------------------------------------------------------------

(* 9 *)
type Estudiante = record
                    nombre, direccion : array[1..30] of char;
                    prueba, examen : 0..100;
                    tipoest : (grado, posgrado)
                  end
//Correcto

type Persona = record
                nombre : array[1..30] of char;
                edad : 0..120;
                sexo : (Fem, Masc)
               end
//Correcto

type Calificacion = record
                     prueba : 0..100;
                     nota : 1..12;
                     prueba : 0..100
                    end
//Incorrecto. Se utiliza el mismo identificador dos veces

type Evaluacion = record
                    prueba : 0..100;
                    nota : 0..12;
                    orden : 1..100
                  end
//Correcto

---------------------------------------------------------------------------------------------------------

(* 10 *)
type Fecha = record
                mes : 1..12;
                dia : 1..31;
                anio : 0..2100;
                bisiesto : (si, no)
             end;
var tiempo : Fecha;
begin

i)tiempo.mes := 12
//Correcto

ii)tiempo.fecha := 3-15-1900
//Incorrecto, se debe asignar uno a uno el valor para mes, dia y anio

iii)tiempo.fecha := mes
//Incorrecto, mes no es un valor posible para el campo fecha

iv)tiempo.anio := 2002
//Correcto

v)tiempo.bisiesto := 1
//Incorrecto, bisiesto solo acepta si o no

vi)tiempo.dia := tiempo.mes
//Correcto

vii)tiempo.tiempo := tiempo
//Incorrecto, tiempo no es un campo de registro