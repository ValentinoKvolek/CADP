program seis;
var
	legajo,cantA,cantM,destacado:integer;
	promedio:real;
begin
	legajo:=0;
	cantA:=0;
	cantM:=0;
	destacado:=0;
	promedio:=0;
	repeat
		write('ingrese legajo');
		read(legajo);
		write('ingrese promiedo');
		read(promedio);
		if(promedio>6.5) then
		cantM:= cantM +1;
		if(promedio>8.5) and (legajo<2500)then	
		destacado:= destacado +1;
		cantA:=cantA + 1;
	until(legajo = -1);
	write(cantA);
	write(cantM);
	write(destacado);
	end.
