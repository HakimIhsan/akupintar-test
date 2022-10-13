#SImple API Untuk :
1. pencarian kampus (kampus.php)
2. list jurusan pada kampus (jurusan.php)
3. mengikuti kampus (mengikuti.html)

#Cara penggunaan :
1. API pencarian kampus :
	- buka melalui web server (ex. xampp) localhost/kampus.php
	- akan tampil seluruh data nama kampus
	- masukkan di kolom pencarian nama kampus yang dicari
	- klik cari
	- akan keluar nama kampus yang dibutuhkan
	
2. API list jurusan pada kampus :
	- buka melalui web server localhost/jurusan.php
	- masukkan pada menu pencarian id kampus
	- klik tampilkan
	- akan muncul semua id jurusan yang ada dalam kampus terkait
	
3. API mengikuti kampus :
	- buka melalui web server localhost/mengikuti.php
	- masukkan id pengguna
	- masukkan id kampus
	- klik ikuti
	
#Catatan :
- API ini dibuat dengan sederhana tanpa mempertimbangkan aspek UI
- database yang digunakan adalah mysql dengan struktur sesuai gambar arsitekturdata.png
- sql dapat didownload pada file akupintar.sql