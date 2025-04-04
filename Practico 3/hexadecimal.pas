program hexa7EB;
var
    cifra1, cifra2, cifra3 : char;
    centenas, decenas, unidades, numHexadecimal : integer;

begin
    // Solicita al usuario un número hexadecimal de 3 cifras
    write('Ingrese numero positivo hexadecimal de 3 cifras: ');
    readln(cifra1, cifra2, cifra3);

    // Convierte la primera cifra hexadecimal a su valor decimal
    case cifra1 of
        'A'..'F' : centenas := ord(cifra1) - 55; // Convierte letras A-F en 10-15
        '0'..'9' : centenas := ord(cifra1) - 48; // Convierte números 0-9 en su valor entero
    end;

    // Convierte la segunda cifra hexadecimal a su valor decimal
    case cifra2 of
        'A'..'F' : decenas := ord(cifra2) - 55;
        '0'..'9' : decenas := ord(cifra2) - 48;
    end;

    // Convierte la tercera cifra hexadecimal a su valor decimal
    case cifra3 of
        'A'..'F' : unidades := ord(cifra3) - 55;
        '0'..'9' : unidades := ord(cifra3) - 48;
    end;

    // Calcula el número decimal equivalente al hexadecimal ingresado
    numHexadecimal := (centenas * 16 * 16) + (decenas * 16) + unidades;

    writeln('Hexadecimal ', cifra1, cifra2, cifra3, ' = Decimal ', numHexadecimal:0);
end.
