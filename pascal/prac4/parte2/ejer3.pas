program ejer3prac4_2;
const

    dimf = 200;

type
    mes = set of 1..31;


    infoViajes = record
        diaMes: mes;
        montoDinero:real;
        distanciaRecorrida:real;
    end;

    
    vector = array [1.. dimf] of infoViajes;


{a. Realizar un programa que lea y almacene la información de los viajes (a lo sumo 200). La lectura finaliza
cuando se ingresa una distancia recorrida igual a 0 km, que no debe procesarse.}

procedure cargarVector(var v:vector; var diml:integer);
var
i:integer;
begin
    i:=1;
    diml:=1;
    writeln('ingrese la distancia recorrida: ');
    readln(v[i].distanciaRecorrida);
    while(v[i].distanciaRecorrida <> 0) and (diml<=dimf) do 
    begin
            writeln('ingrese el dia del mes ');
            readln(v[i].diaMes);
            writeln('ingrese monto de dinero ');
            readln(v[i].montoDinero);
            i:= i +1;
            writeln('ingrese la distancia recorrida: ');
            readln(v[i].distaciaRecorrida);
            diml:= diml +1;
    end;
end;


{b. Realizar un módulo que reciba el vector generado en a) e informe:
- El monto promedio transportado de los viajes realizados
- La distancia recorrida y el día del mes en que se realizó el viaje que transportó menos dinero.
- La cantidad de viajes realizados cada día del mes.}

procedure informes(v:vector; diml:integer);
var
promedioMonto:real;
totalMontoViajes:real;
menosDinero:real;
distanciaMenos:real;
diaMenos:integer;
cantViajes:integer;
mesActual:integer;
i:integer;
begin
totalMontoViajes:=0;
menosDinero:= 9999;
cantViajes:= 0;
diaActual:=v[1].diaMes;
    for i:=1 to diml do 
    begin
    
        totalMontoViajes:= totalMontoViajes + v[i].montoDinero;
        if(v[i].montoDinero <= menosDinero) then begin
            menosDinero:= v[i].montoDinero;
            distanciaMenos:= v[i].distanciaRecorrida;
            diaMenos:= v[i].diaMes;

        while (v[i].diaMes = diaActual) do begin
         cantViajes:= cantViajes + 1;
        end;
        writeln('la cantidad de viajes del dia ' diaActual, ' fue de : ', cantViajes);
        cantViajes:=0;
        diaActual:=v[i].diaMes;         

    end;

    promedioMonto:= totalMontoViajes/diml;
    writeln('El monto promedio transportado de los viajes realizados es de :  ', promedioMonto);
    writeln('La distancia recorrida y el día del mes en que se realizó el viaje que transportó menos dinero son: ', distanciaMenos, diaMenos);

end;


 {c. Realizar un módulo que reciba el vector generado en a) y elimine todos los viajes cuya distancia
recorrida sea igual a 100 km}

procedure eliminar (var v:vector; var diml:integer);
var
i:integer;
i2:integer;
pos:integer;
begin
    for i:=1 to diml do begin
        if(v[i].distanciaRecorrida = 100) then begin
            pos:=i;
            for i2:=pos to (diml - 1) do
                a[i]:= a[i+1];
            end;
            diml:=diml - 1;
        end;
    end; 
end;

var
v:vector;
diml:integer;
begin
    cargarVector(v,diml);
    informes(v,diml);
    eliminar(v,diml);
end.
