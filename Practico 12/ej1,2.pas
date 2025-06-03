type
    PunteroInt = ^integer;
    PunteroChar = ^char;
var
    apun1, apun2: PunteroInt;
    apun3, apun4: PunteroChar;

(* A *)
□ new(apun1); //Valida
□ new(apun1^); //Invalida
□ apun1 := apun3; //Invalida
□ apun2^ := apun2^ + apun1^; //Valida
□ writeln(apun2, apun3); //Invalida
□ read(apun1^, apun4^); //Valida
□ apun2 := new(apun1); //Invalida
□ dispose(apun3); //Valida
□ apun1 := NIL; //Valida
□ apun3^ := NIL; //Invalida
□ apun3 := apun4 and (apun3 = NIL); //Invalida

(* B *)
new(apun1);
new(apun2);
new(apun3);
apun2 := apun1;
apun1^ := 2;
apun2^ := 3;
apun3^ := 'A';
writeln(apun1^, apun2^, apun3^)

//Se devuelve 33A

(* C *)
new(apun1);
read(apun1^);
writeln(apun1^);
dispose(apun1);
writeln(apun1^) //Esta ultima linea da error en tiempo de ejecucion

(* D *)
new(apun3);
new(apun1);
apun3^ := 'Z';
apun2 := NIL; 
apun4 := NIL;
if (apun3 <> NIL) and (apun2 = NIL) then
    writeln ('A');
if apun3^ = 'Z' then
    writeln ('Z')
else
    writeln ('X');
//Se devuelve AZ

(* 2 *)

(* A *)
//Opcion I

(* B *)
//Opcion III
//b y c referencian al mismo lugar de memoria, queda memoria ocupada y se pierde su referencia
//Si, sino la memoria reservada queda utilizada sin ser referenciada por alguna variable

(* C *)
//4