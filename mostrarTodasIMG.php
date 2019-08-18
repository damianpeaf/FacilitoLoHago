<?php

	include 'conexion.php';
	include 'verificacionU.php';
	$idV = $_GET["idV"];

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Trabajos realizados </title>
	<link rel="stylesheet" href="css/estilo8.css">
</head>
<body>

	<header>
		<?php include 'Encabezado2.php'; ?>;
	</header>
<main>
	
	<?php 

	$consulta = mysql_query("SELECT * from trabajosRealizados where idV = '$idV' ", $cn); 
				$numRows = mysql_num_rows($consulta);


				if ($numRows > 0) {
				

				for ($i=0; $i < $numRows; $i++) {  $imagen = mysql_result($consulta, $i, "imagen");	$descripcionImg = mysql_result($consulta, $i, "descripcion") ?>
				<img src="files/img/trabajos/<?php echo $imagen ?>" >
				<h4 id="descrip2">Descripcion: <?php echo $descripcionImg; ?></h4>
		<?php }}
		?>
</main>
</body>
</html>