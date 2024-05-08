program tres;
var
	input, max1, max2, max3: integer;
begin
	max1:=-32768;
	max2:=-32768;
	max3:=-32768;	

	writeln('Introduzca tres numeros para mostrarlos en orden descendente:');
	readln(max1);
	while (max3 = -32768) do begin
		readln(input);
		if (input > max1) then begin
			max3:= max2;
			max2:= max1;
			max1:= input;
		end else if (input > max2) then begin
			max3:= max2;
			max2:= input; 
		end else max3:= input;
	end;

	writeln(max1, ', ', max2, ', ', max3, '.');
end.
-2147483647 