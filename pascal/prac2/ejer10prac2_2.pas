{10. Realizar un programa modularizado que lea una secuencia de caracteres y verifique si cumple con el
patrón A$B#, donde:
- A es una secuencia de sólo letras vocales
- B es una secuencia de sólo caracteres alfabéticos sin letras vocales
- los caracteres $ y # seguro existen
Nota: en caso de no cumplir, informar que parte del patrón no se cumplió.}
program ejer10_prac2_2;
var
vocales:['a','e','i','o','u'];
alfabéticos:['a'..'z'];
be:alfabéticos-vocales;
procedure SecuenciadeCaracteres(secuencia:integer);
var

begin
    if(secuencia)

end;
var
secuencia: string;
begin
    writeln('ingresar una secuencia de caracteres');
    readln(secuencia);
    SecuenciadeCaracteres(secuencia);
end.