Program PenugasanPAlpro11;
type
	data = record
		nim	: string[9];
		nama : string[25];
		kelas : string[5];
		tugas,uts,uas,praktikum : byte;
		NA : real;
		grade : char;
	end;
	data_mahasiswa = array[1..50] of data;
	
	function NAkhir(a,b,c,d:integer):real; //Menghitung Nilai Akhir
    begin
        Nakhir:=(a+3*(b+c+d))/10;
    end;
	
	function grading(a:real):char; //Menentukan Grade A/B/C/..
    var hasil:char;
    begin
        case trunc(a) of
             0..19  : hasil:='E';
            20..39  : hasil:='D';
            40..59  : hasil:='C';
            60..79  : hasil:='B';
            80..100 : hasil:='A';
        end;
        grading:=hasil;
    end;

	procedure InputData(var list:data_mahasiswa;awal,akhir:integer); //Input Data
    var i:integer;
    begin
        for i:=awal to akhir do
        begin
			writeln(' ===================');
            writeln(' Mahasiswa ke-',i,': ');
            with list[i] do
            begin
                write(' NIM       : ');readln(NIM);
                write(' Nama      : ');readln(Nama);
				write(' Kelas     : ');readln(kelas);
                write(' Tugas     : ');readln(Tugas);
                write(' UTS       : ');readln(UTS);
                write(' UAS       : ');readln(UAS);
                write(' Praktikum : ');readln(Praktikum);
                NA:=Nakhir(Tugas,UTS,UAS,Praktikum);
				grade:=grading(NA);
            end;
        end;
		writeln(' ===================');
    end;
	
	function maksimum(list : data_mahasiswa;opsi,n:integer):integer; //Menentukan Maks
	var i,maks,index:integer;
		maksNA:real;
	begin
		case opsi of
		1 : begin
			maks:=list[1].uts;
			index:=1;
			for i:=2 to n do
				if list[i].uts > maks then 
				begin
					maks:= list[i].uts ;
					index:=i;
				end;
			maksimum:=index;
			end;
		2 : begin
			maks:=list[1].uas;
			index:=1;
			for i:=2 to n do
				if list[i].uas > maks then 
				begin
					maks:= list[i].uas ;
					index:=i;
				end;
			maksimum:=index;
			end;
		3 : begin
			maksNA:=list[1].NA;
			index:=1;
			for i:=2 to n do
				if list[i].NA > maksNA then 
				begin
					maksNA:= list[i].NA ;
					index:=i;
				end;
			maksimum:=index;
			end;
		end;
	end;
	
	
	function minimum(list : data_mahasiswa;opsi,n:integer):integer; //Menentukan Min
	var i,min,index:integer;
		minNA:real;
	begin
		case opsi of
		1 : begin
			min:=list[1].uts;
			index:=1;
			for i:=2 to n do
				if list[i].uts < min then 
				begin
					min:= list[i].uts ;
					index:=i;
				end;
			minimum:=index;
			end;
		2 : begin
			min:=list[1].uas;
			index:=1;
			for i:=2 to n do
				if list[i].uas < min then 
				begin
					min:= list[i].uas ;
					index:=i;
				end;
			minimum:=index;
			end;
		3 : begin
			minNA:=list[1].NA;
			index:=1;
			for i:=2 to n do
				if list[i].NA < minNA then 
				begin
					minNA:= list[i].NA ;
					index:=i;
				end;
			minimum:=index;
			end;
		end;
	end;
	
	function rerata(var list:data_mahasiswa;opsi,n:integer):real; //Menentukan Rerata
	var i,total:integer;
		totalNA:real;
	begin
		case opsi of
		1 : begin
				total:=0;
				for i:=1 to n do
				begin
					total:=total+list[i].tugas;
				end;
				rerata:=total/n;
			end;
		2 : begin
				total:=0;
				for i:=1 to n do
				begin
					total:=total+list[i].uts;
				end;
				rerata:=total/n;
			end;
		3 : begin
				total:=0;
				for i:=1 to n do
				begin
					total:=total+list[i].uas;
				end;
				rerata:=total/n;
			end;
		4 : begin
				totalNA:=0;
				for i:=1 to n do
				begin
					totalNA:=totalNA+list[i].NA;
				end;
				rerata:=totalNA/n;
			end;
		end;
	end;
	
	
	procedure output(list:data_mahasiswa;n:integer); //Output Utama
    var i:integer;
    begin
		writeln(' ============================================================================================== ');
        writeln(' No ':3,' NIM ':10,' Nama ':20,' Kelas ':8,' Tugas ':8,' UTS ':8,' UAS ':8,' Praktikum ':12,' NA ':8,' Grade ':8);
        writeln(' ============================================================================================== ');
 	    for i:=1 to n do
        begin
            write(i:3);
            with list[i] do
                write(NIM:10,Nama:20,Kelas:8,Tugas:8,UTS:8,UAS:8,Praktikum:12,NA:8:2,Grade:8);
            writeln;
        end;
    end;

	procedure outputm(var list:data_mahasiswa;n : integer); //Output Maks&Min
	begin
		writeln(' ============================================================================================== ');
		writeln(' No ':3,' NIM ':10,' Nama ':20,' Kelas ':8,' Tugas ':8,' UTS ':8,' UAS ':8,' Praktikum ':12,' NA ':8,' Grade ':8);
		writeln(' ============================================================================================== ');
		write(n:3);
		with list[n] do
		write(NIM:10,Nama:20,Kelas:8,Tugas:8,UTS:8,UAS:8,Praktikum:12,NA:8:2,Grade:8);
		writeln;
	end;
var
	mahasiswa : data_mahasiswa;
	j,n,indeks,jumlah : integer;
	pilihan1 : integer;
	pilihan2,pilihan3 : char;
	
	
begin
	
	writeln(' ========================================');
	writeln(' Selamat Datang di Progam Entri Mahasiswa');
	writeln(' 1. Input Data ');
	writeln(' 2. Tampilkan Data ');
	writeln(' 3. Nilai Alpro Terbesar ');
	writeln(' 4. Nilai Alpro Terkecil ');
	writeln(' 5. Rata - Rata Nilai Alpro ');
	writeln(' 6. Keluar ');
	writeln(' ========================================');
	j:=1;
	repeat
	write(' Masukkan Menu : '); readln(pilihan1);
	case pilihan1 of
	1 :begin
			write(' Jumlah Mahasiswa : '); readln(n);
			if j=1 then
				begin
					InputData(mahasiswa,1,n);
					jumlah:=0;
				end
			else
				InputData(mahasiswa,jumlah+1,jumlah+n);
			jumlah:=jumlah+n;
			j:=j+1;
			writeln(' Tekan <enter> untuk lanjut ');
			readln;
		 end;
	2 :begin
			if jumlah=0 then 
				writeln(' Data masih kosong. Silakan input data terlebih dahulu.')
			else
			begin
				writeln(' TABEL DATA NILAI ALPRO ');
				output(mahasiswa,jumlah);
				writeln(' Tekan <enter> untuk lanjut ');
				readln;
			end;
		 end;
	3 :begin
			if jumlah=0 then 
				writeln(' Data masih kosong. Silakan input data terlebih dahulu.')
			else
			begin
				writeln(' Nilai Alpro Terbesar ');
				writeln(' a. Nilai UTS ');
				writeln(' b. Nilai UAS ');
				writeln(' c. Nilai Akhir ');
				write(' Masukkan Pilihan : '); readln(pilihan2);
				
				case upcase(pilihan2) of
				'A' :begin
						indeks:=maksimum(mahasiswa,1,jumlah);
						outputm(mahasiswa,indeks);
					end;
				'B' :begin
						indeks:=maksimum(mahasiswa,2,jumlah);
						outputm(mahasiswa,indeks);
					end;
				'C' :begin
						indeks:=maksimum(mahasiswa,3,jumlah);
						outputm(mahasiswa,indeks);
					end;
				end;
				writeln(' Tekan <enter> untuk lanjut');
				readln;
			end;
		 end;
	4 :begin
			if jumlah=0 then 
				writeln(' Data masih kosong. Silakan input data terlebih dahulu.')
			else
			begin
				writeln(' Nilai Alpro Terkecil ');
				writeln(' a. Nilai UTS ');
				writeln(' b. Nilai UAS ');
				writeln(' c. Nilai Akhir ');
				write(' Masukkan Pilihan : '); readln(pilihan3);
				
				case upcase(pilihan3) of
				'A' :begin
						indeks:=minimum(mahasiswa,1,jumlah);
						outputm(mahasiswa,indeks);
					end;
				'B' :begin
						indeks:=minimum(mahasiswa,2,jumlah);
						outputm(mahasiswa,indeks);
					end;
				'C' :begin
						indeks:=minimum(mahasiswa,3,jumlah);
						outputm(mahasiswa,indeks);
					end;
				end;
				writeln(' Tekan <enter> untuk lanjut');
				readln;
			end;
		 end;
	5 :begin
			if jumlah=0 then 
				writeln(' Data masih kosong. Silakan input data terlebih dahulu.')
			else
			begin
				writeln(' Rerata Tugas : ',rerata(mahasiswa,1,jumlah):0:2);
				writeln(' Rerata UTS   : ',rerata(Mahasiswa,2,jumlah):0:2);
				writeln(' Rerata UAS   : ',rerata(Mahasiswa,3,jumlah):0:2);
				writeln(' Rerata NA    : ',rerata(Mahasiswa,4,jumlah):0:2);
				writeln(' Tekan <enter> untuk lanjut');
				readln;
			end;
		 end;
	end;
	until pilihan1 =6;
	readln;
end.