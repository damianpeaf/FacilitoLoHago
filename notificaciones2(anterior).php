<?php
error_reporting(0);
	include 'conexion.php';
	include 'verificacionU.php';

	$sql = mysql_query("SELECT * from usuariosCliente where nombreUsuario ='".$_SESSION['usuario'] ."' ");

	$dpi = mysql_result(
		$sql, 0, "dpi");

	$sql0 = mysql_query("SELECT * from vend where idC ='$dpi' ", $cn);

	$numeroCuentas = mysql_num_rows($sql0);

	$idV = mysql_result($sql0, 0, "idV");

	$sql1 = mysql_query("SELECT * from consulta where idCdelVendedor = '$dpi' order by idConsulta desc ", $cn);

	//echo "<br><br><br><br><br><br><br><br><br><br>SELECT * from consulta where idCdelVendedor = '$dpi' order by idConsulta desc ";

	// echo "<br><br><br><br><br><br><br><br><br>" . "SELECT * from consulta where idCdelVendedor = '$dpi' order by idConsulta desc ";

	$numeroDeConsultas = mysql_num_rows($sql1);


	$sql2 = mysql_query("SELECT * from consulta where idC = '$dpi' order by idConsulta desc ", $cn);

	$numeroDeConsultasCliente = mysql_num_rows($sql2);


?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>notificaciones</title>
	<link rel="stylesheet" href="css/estilo10.css">
</head>
<body>
	<header>
		<?php include 'Encabezado2.php'; ?>
	</header>
	<main>
	<div class="cont1">
		
	<table class="tbl1">
		<tr>
			<td colspan="6">
				<?php
					echo "usted tiene ". $numeroDeConsultas. " Cliente/s ";
					?>
			</td>
		</tr>
		<tr>
			<th>consultas</th>
			<th>estados</th>
			<th>Respuestas</th>
			<th>ratings</th>
			<th>acciones</th>
			<th>cliente</th>
		</tr>

		<?php

		if ($numeroDeConsultas > 0) {
			

				for ($i=0; $i < $numeroDeConsultas; $i++) { 

					$idConsulta =  mysql_result($sql1, $i, "idConsulta");

					$consulta = mysql_result($sql1, $i, "pedido");

					$estado = mysql_result($sql1, $i, "estado");

					$respuesta = mysql_result($sql1, $i, "respuesta");

					$rating = mysql_result($sql1, $i, "rating");

					$dpiCliente = mysql_result($sql1, $i, "idC");



					$sqlAux40 = mysql_query("SELECT nombres, apellidos, telefono from usuariosCliente where dpi = '$dpiCliente' ", $cn);

					




					?>

		<tr>	
			<td><?php echo $consulta; ?></td>
			<td>
			
				<?php
					// estado

				// $mensaje = "";

					if ($estado == 0) {
						$mensaje = "sin responer";
						$accion = "responder";
					}elseif ($estado == 1) {
						$mensaje = "esperando respuesta de cliente";
						$accion = "";
					}elseif ($estado == 2) {
						$mensaje = "el usuario a accedido";
						$accion = "iniciar el proceso";
					}elseif ($estado == 3) {
						$mensaje = "trabajo en proceso";
						$accion = "marcar final del trabajo";
					}elseif ($estado == 4) {
						$mensaje = "Vendedor a marcado final del trabajo, esperando verificacion de cliente";
						$accion = "";
					}elseif ($estado == 5) {
						$mensaje = "trabajo finalizado";
						$accion = "borrar";
					}else{

						$mensaje = "error";
						$accion = "error";
					}

					echo $mensaje;
				?>

			</td>
			<td>
				<?php echo $respuesta; ?>
			</td>
			<td>
				<?php echo $rating; ?>
			</td>
			<td>
				<a href="respuestaVend.php?idConsulta=<?php echo $idConsulta; ?>"><?php echo $accion; ?></a>
			</td>
			<td>
				<?php

					$sqlAux40 = mysql_query("SELECT nombres, apellidos, telefono from usuariosCliente where dpi = '$dpiCliente' ", $cn);

					//echo "SELECT nombres, apellidos, telefono from usuariosCliente where dpi = '$dpiCliente' ";

					 $nombreC = mysql_result($sqlAux40, 0, 0);
					 $apellidosC = mysql_result($sqlAux40, 0, 1);
					 $telefonoC = mysql_result($sqlAux40, 0, 2);

					echo "Pedido por ". $nombreC . " " . $apellidosC . " y su numero es ". $telefonoC;

				?>
			</td>
		</tr>
	<?php } }?>
	</table>
	</div>	
	<div  class="cont1">
		
	<table class="tbl1">
		<tr>
			<td colspan="6">
				<?php

				echo "usted tiene ha hecho ". $numeroDeConsultasCliente. " pedido/s ";

				?>
			</td>
		</tr>
		<tr>
			<th>consultas</th>
			<th>estados</th>
			<th>Respuestas</th>
			<th>rating</th>
			<th>acciones</th>
			<th>Pedido a</th>
		</tr>

		<?php

			

			if ($numeroDeConsultasCliente > 0) {
				


				for ($i=0; $i < $numeroDeConsultasCliente; $i++) { 

					$idConsulta =  mysql_result($sql2, $i, "idConsulta");

					$consulta = mysql_result($sql2, $i, "pedido");

					$estado = mysql_result($sql2, $i, "estado");

					$respuesta = mysql_result($sql2, $i, "respuesta");

					$rating = mysql_result($sql2, $i, "rating");

					?>

		<tr>	
			<td><?php echo $consulta; ?></td>
			<td>
			
				<?php
					// estado

					if ($estado == 0) {
						$mensaje = "sin responer";
						$accion = "";
					}elseif ($estado == 1) {
						$mensaje = "Decide si continuar con el trabajo";
						$accion = "Decidir";
					}elseif ($estado == 2) {
						$mensaje = "Esperando a que el vendedor inicie con el trabajo";
						$accion = "";
					}elseif ($estado == 3) {
						$mensaje = "trabajo en proceso";
						$accion = "marcar final del trabajo";
					}elseif ($estado == 4) {
						$mensaje = "Vendedor a marcado final del trabajo, esperando verificacion de cliente";
						$accion = "marcar final del trabajo";
					}elseif ($estado == 5) {
						$mensaje = "trabajo finalizado";
						$accion = "borrar";
					}else{

						$mensaje = "error";
						$accion = "error";
					}

					echo $mensaje;
				?>

			</td>
			<td>
				<?php echo $respuesta; ?>
			</td>
			<td>
				<?php echo $rating; ?>
			</td>
			<td>
				<a href="respuestaCliente.php?idConsulta=<?php echo $idConsulta; ?>"><?php echo $accion; ?></a>
			</td>
			<td>
				<?php

					$idCdelVendedor = mysql_result($sql2, $i, "idCdelVendedor");

					$consulta1 = mysql_query("SELECT nombres, apellidos from usuariosCliente where dpi = '$idCdelVendedor' ", $cn);

					echo mysql_result($consulta1, 0, 0). " ". mysql_result($consulta1, 0, 1);

				?>
			</td>
		</tr>
	<?php }  }?>
	</table>
	</div>
	</main>
</body>
</html>