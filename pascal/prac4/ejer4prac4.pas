program ejer4prac4;
type
    dimF:=100
    vector = array [1..dimF] of integer;

function Posicion(v:vector; numero:integer):integer;
var
i:integer;
pos:integer;
begin
    i:=1;
    while (v[i] <> v[x]) and (i <= dimF) and then begin
        i:= i+1;
    end;
    if (i = dimF) do 
        pos:= -1;
    pos:= i;
Posicion:= pos;
end;

procedure Intercambio(var v:vector; x:integer; y:integer);
pos:integer;
begin
    pos:= v[x];
    v[y]:= v[x];
    v[x]:= pos;
end;

function SumaVector(v:vector);
var
i:integer;
suma:integer;
begin
    suma:=0;
    for i:=1 to dimF do
        suma:= suma + v[i];
    SumaVector:=suma;
end;

function Promedio(v:vector):real;
var
prom:real;
begin
    prom:=0;
    Promedio:=(SumaVector(v)/100);
end;

function elementoMaximo(v:vector):integer;
var
max:integer;
i:integer;
begin
max:=-99;
    for i:=1 to dimF do begin
        if (v[i]>max) then 
            max:= v[i];
    end;
elementoMaximo:= max;
end;

function elementoMinimo (v:vector): integer;
var
min:integer;
begin
min:=999;
    for i:=1 to dimF do begin
        if (v[i]<min) then 
            min:= v[i];
    end;
    elementoMinimo:=min;
end;



