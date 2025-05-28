program datosFamilia;
const
    MAXPERSONAS = 100; {valor entero mayor estricto a 0}
    MAXCAD = 40; {valor entero mayor estricto a 0}
type
    Cadena = record
                letras : array [1..MAXCAD] of char;
                largo : 0..MAXCAD;
             end;
    Fecha = record
                dia : 1..31;
                mes : 1..12;
                anio : 0..maxint;
            end;
    Persona = record
                nombre : Cadena;
                fechNac : Fecha;
                indMadre, indPadre : 0..MAXPERSONAS;
              end;
    Familia = record
                pers : array[1..MAXPERSONAS] of Persona;
                tope : 0..MAXPERSONAS;
              end;
var
    i, j, indiceHijo, indicePadre: integer;
    fam : Familia; nombre : Cadena;

(* A *)
//compara dos cadenas y devuelve verdadero si son iguales
function cadenasIguales (cad1, cad2 : Cadena): Boolean;
var
    i : integer;
begin
    if cad1.largo = cad2.largo then
    begin
        i := 1;

        while (i <= cad1.largo) and (cad1.letras[i] = cad2.letras[i]) do
            i := i + 1;
        cadenasIguales := i > cad1.largo;
    end
    else
        cadenasIguales := false;      
end;

(* B *)
//muestra una cadena en pantalla
procedure desplegarCadena (cad: Cadena);
var
    i : integer;
begin
    for i := 1 to cad.largo do
        write(cad.letras[i]);
end;

(* C *)
//muestra fecha de nacimiento
procedure desplegarFechaNacimiento(pers : Persona);
begin
    write(pers.fechNac.dia, '/', pers.fechNac.mes, '/', pers.fechNac.anio);
end;

//dados nombre y una familia, muestra info sobre padre y madre
procedure antepasados (usted : Cadena; historia : Familia);
var
    i, j, k : integer;
begin
    i := 1;
    //buscamos la person con nombre usted
    while (i <= historia.tope) and (not cadenasIguales(usted, historia.pers[i].nombre)) do
        i := i + 1;
    
    //si la encontramos
    if i <= historia.tope then
    begin
        j := historia.pers[i].indPadre;
        k := historia.pers[i].indMadre;

        //mostrar padre si esta la informacion
        if j <> 0 then
        begin
            write('Nombre del padre: ');
            desplegarCadena(historia.pers[j].nombre);

            writeln;
            
            write('Fecha de nacimiento: ');
            desplegarFechaNacimiento(historia.pers[j]);
        end;

        writeln;

        //mostrar madre si esta la informacion
        if k <> 0 then
        begin
            write('Nombre de la madre: ');
            desplegarCadena(historia.pers[k].nombre);

            writeln;

            write('Fecha de nacimiento: ');
            desplegarFechaNacimiento(historia.pers[k]);
        end;
    end;
end;

(* D *)
//cargar un nombre
procedure cargarNombre(var nombre : Cadena);
var
    i : integer;
    c : char;
begin
    write('Ingresa el nombre terminado por un punto: ');
    with nombre do
    begin
        i := 0;
        read(c);
        while c <> '.' do
        begin
            i := i + 1;
            letras[i] := c;
            read(c);
        end;
        largo := i;
    end;
end;

//cargar una persona
procedure cargarPersona(var pers : Persona);
begin
    //nombre
    cargarNombre(pers.nombre);

    //fecha de nacimiento
    with pers.fechNac do
    begin
        write('Ingrese fecha de nacimiento separado por espacio en formato DD/MM/AA: ');
        readln(dia, mes, anio);
        writeln;
    end;
    pers.indMadre := 0;
    pers.indPadre := 0;
end;

begin
    //cargar personas
    write('Ingrese la cantidad de personas a leer: ');
    readln(j);
    writeln;

    for i := 1 to j do
    begin  
        writeln('---- Datos de la persona ', i:1,' ----');
        cargarPersona(fam.pers[i]);
        writeln;
    end;
    fam.tope := j;

    //cargar relaciones madre-hijo
    write('Indique cantidad de relaciones madre-hijo: ');
    readln(j);
    for i := 1 to j do
    begin
        write('Ingrese los indices de la madre y del hijo: ');
        readln(indicePadre, indiceHijo);
        fam.pers[indiceHijo].indMadre := indicePadre;
    end;

    writeln;

    //padre-hijo
    write('Indique cantidad de relaciones padre-hijo: ');
    readln(j);
    for i := 1 to j do
    begin
        write('Ingrese los indices de la padre y del hijo: ');
        readln(indicePadre, indiceHijo);
        fam.pers[indiceHijo].indPadre := indicePadre;
    end;

    writeln;

    //mostrar antepasados
    writeln('---- Obtener informacion sobre sus padres ----');
    cargarNombre(nombre);
    writeln;
    antepasados(nombre, fam);

    writeln;
end.
