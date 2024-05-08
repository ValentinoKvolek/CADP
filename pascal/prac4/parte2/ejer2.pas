{2. Realice un programa que resuelva los siguientes incisos:
a. Lea nombres de alumnos y los almacene en un vector de a lo sumo 500 elementos. La lectura finaliza
cuando se lee el nombre ‘ZZZ’, que no debe procesarse.
b. Lea un nombre y elimine la primera ocurrencia de dicho nombre en el vector.
c. Lea un nombre y lo inserte en la posición 4 del vector.
d. Lea un nombre y lo agregue al vector.
Nota: Realizar todas las validaciones necesarias}

program ejer2prac4_2;
const 
    dimf = 500;
type
    vector = array [1..dimf] of string;

{a. Lea nombres de alumnos y los almacene en un vector de a lo sumo 500 elementos. La lectura finaliza
cuando se lee el nombre ‘ZZZ’, que no debe procesarse.}

procedure cargarVector(var v:vector; var diml :integer);
var
i:integer;
nombre:string;
begin
diml:=0;
writeln('Ingrese un nombre (ZZZ para finalizar): ');
readln(nombre);
    while (nombre<> 'ZZZ') and  (diml <= dimf) do 
    begin
        diml:=diml + 1;
        v[diml]:= nombre;
        writeln('Ingrese un nombre (ZZZ para finalizar): ');
        readln(nombre);
    end;
        for i:=1 to diml do 
        writeln(v[i]);
end;

{b. Lea un nombre y elimine la primera ocurrencia de dicho nombre en el vector.}

procedure ocurrencia ( var v:vector; var diml:integer);
var
nombre:string;
i:integer;
pos:integer;
begin
    writeln('ingrese un nombre para eliminar: ');
    readln(nombre);
    pos:=1;
    while(v[pos]<> nombre) and (pos <= diml) do begin
        pos:= pos + 1;
    end;
    if(nombre = v[pos]) then begin
        for i:= pos to (diml-1) do 
            v[i]:= v[i+1];  {corro los elemento para tapar el elemento a eliminar}
        diml:= diml -1;
    end;
    for i:=1 to diml do 
        writeln(v[i]);
end;

{c. Lea un nombre y lo inserte en la posición 4 del vector.}

procedure insertar (var v:vector; var diml:integer);
var
nombre:string;
i:integer;
begin
    writeln('ingrese un nombre para insertar: ');
    readln(nombre);
    i:=1;
    if ((diml + 1) <= dimf ) then begin
        for i:= diml to 4 do 
            v[i+1]:= v[1];  {corro los elemnentos uno adelante del otro para hace un lugar al nuevo elemento}
        v[4]:= nombre;
        diml:= diml + 1;
    end;
        for i:=1 to diml do 
        writeln(v[i]);
end;

{d. Lea un nombre y lo agregue al vector.}

procedure agregar (var v:vector; var diml:integer);
var
i:integer;
nombre:string;
begin
    writeln('ingrese un nombre para agregar: ');
    readln(nombre);
     if ((diml + 1) <= dimf ) then 
    begin
        diml:=diml +1;
        v[diml]:= nombre;
    end;
        for i:=1 to diml do 
        writeln(v[i]);
end;

var
v:vector;
diml:integer;
begin
    cargarVector(v, diml);
    ocurrencia(v,diml);
    insertar(v,diml);
    agregar(v,diml);
end.