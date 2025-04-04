program charDuplicate;
var
    char1, char2 : char;
begin
    write('Ingrese un texto en minusculuas termina por $: ');
    read(char1);

    write('Las consonantes y vocales duplicadas son: ');
    while (char1 <> '$') do
    begin
        read(char2);

        if (char2 <> ' ') and (char1 = char2) then
            write(char1,char1,' ');
            
        char1 := char2;
    end;
    writeln()
    
end.
        

        
