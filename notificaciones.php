<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Notificaciones</title>
	<link rel="stylesheet" href="css/estiloNotificaciones.css">
</head>
<body>
	
	<header>
			
		<?php 


			include 'verificacionU.php';
			include 'conexion.php';
			include 'Encabezado2.php'; 

//parte CLIENTE

			$sql0 = mysql_query("SELECT dpi from usuariosCliente where nombreUsuario='".$_SESSION['usuario'] ."' ", $cn);	

			$idCliente = mysql_result($sql0, 0); 

		 	// echo "<script> alert(' ". $idCliente . "') </script>";


			$sql1 = mysql_query("SELECT * FROM dm where idC = '$idCliente' ", $cn);



			$numeroCotizaciones = mysql_num_rows($sql1);



			//FIN CLIENTE


		?>

	</header>

	<section id="contenedorPrincipal">
		
		<div> <?php echo "Usted ha hecho " . $numeroCotizaciones. " cotizacion/es"; ?></div>

		<?php

			for ($i=0; $i < $numeroCotizaciones; $i++) { 

			$idCdelVendedor = mysql_result($sql1, $i, 'idCVendedor');
			$idV = mysql_result($sql1, $i, 'idV');

			$sql2 = mysql_query("SELECT * FROM usuariosCliente where dpi = '$idCdelVendedor' ", $cn);

			$nombreVendor = mysql_result($sql2, 0, 'nombres');

			$sql3 = mysql_query("SELECT * FROM vend where idC = '$idCdelVendedor' and idV = '$idV' ",$cn);

			$avatar = mysql_result($sql3, 0, 'avatar');

			//echo "$avatar";
			

			echo mysql_error();


			echo "<a href='chat.php?idV=$idV'>";

				?>
				
				<div class="chatNotificacion">
					<p>
						
					Chat Con : <?php echo $nombreVendor; ?></p>
					<img src="files/img/<?php echo $avatar ?>" >
				</div>
				</a>


			


		<?php } ?>

		<?php


	$sqlv0 = mysql_query("SELECT * FROM dm where idCVendedor = '$idCliente' ", $cn);

	$numeroClientes = mysql_num_rows($sqlv0);



	?>


<br><br><br>

		<div> <?php echo "Usted tiene " . $numeroClientes. " Cliente/s"; ?></div>

		<?php

			for ($j=0; $j < $numeroClientes; $j++) { 

				

			$idDelCotizante = mysql_result($sqlv0, $j, 'idC');

			$sqlv1 = mysql_query("SELECT * FROM usuariosCliente where dpi = '$idDelCotizante' ", $cn);

			//echo "SELECT * FROM usuariosCliente where dpi = '$idDelCotizante' ";

			$nombreCliente = mysql_result($sqlv1, 0, 'nombres');

			echo mysql_error();


			echo "<a href='chat.php?idDelCotizante=$idDelCotizante'>";

				?>
				
				<div class="chatNotificacion">
					<p>
						
					Chat Con : <?php echo $nombreCliente; ?></p>
					<img src="files/img/default.png" >
				</div>
				</a>


			


		<?php } ?>

	</section>

	

		
		



</body>
</html>