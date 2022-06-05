Program Sequential1; //Data tidak terurut tanpa duplikasi

Type Larik = array [1..100] of integer;

	Procedure SequentialSearch1(A:Larik; N:integer; X:integer;  var Y:integer);
	Var
		i:integer;
	Begin
		{i:=1;
		while (i<N) and (A[i] <> X) do i:= i + 1;
		if (A[i] <> X) then Y:=0
		else Y:=i;}
		for i:=1 to n do
		begin
			if (A[i] = X) then
			begin
				Y:=i;
				break;
			end
			else Y:=0
		end;
	End;

var data:larik;
	n,cari,hasil:integer;

begin
	n:=5;
	data[1]:=31; data[2]:=22; data[3]:=17; data[4]:=19; data[5]:=26;
	cari:=16;
	SequentialSearch1(data,n,cari,hasil);
	if hasil=0 then 
		writeln(' Data tidak ditemukan')
	else	
		writeln(' Data ditemukan pada indeks ke- ',hasil);
	readln;
end.
