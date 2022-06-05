Program Algoritma_Warshall;
const z = 1/0;

type
	larik=array[1..20,1..20] of real;
var
	W:larik;
	
	procedure input_matriks(a:integer);
	var i,j:integer;
	begin
		for i:=1 to a do
			for j:=1 to a do 
			begin
				write(' W[',i,',',j,'] = ');
				readln(W[i,j]);
			end;
	end;
	
	procedure cetak_matriks(a:integer);
	var i,j:integer;
	begin
		for i:=1 to a do
		begin
			for j:=1 to a do
				write(W[i,j]:6:0);
			writeln;
		end;
	end;
	
	procedure infinite(n:integer);
	var i,j:integer;
	begin
		for i:=1 to n do
			for j:=1 to n do
				if W[i,j]=0 then W[i,j]:=z;
	end;
	
var
	i,j,k,n:integer;
	
begin
	write(' Masukkan jumlah simpul : ');
	readln(n);
	
	writeln(' Masukkan jarak/bobot setiap simpul ');
	input_matriks(n);
	infinite(n);
	
	for k:=1 to n do
		for i:=1 to n do
			for j:=1 to n do
				if W[i,j] > W[i,k] + W[k,j] then W[i,j]:= W[i,k] + W[k,j];
	cetak_matriks(n);
	readln;
end.