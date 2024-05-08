program ejer8prac3;

type

    datosDocente = record
        dni:integer;
        nombre:string;
        apellido:string;
        email:string;
    end;

    proyecto = record
        localidad:string;
        codigoUnico:integer;
        titulo:string;
        docente:datosDocente;
        cantAlumnos:integer;
        nombreEscuela:string;
    end;


procedure LeerDocentes(var datos:datosDocente);
begin
    writeln('ingresar dni');
    readln(datos.dni);
    writeln('ingresar nombre');
    readln(datos.nombre);
    writeln('ingresar apellido');
    readln(datos.apellido);
    writeln('ingresar email');
    readln(datos.email);   
end;


procedure Leer(var datos:proyecto);
begin
    writeln('ingresar localidad');
    readln(datos.localidad);
    writeln('ingresar codigo unico');
    readln(datos.codigoUnico);
    writeln('ingresar titulo');
    readln(datos.titulo);
    writeln('ingresar cantidad alumnos');
    readln(datos.cantAlumnos);
    writeln('ingresar nombre de la escuela');
    readln(datos.nombreEscuela);
    LeerDocentes(datos.docente);
end;


procedure MayorCantAlumnos (datos: proyecto; var mayor1:integer; var mayor2:integer; var nombre1:string; var nombre2:string);
begin
    if(datos.cantAlumnos > mayor1) then begin
        mayor2:=mayor1;
        nombre2:=nombre1;
        mayor1:=datos.cantAlumnos;
        nombre1:=datos.nombreEscuela;
    end
    else if(datos.cantAlumnos > mayor2) then begin
            mayor2:=datos.cantAlumnos;
            nombre2:=datos.nombreEscuela;
    end;  
end;

function Comprobar(datos:proyecto):boolean;
var
dig:integer;
ok:boolean;
num:integer;
cantPares:integer;
cantImpares:integer;
begin
cantPares:=0;
cantImpares:=0;
num:=datos.codigoUnico;
    while(num <> 0) do begin
        dig:= num mod 10;
        if((dig mod 2) = 0) then
            cantPares:=cantPares + 1;
        if((dig mod 2) <> 0) then
            cantImpares:=cantImpares + 1;
    end;
    if (cantPares = cantImpares) then
        ok:=true;
    Comprobar:= ok ;
end;

procedure ProyectoLocalidad (datos:proyecto);
begin
    if(datos.localidad = 'Daireaux') and (Comprobar(datos)) then
        writeln('el titulo: ', datos.titulo , 'posee igual cantidad de digitos y es de daireaux' );
end;


var
mayor1,mayor2:integer;
nombre1,nombre2:string;
datos:proyecto;
totalEscuelas:integer;
actual:string;
cantLocalidad:integer;
begin
mayor1:=-1;
mayor2:=-1;
totalEscuelas:=0;
cantLocalidad:=0;
    Leer(datos);
    actual:=datos.localidad;    
    while(datos.codigoUnico <> -1 ) do begin
        while(datos.codigoUnico <> -1 ) and (datos.localidad = actual) do begin
            cantLocalidad:=cantLocalidad +1;
            MayorCantAlumnos(datos,mayor1,mayor2,nombre1,nombre2);
            ProyectoLocalidad(datos);
            totalEscuelas:=totalEscuelas +1;
            Leer(datos);
        end;
        writeln('la localidad: ' , actual , 'tiene una cantidad total de :', cantLocalidad);
        actual:=datos.localidad;
        cantLocalidad:=0;
    end;
    writeln('la escuela con mayor cantidad de alumnos participantes es : ', nombre1);
    writeln('la segunda escuela con mayor cantidad de alumnos participantes es : ', nombre2);       
end.