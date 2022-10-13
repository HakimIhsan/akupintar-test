<?php
// INCLUDE KONEKSI KE DATABASE
include_once("config.php");
if (isset($_POST['update'])) {
	$nama_kampus = mysqli_real_escape_string($mysqli, $_POST['nama_kampus']);
	$result = mysqli_query($mysqli, "SELECT nama_kampus FROM kampus WHERE nama_kampus='$nama_kampus'");
}
else {
	$result = mysqli_query($mysqli, "SELECT nama_kampus FROM kampus");
}
?>

<html>

<head>
	<title>Aku Pintar</title>
</head>

<body>
	<center>

		<table width='80%' border=0>

			<tr bgcolor='#CCCCCC'>
				<td>kampus</td>
			</tr>
			<?php

			while ($res = mysqli_fetch_array($result)) {
				echo "<tr>";
				echo "<td>" . $res['nama_kampus'] . "</td></tr>";
			}

			?>
		</table>
		
		<form name="form1" method="post" action="kampus.php" enctype="multipart/form-data">
			<table border="0">
				<tr>
					<td>nama_kampus</td>
					<td><input type="text" name="nama_kampus"></td>
				</tr>
				<tr>
					<td><input type="submit" name="update" value="Cari"></td>
				</tr>
			</table>
		</form>
	</center>
</body>

</html>
