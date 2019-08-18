<?php

include 'conexion.php';
include 'verificacionU.php';

$sql0 = mysql_query("SELECT * from usuariosCliente where nombreUsuario = '".$_SESSION["usuario"]."'  ", $cn);

$idC = mysql_result($sql0, 0, "dpi");

$sql1 = mysql_query("SELECT * from vend where idC='$idC' ", $cn);

$numeroCuentas = mysql_num_rows($sql1);



?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Perfiles</title>
	<link rel="stylesheet" href="css/estilo7.css">
</head>
<body>
	<header>
		<?php include 'Encabezado2.php'; ?>
	</header>
	<main>
		<div class="centerTable">
			<table id="tabla1">
				<tr>
					<th colspan="7" id="titulo">Tienes <?php echo $numeroCuentas; ?> cuentas</th>
				</tr>
				<tr>
					<th>Oficio</th>
					<th>Descripcion</th>
					<th>Trabajos realizados</th>
					<th>Calificacion</th>
					<th>Avatar</th>
					<th>Modificar</th>
					<th>Imagenes de trabajos</th>
				</tr>
				<?php	for ($i=0; $i < $numeroCuentas; $i++) { 


					$avatar = mysql_result($sql1, $i, "avatar");
					$idV = mysql_result($sql1, $i, "idV");

				 ?> 

				<tr>
					<td><?php echo mysql_result($sql1, $i, "oficio"); ?></td>
					<td><?php echo mysql_result($sql1, $i, "descrip"); ?></td>
					<td><?php echo mysql_result($sql1, $i, "trabajosRealizados"); ?></td>
					<td><?php echo mysql_result($sql1, $i, "rating"); ?></td>
					<td><img height="100px" width="100px" src="files/img/<?php echo $avatar ?>" ></td>
					<td><a href="modificarDatosVendedor.php?idV=<?php echo $idV; ?>">Modificar datos</a></td>
					<td><a href="subirImagenes.php?idV=<?php echo $idV; ?>">Añadir</a></td>
				</tr>		
				<?php } ?>
			</table>
		</div>
	</main>
</body>
</html>