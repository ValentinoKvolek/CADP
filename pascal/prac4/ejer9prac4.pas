program ejer8prac4;
const 

    dimf = 4;

type

    alumnos = record
        nro_inscripcion: integer;
        DNI:integer;
        nombre:string;
        apellido:string;
        ano_nacimiendo:integer;
    end;

    vector = array [1..dimf] of alumnos;


procedure cargarVector(var v:vector);
var
i:integer;
begin
    diml:=1;
    while (v[i].DNI <> -1)and(diml >= dimf) then
    begin
        writeln('ingrese el numero de inscripcion: ');
        readln(v[i].nro_inscripcion);
        writeln('ingrese el DNI: ');
        readln(v[i].DNI);
        writeln('ingrese el nombre del alumno: ');
        readln(v[i].nombre);
        writeln('ingrese el apellido del alumno: ');
        readln(v[i].apellido);
        writeln('ingrese el anio de nacimiento: ');
        readln(v[i].ano_nacimiendo);
        diml:=diml +1;
    end;       
end;

{a. El porcentaje de alumnos con DNI compuesto sólo por dígitos pares.}

function porcentaje(v:vector):real; 
var
cantAlumnoPares:integer;
i:integer;
dig:integer;
valor:integer;
cumple:boolean;
begin
cantAlumnoPares:=0;
    for i:=1 to diml do 
    begin
        cumple:=false;
        valor:=v[i].DNI;
        while (valor<>0) do
        begin
            dig:= valor mod 10;
            if((dig mod 2 )= 0) then
                cumple:= true;
            valor:= valor div 10;
        end;
        if (cumple) then
            cantAlumnoPares:= cantAlumnoPares + 1;
    end;
    porcentaje:= (cantAlumnoPares/dimf);
end;

{b. Apellido y nombre de los dos alumnos de mayor edad}

procedure mayorEdad(v: vector; var max1: integer; var max2: integer; var nombremax1: string; var apellidomax1: string; var nombremax2: string; var apellidomax2: string);
var
  i: integer;
begin
  for i := 1 to diml do
  begin
    if (v[i].ano_nacimiendo < max1) then
    begin
      max2 := max1;
      nombremax2 := nombremax1;
      apellidomax2 := apellidomax1;
      max1 := v[i].ano_nacimiendo;
      nombremax1 := v[i].nombre;
      apellidomax1 := v[i].apellido;
    end
    else if (v[i].ano_nacimiendo < max2) then
    begin
      max2 := v[i].ano_nacimiendo;
      nombremax2 := v[i].nombre;
      apellidomax2 := v[i].apellido;
    end;
  end;
end;


procedure informar(v:vector; var nombremax1:string; var apellidomax1:string; var nombremax2:string; var apellidomax2:string);
begin
    writeln('el porcentaje fue de: ', porcentaje(v) :2:2);
    writeln('el alumno con mayor edad fue : ', nombremax1, apellidomax1);
    writeln('el segundo alumno con mayor edad fue : ', nombremax2, apellidomax2);
    
end;


var
diml:=integer;
v:vector;
max1,max2:integer;
apellidomax1,apellidomax2,nombremax1,nombremax2:string;
begin
max1:=9999;
max2:=9999;
apellidomax1:= ' ';
apellidomax2:= ' ';
nombremax1:= ' ';
nombremax2:= ' ';
    cargarVector(v,diml);
    mayorEdad(v,max1,max2,nombremax1,apellidomax1,nombremax2,apellidomax2);
    informar(v,nombremax1,apellidomax1,nombremax2,apellidomax2);
end.
