program convertDias;
var
    hrs, min, mintotal, hrstotal, hhmm1, hhmm2 : integer;
    dias : real;
begin
    read(hhmm1, hhmm2);
    hrs := (hhmm1 DIV 100) + (hhmm2 DIV 100);   (*Obtener la cantidad de horas*)
    min := (hhmm1 MOD 100) + (hhmm2 MOD 100);   (*Obtener cantidad de minutos*)

    dias := trunc(hrs / 24);    (*Obtener cantidad de dias*)
    hrstotal := (hrs MOD 24) + (min DIV 60);    (*La suma total de horas*)
    mintotal := (min MOD 60);   (*La suma total de minutos*)
    write(dias:1:0,' ',hrstotal,mintotal)
end.



