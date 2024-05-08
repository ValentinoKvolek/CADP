{9. Realizar un programa modularizado que lea información de alumnos de una facultad. Para cada alumno se
lee: número de inscripción, apellido y nombre. La lectura finaliza cuando se ingresa el alumno con número
de inscripción 1200, que debe procesarse. Se pide calcular e informar:
● Apellido de los dos alumnos con número de inscripción más chico.
● Nombre de los dos alumnos con número de inscripción más grande.
● Porcentaje de alumnos con nro de inscripción par}
program ejer9prac2_2;
procedure Num_mas_chico(apellido:string; NumeroInscripcion:integer; var chico1:integer; var chico2:integer; var apellido1:string; var apellido2:string);
begin
    if (NumeroInscripcion<=chico1)then begin
        chico2:=chico1;
        apellido2:=apellido1;
        chico1:=NumeroInscripcion;
        apellido1:=apellido;
    end
    else if (NumeroInscripcion<=chico2) then begin
        chico2:=NumeroInscripcion;
        apellido2:=apellido;
    end;
end;

procedure Num_mas_grande(nombre:string; NumeroInscripcion:integer; var grande1:integer; var grande2:integer; var nombre1:string; var nombre2:string);
begin
  if (NumeroInscripcion>=grande1)then begin
        grande2:=grande1;
        nombre2:=nombre1;
        grande1:=NumeroInscripcion;
        nombre1:=nombre;
    end
    else if (NumeroInscripcion>=grande2) then begin
        grande2:=NumeroInscripcion; 
        nombre2:=nombre;
    end;
end;

function Porcentaje(totalalumnos:integer; totalpares:integer):real;
var
total:real;
begin
total:=totalpares/totalalumnos;
Porcentaje:=total;
end;


var
chico1:integer; totalpares:integer; NumeroInscripcion:integer;
grande1:integer; totalalumnos:integer; grande2:integer; chico2:integer;
apellido1:string; nombre1:string; apellido2:string;
nombre2:string; apellido:string; nombre:string;
begin
chico1:=999;
grande1:=-999;
chico2:=999;
grande2:=-999;
totalalumnos:=0;
apellido1:= ' ';
totalpares:=0;
    repeat
        writeln('ingresar el numero de inscripcion: ');
        readln(NumeroInscripcion);
        if((NumeroInscripcion mod 2)= 0) then 
            totalpares:=totalpares +1;
        writeln('ingresar el apellido: ');
        readln(apellido);
        writeln('ingrese nombre del alumno: ');
        readln(nombre);
        Num_mas_chico(apellido,NumeroInscripcion,chico1,chico2,apellido1,apellido2);
        Num_mas_grande(nombre,NumeroInscripcion,grande1,grande2,nombre1,nombre2);
        totalalumnos:= totalalumnos +1;
    until (NumeroInscripcion=1200);
    writeln('el alumno con numero mas chico de inscripcion es:', chico1, 'y el apellido es :', apellido1);
    writeln('el alumno con segundo numero mas chico de inscripcion es:', chico2, 'y el apellido es :', apellido2);
    writeln('el alumno con numero mas grande de inscripcion es:', grande1, 'y el nombre es :', nombre1);
    writeln('el alumno con segundo numero mas grande de inscripcion es:', grande2, 'y el apellido es :', nombre2);
    writeln('el promedio de alumnos con numero de inscripcion pares es de : ', Porcentaje(totalalumnos,totalpares):2:2);
end.