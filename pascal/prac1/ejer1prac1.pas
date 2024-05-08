program uno;
var
	num1,num2:integer;
begin
	num1:=0;
	num2:= 0;
	read(num1);
	read(num2);
	if(num1>num2) then 
		write('el numero 1 es el mayor');
	if (num2>num1) then 
		write('el numero 2 es el mayor');
	if(num1=num2) then
		write('los numeros son iguales');
end.
