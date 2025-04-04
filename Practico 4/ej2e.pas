program Ejercicio1e;
const total = 4;
var ind, j, sum : Integer;
begin
sum := 0;
for ind := 1 to TOTAL do
for j := 1 to ind do
sum := sum + ind + j;
write(sum)
end.