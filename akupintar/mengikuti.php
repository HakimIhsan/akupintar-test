<html>

<head>
	<title>API Mengikuti</title>
</head>

<body>
	<?php
	// INCLUDE KONEKSI KE DATABASE
	include_once("config.php");

	if (isset($_POST['Submit'])) {
		$id_pengguna = mysqli_real_escape_string($mysqli, $_POST['id_pengguna']);
		$id_kampus = mysqli_real_escape_string($mysqli, $_POST['id_kampus']);


		// CEK DATA TIDAK BOLEH KOSONG
		if (empty($id_pengguna) || empty($id_kampus)) {

			if (empty($id_pengguna)) {
				echo "<font color='red'>Kolom pengguna tidak boleh kosong.</font><br/>";
			}

			if (empty($id_kampus)) {
				echo "<font color='red'>Kolom kampus tidak boleh kosong.</font><br/>";
			}

			// KEMBALI KE HALAMAN SEBELUMNYA
			echo "<br/><a href='javascript:self.history.back();'>Kembali</a>";
		} else {
			// JIKA SEMUANYA TIDAK KOSONG
			
			// MEMASUKAN DATA DATA KE DALAM DATABASE
			$result = mysqli_query($mysqli, "INSERT INTO mengikuti(id_pengguna,id_kampus) VALUES('$id_pengguna', '$id_kampus')");

			// MENAMPILKAN PESAN BERHASIL
			echo "<font color='green'>Data Berhasil ditambahkan.";
		}
	}
	?>
</body>

</html>
