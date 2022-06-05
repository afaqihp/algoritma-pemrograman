Program Sequential2; //Data terurut tanpa duplikasi

Type Larik = array [1..100] of integer; //Algoritma bisa sama kayak data tidak terurut

	Procedure SequentialSearch2(A:Larik; N:integer; X:integer;  var Y:integer);
	Var 
		i:integer;
	Begin
		i:=1;
		while (i<N) and (A[i] < X) do 
		begin
			writeln(i); //ngeliat berapa kali perulangan
			i:= i + 1;
		end;
		if (A[i] <> X) then Y:=0
		else Y:=i;
	End;

var data:larik;
	n,cari,hasil:integer;

begin
	n:=5;
	data[5]:=31; data[3]:=22; data[1]:=17; data[2]:=19; data[4]:=26;
	cari:=18;
	SequentialSearch2(data,n,cari,hasil);
	if hasil=0 then 
		writeln(' Data tidak ditemukan')
	else	
		writeln(' Data ditemukan pada indeks ke- ',hasil);
	readln;
end.
