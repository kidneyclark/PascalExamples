program hhmm;
(* time = 1122 -> 11 hours y 22 minutes  *)

var
	time_1, time_2, time_f : Integer;
	hour_1, hour_2, hour_f : Integer;
	min_1, min_2, min_f : Integer;
	day_f : Integer;
begin
	read(time_1, time_2);

	if (time_1 < 0) or (time_2 < 0) then
	begin
		writeln('Choose a positive time.');
		exit;
	end;

	min_1 := time_1 mod 100;
	hour_1 := (time_1 - min_1) div 100; 

	min_2 := time_2 mod 100;
	hour_2 := (time_2 - min_2) div 100; 

	min_f := min_1 + min_2;
	hour_f := min_f div 60;
	min_f := min_f mod 60;

	hour_f := hour_f + hour_1 + hour_2;
	day_f := hour_f div 24;
	hour_f := hour_f mod 24;

	time_f := hour_f * 100 + min_f;

	writeln(day_f, ' ', time_f);
end.
