program ocho;
var
	codigo:integer;
	precioA:real;
	precioN:real;
begin
	codigo:=0;
	precioA:=0;
	precioN:=0;
	repeat
		read(codigo);
		read(precioA);
		read(precioN);
		if(precioN > precioA + (precioA*0.10))then
			write('el producto supera el 10%');
		if(precioN < precioA + (precioA*0.10))then
			write('el precio no supera el 10%');
	until(codigo = 32767);
end.
