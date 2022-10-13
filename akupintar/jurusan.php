<?php
// INCLUDE KONEKSI KE DATABASE
include_once("config.php");
if (isset($_POST['update'])) {
	$id_kampus = mysqli_real_escape_string($mysqli, $_POST['id_kampus']);
	$result = mysqli_query($mysqli, "SELECT id_jurusan FROM data_kampus WHERE id_kampus='$id_kampus'");
}
else {
	$result = mysqli_query($mysqli, "SELECT id_jurusan FROM data_kampus WHERE id_kampus='1'");
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
				<td>jurusan</td>
			</tr>
			<?php

			while ($res = mysqli_fetch_array($result)) {
				echo "<tr>";
				echo "<td>" . $res['id_jurusan'] . "</td></tr>";
			}

			?>
		</table>
		
		<form name="form1" method="post" action="jurusan.php" enctype="multipart/form-data">
			<table border="0">
				<tr>
					<td>id_kampus</td>
					<td><input type="text" name="id_kampus"></td>
				</tr>
				<tr>
					<td><input type="submit" name="update" value="Tampilkan"></td>
				</tr>
			</table>
		</form>
	</center>
</body>

</html>
