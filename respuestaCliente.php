<?php 

	include 'conexion.php';
	include 'verificacionU.php';

	$idConsulta = $_GET["idConsulta"];

	$sql0 = mysql_query("SELECT * FROM consulta where idConsulta='$idConsulta' ", $cn);

	$estado = mysql_result($sql0, 0, "estado");

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Acciones</title>
	<link rel="stylesheet" href="css/estilo11.css">
</head>
<body>
	<?php
	include 'Encabezado2.php';

		if ($estado == 1) {	?>

		<form action="proc1Cliente.php" method="post">
			<table>
				<tr>
					<td>Decide si o no</td>
				</tr>
				<tr>
					<td>
						SI
					</td>
					<td>
						<input type="radio" name="desicion" value="0">
					</td>
				</tr>
				<tr>
					<td>
						NO
					</td>
					<td>
							<input type="radio" name="desicion" value="1">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="responder" required="">
					</td>
				</tr>
				<tr>
					<td>
						Si crees que no hay consistencia en los datos proveidos por el vendedor puedes cancelar la continuacion del trabajo 
					</td>
				</tr>
			</table>
			<input type="hidden" name="idConsulta" value="<?php echo $idConsulta  ?>">
		</form>	
	<?php } ?>


<?php

		if ($estado == 3 || $estado == 4) {	?>

		<form action="proc2Cliente.php" method="post">
			<table>
				<tr>
					<td>Califica el servicio</td>
				</tr>
				<tr>
					<td>
						de 1 a 5, que calificacion le das a el vendedor
					</td>
					<td>
						<input type="text" name="valoracion"> 
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Finalizar trabajo" required="">
					</td>
				</tr>
			</table>
			<input type="hidden" name="idConsulta" value="<?php echo $idConsulta  ?>">
		</form>	
	<?php } ?>



	<?php

		if ($estado == 5) {	
	
			$sqlBorrar = mysql_query("UPDATE consulta set idC = null where idConsulta = '$idConsulta' ", $cn);

			if ($sqlBorrar) {
				echo "<script>
                alert('Consulta borrada');
                window.location= 'notificaciones.php'
    </script>";
			}else{

				echo mysql_error();
			}


	 } ?>

</body>
</html>