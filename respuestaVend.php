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

		if ($estado == 0) {	?>

		<form action="proc1.php" method="post">
			<table>
				<tr>
					<td>Responde a tu cliente</td>
				</tr>
				<tr>
					<td>
						<textarea name="respuesta" class="btn"></textarea>
					</td>
				</tr>
				<tr>
					<td><input type="text" name="precio" placeholder="precio" class="btn"></td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="responder" required="">
					</td>
				</tr>
				<tr>
					<td>no olvides ser especifico, si crees que necesitas obtener mas informacion puedes adjuntarle un medio de comunicacion mas cercano. Ademas debes incluir obligatoriamente un precio
					</td>
				</tr>
			</table>
			<input type="hidden" name="idConsulta" value="<?php echo $idConsulta  ?>">
		</form>	
	<?php } ?>


	<?php

		if ($estado == 2) {	
	
			$sqlaceptar = mysql_query("UPDATE consulta set estado = 3 where idConsulta = '$idConsulta' ", $cn);

			if ($sqlaceptar) {
				echo "<script>
                alert('trabajo aceptado, cuandos hayas terminado con el trabajo contactarse con el cliente');
                window.location= 'notificaciones.php'
    </script>";
			}


	 } ?>


	<?php

		if ($estado == 3) {	
	
			$sqlaceptar = mysql_query("UPDATE consulta set estado = 4  where idConsulta = '$idConsulta' ", $cn);


			if ($sqlaceptar) {
				echo "<script>
                alert('haz terminado el trabajo, pero no tendras calificacion hasta que el cliente lo confirme');
                window.location= 'notificaciones.php'
    </script>";
			}else{

				echo mysql_error();
			}


	 } ?>




	<?php

		if ($estado == 5) {	
	
			$sqlBorrar = mysql_query("UPDATE consulta set idV = null, idCdelVendedor = null where idConsulta = '$idConsulta' ", $cn);

			if ($sqlBorrar) {
				echo "<script>
                alert('Consulta borrada');
                window.location= 'notificaciones.php'
    </script>";
			}


	 } ?>
</body>
</html>