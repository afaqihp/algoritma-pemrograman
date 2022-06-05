Program Sekuensial3;//data tidak terurut dan ada duplikasi

Type Larik = array [1..100] of integer;
var hasil:Larik;
    jumlah:integer;

    Procedure SequentialSearch3(A:Larik; N:integer; X:integer);
    Var i:integer;
    Begin
	    i:=0; jumlah:=0;
	    while (i<N) do
	    Begin
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
	
Begin
    n:=5;
    data[1]:=31;data[2]:=26;data[3]:=17; data[4]:=19; data[5]:=26;
    cari:=26;
    SequentialSearch3(data,n,cari);
    if jumlah=0 then writeln(' Data tidak ditemukan')
    else
    Begin
        write('Data ditemukan pada indeks: ');
        for i:=1 to jumlah do
            write(hasil[i]:2);
    end;
	readln;
End.
