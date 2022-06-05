Program Sequential2; //Data terurut tanpa duplikasi

Type Larik = array [1..100] of integer; //Algoritma bisa sama kayak data tidak terurut

var hasil:larik;
	jumlah:integer;

	Procedure SequentialSearch2(A:Larik; N:integer; X:integer);
	Var 
		i:integer;
	Begin
		i:=0;
		jumlah:=0;
		while (i<N) do 
		begin
			i:= i + 1;
			if (A[i] = X) then 
	        begin 
	            jumlah:=jumlah+1;
	            hasil[jumlah]:=i;
	        end;
		end;
	End;

var data:larik;
	i,n,cari:integer;

begin
	n:=5;
	data[5]:=28; data[3]:=18; data[1]:=17; data[2]:=18; data[4]:=19;
	cari:=18;
	SequentialSearch2(data,n,cari);
	if jumlah=0 then 
		writeln(' Data tidak ditemukan')
	else
    Begin
        write('Data ditemukan pada indeks: ');
        for i:=1 to jumlah do
            write(hasil[i]:2);
    end;
	readln;
end.
