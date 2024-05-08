program ejer10prac4;
const
    dimf = 300;
type    
    vector = array [1..dimf] of real;

procedure cargarVector(var v:vector; var diml:integer);
var
i:integer;
begin
    i:=1;
    writeln('ingrese el salario: ');
    readln(v[i]);
    while(v[i]<>0) and (diml <= dimf) do begin
        diml:= diml + 1;
        i:= i+1;
        writeln('ingrese el salario: ');
        readln(v[i]);
    end;
end;

{a. Realizar un módulo que incremente el salario de cada empleado en un 15%. Para ello, implementar
un módulo que reciba como parámetro un valor real X, el vector de valores reales y su dimensión
lógica y retorne el mismo vector en el cual cada elemento fue multiplicado por el valor X}

procedure incrementador(v:vector; diml:integer; x:real);
var
v2:vector;
i:integer;
begin
    for i:=1 to diml do 
        v2[i] := v[i] * x;
    writeln('los salarios incrementados: ');

    for i:=1 to diml do 
        writeln(v2[i]:2:2);
end;

{b. Realizar un módulo que muestre en pantalla el sueldo promedio de los empleados de la empresa.}

function sueldoPromedio(v:vector; diml:integer):real;
var
total:real;
i:integer;
begin
total:=0;

    for i:= 1 to diml do
        total:= total + v[i];
    
    sueldoPromedio := total/diml;
    
end;

var
v:vector;
diml:integer;
x:real;
begin
    cargarVector(v,diml);
    writeln('ingrese numero para multiplicar su salario: ');
    readln(x);
    incrementador(v,diml,x);
    writeln('el sueldo promedio es de :', sueldoPromedio(v, diml):2:2);
end.
    
    
        

