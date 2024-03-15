program relerror;

var
	value : real;
	real_value : real;
	rel_error : real;
begin
	read(value, real_value);

	rel_error := abs(value - real_value) / real_value;

	writeln('Value = ', value);
	writeln('Real value = ', real_value);
	writeln('Relative error = ', rel_error);
end.
