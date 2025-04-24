procedure siguienteDigito(var num: Natural; var digito: integer);
begin
    digito := num mod 10;  (* extraer el ultimo digito del numero *)
    num := num div 10;     (* nos quedamos con el numero sin la ultima cifra *)
end;

function esHistogramaDe(c0, c1, c2, c3, c4, c5, c6, c7, c8, c9: integer; num: Natural): boolean;
var
    digit: integer;
    esValido: boolean;
begin
    esValido := true;
    while (num > 0) and esValido do
    begin
        siguienteDigito(num, digit);
        case digit of
            0: begin c0 := c0 - 1; if c0 < 0 then esValido := false; end;
            1: begin c1 := c1 - 1; if c1 < 0 then esValido := false; end;
            2: begin c2 := c2 - 1; if c2 < 0 then esValido := false; end;
            3: begin c3 := c3 - 1; if c3 < 0 then esValido := false; end;
            4: begin c4 := c4 - 1; if c4 < 0 then esValido := false; end;
            5: begin c5 := c5 - 1; if c5 < 0 then esValido := false; end;
            6: begin c6 := c6 - 1; if c6 < 0 then esValido := false; end;
            7: begin c7 := c7 - 1; if c7 < 0 then esValido := false; end;
            8: begin c8 := c8 - 1; if c8 < 0 then esValido := false; end;
            9: begin c9 := c9 - 1; if c9 < 0 then esValido := false; end;
        end;
    end;

    (* es histograma solo si todos quedaron en cero *)
    esHistogramaDe := esValido and
                      (c0 = 0) and (c1 = 0) and (c2 = 0) and (c3 = 0) and (c4 = 0) and
                      (c5 = 0) and (c6 = 0) and (c7 = 0) and (c8 = 0) and (c9 = 0);
end;

function sonAnagramas(num1, num2: Natural): boolean;
var
    d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, digit: integer;
begin
    (* inicializamos los contadores *)
    d0 := 0; d1 := 0; d2 := 0; d3 := 0; d4 := 0;
    d5 := 0; d6 := 0; d7 := 0; d8 := 0; d9 := 0;

    (* contamos los digitos de num1 *)
    while (num1 > 0) do
    begin
        siguienteDigito(num1, digit);
        case digit of
            0: d0 := d0 + 1;
            1: d1 := d1 + 1;
            2: d2 := d2 + 1;
            3: d3 := d3 + 1;
            4: d4 := d4 + 1;
            5: d5 := d5 + 1;
            6: d6 := d6 + 1;
            7: d7 := d7 + 1;
            8: d8 := d8 + 1;
            9: d9 := d9 + 1;
        end;
    end;

    sonAnagramas := esHistogramaDe(d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, num2);
end;
