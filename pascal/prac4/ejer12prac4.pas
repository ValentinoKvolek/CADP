program ejer12prac4;
const 
    dimf = 53;
type
    galaxias = record
        nombre:string;
        tipo:string;
        masa:real;
        distancia:real;
    end;


    vector = array [1..dimf] to galaxias;

procedure cargarVector (var v:vector);
var
i:integer;
begin

    for i:=1 to dimf do begin
        writeln('ingresar el nombre de la galaxia: ');
        readln(v[i}.nombre);
        writeln('ingresar el tipo de galaxia :');
        readln(v[i}.tipo);
        writeln('ingresar la masa en kg');
        readln(v[i}.masa);
        writeln('íngresar la distancia');
        readln(v[i}.distancia);
    end;
    
end;

{a. La cantidad de galaxias de cada tipo.}

procedure cantGalaxias (v:vector); 
var
i:integer;
tipo1,tipo2,tipo3,tipo4:integer;
begin
tipo1:=0;
tipo2:=0;
tipo3:=0;
tipo4:=0;
    for i:=1 to dimf do begin
        if(v[i].tipo = "eliptica") then
            tipo1:=tipo1+1;
        if(v[i].tipo = "espiral") then
            tipo2:=tipo2+1;
        if(v[i].tipo = "lenticular") then
            tipo3:=tipo3+1;
        if(v[i].tipo = "irregular") then
            tipo4:=tipo4+1;    
    end;
    writeln('la cantidad de galaxias eliptica es de : ', tipo1);
    writeln('la cantidad de galaxias espiral es de : ', tipo2);
    writeln('la cantidad de galaxias lenticular es de : ', tipo3);
    writeln('la cantidad de galaxias irregular es de : ', tipo4);
end;

{b. La masa total acumulada de las 3 galaxias principales (la Vía Láctea, Andrómeda y Triángulo) y el
porcentaje que esto representa respecto a la masa de todas las galaxias.}

procedure masaTotal (v:vector);
var
i:integer;
masaTotal:integer;
masa3principales:integer;
porcentaje: real;
begin
porcentaje:=0;
masaTotal:=0;
masa3principales:=0;
    for i:=1 to dimf do begin
         if(v[i].nombre = 'via lactea' ) and (v[i].nombre = 'andromeda' ) and (v[i].nombre = 'triangulo' ) do 
            masa3principales:= masa3principales + v[i].masa;
        masaTotal:= masaTotal + v[i].masa;
    end;
    porcentaje:= masa3principales/masaTotal;
    writeln('la masa total de las 3 galaxias principales es de : ', masa3principales);
    writeln('el porcentaje es de : ', porcentaje);
end;

{c. La cantidad de galaxias no irregulares que se encuentran a menos de 1000 pc.}

procedure Menosde1000pc(v:vector);
var
i:integer;
cantmenos1000:integer;
begin
cantmenos1000:=0;
    for i:=1 to dimf do begin
        if(v[i].tipo <> 'irregular') and (v[i].distancia <1000) then
            cantmenos1000:= cantmenos1000 +1;
    end;
    writeln('las cantidad de galaxias no irregulares a manos de 1000 pc son de : ', cantmenos1000);
end;

d. El nombre de las dos galaxias con mayor masa y el de las dos galaxias con menor masa.

procedure nombregalaxias(v:vector);
var
i:integer;
max1,max2:real;
menos1,menos2:real;
nombremax1,nombremax2:string;
nombremin1,nombremin1:string;
begin
max1:=-999;
max2:=-999;
menos1:=999;
menos2:=999;
    for i:=1 to dimf do begin


        if( v[i].masa > max1) then begin
        max2:=max1;
        nombremax2:nombremax1;
        max1:=v[i].masa;
        nombremax1:= v[i].nombre;
        end
        else if (v[i].masa > max2) then begin
            max2:=v[i].masa;
            nombremax2:= v[i].nombre;
        end;


        if( v[i].masa < min1) then begin
        min2:=min1;
        nombremin2:nombremin1;
        min1:=v[i].masa;
        nombremin1:= v[i].nombre;
        else if (v[i].masa < min2) then begin
            min2:=v[i].masa;
            nombremin2:= v[i].nombre;
        end;


    end;
    writeln('los nombres de las dos galaxias con mayor masa son:', nombremax1,nombremax2);
    writeln('los nombres de las dos galaxias con menor masa son:', nombremin1,nombremin2);
end;

var
v:vector;
begin
    cargarVector(v);
    cantGalaxias(v);
    masaTotal(v);
    Menosde1000pc(v);
    nombregalaxias(v);
end;     


