program num_hex;

(* convert from hex to dec *)

(* ln(x^b) = b.ln(x) *)
(* e^ln(x) = x *)

function pow(a, b : real) : real;
begin
	pow := exp(b * ln(a));
end;

var
	a : array[1 .. 3] of char;
	td, d : integer;
	i : integer;

begin
	write('Insert a positive hexadecimal 3 digit number: ');
	readln(a);	

	td := 0;
	
	for i := 1 to 3 do begin 
		d := 0;
		case a[i] of
			'0' .. '9': d := ord(a[i]) - ord('0');
			'A' .. 'F': d := ord(a[i]) - ord('A') + 10;
			'a' .. 'f': d := ord(a[i]) - ord('a') + 10;
		end;
		td := td + d * trunc(pow(16, 3 - i)); 
	end;
	
	writeln('Hexadecimal ', a, ' = Decimal ', td);
end.
