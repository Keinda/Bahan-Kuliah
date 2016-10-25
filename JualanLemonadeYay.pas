program JualanLemonadeYay;
var
	harga, n, jumlah, pil, time, stokgula, stoklemon, stokgelas, stoksedotan, restockvalue : longint;
	key : char;

procedure Sale(n : longint; var harga, jumlah : longint);
var
	duit : longint;
begin
	harga := 5000;
	jumlah := n*harga;
	writeln('Anda harus bayar sebesar Rp ',jumlah);
	write('Anda akan bayar dengan uang : Rp ');
	readln(duit);
	duit := duit - jumlah;
	writeln('Kembaliannya adalah Rp ',duit);
end;

procedure Production(n, stokgula, stoklemon, stokgelas, stoksedotan, restockvalue : longint);
var
	gula, lemon, gelas, sedotan, restockgula, restocklemon, restockgelas, restocksedotan : longint;
begin
	{Deklarasi Awal}
	gula := 0;
	lemon := 0;
	gelas := 0;
	sedotan := 0;
	restockgula := 0;
	restocklemon := 0;
	restockgelas := 0;
	restocksedotan := 0;
	{Data Bahan / Produksi}
	gula := 1*n;
	lemon := 1*n;
	gelas := 1*n;
	sedotan := 1*n;
	{Store Checking and Restocking}
	stokgula := stokgula - gula;
	if stokgula < 1 then
	begin
		restockgula := 10000;
		stokgula := 100 + stokgula;
	end else stokgula := 0 + stokgula;
	stoklemon := stoklemon - lemon;
	if stoklemon < 1 then
	begin
		restocklemon := 400000;
		stoklemon := 100 + stoklemon;
	end else stoklemon := 0 + stoklemon;
	stokgelas := stokgelas - gelas;
	if stokgelas < 1 then
	begin
		restockgelas := 50000;
		stokgelas := 100 + stokgelas;
	end else stokgelas := 0 + stoklemon;
	stoksedotan := stoksedotan - sedotan;
	if stoksedotan < 1 then
	begin
		restocksedotan := 10000;
		stoksedotan := 100 + stoksedotan;
	end else stoksedotan := 0 + stoksedotan;
	restockvalue := restockvalue+restocklemon+restockgula+restockgelas+restocksedotan;
	writeln('Stok Bahan Lemonade Yay');
	writeln('Stok Gula : ', stokgula);
	writeln('Stok Lemon : ', stoklemon);
	writeln('Stok Gelas : ', stokgelas);
	writeln('Stok Sedotan : ', stoksedotan);
	writeln('Pengeluaran Restock = Rp ', restockvalue);
end;


procedure Payroll(time : longint);
var
	perjam, gaji : longint;
begin
	perjam := 20000;
	gaji := time*perjam;
	writeln('Hari ini anda mendapatkan pendapatan sebesar Rp ',gaji); {Pay Employee}
end;

{ALGORITMA UTAMA}
begin
		writeln('Stok hari ini :');
		write('Stok Gula : '); readln(stokgula);
		write('Stok Lemon : '); readln(stoklemon);
		write('Stok Gelas : '); readln(stokgelas);
		write('Stok Sedotan : '); readln(stoksedotan);
		restockvalue := 0;
		time := 0;
		writeln('------------------------------------------------');
		writeln('--------------JUALAN LEMONADE YAY---------------');
		writeln('------------------------------------------------');
		writeln('1. Ada yang mau beli nih...');
		writeln('2. Udahan ah jualannya...');
		write('Pilih yang mana : ');
		readln(pil);
		if pil = 1 then
		begin
			while pil=1 do
			begin
				write('Mau beli berapa? ');
				readln(n);
				Sale(n, harga, jumlah);
				time := time + 1;
				Production(n, stokgula, stoklemon, stokgelas, stoksedotan, restockvalue);
				writeln('----------------------------------------------');
				writeln('Menu Awal :');
				writeln('1. Ada yang mau beli nih...');
				writeln('2. Udahan ah jualannya...');
				write('Pilih yang mana : ');
				readln(pil);
			end;
		end;
		Payroll(time);
		writeln('Press any key to continue...');
		readln(key);
end.
	
