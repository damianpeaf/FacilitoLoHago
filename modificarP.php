<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="css/estilo3.css">
	<link rel="stylesheet" href="css/estilo1.css">
</head>
<body>
	<header>
		<?php include 'Encabezado2.php'; ?>
	</header>
	<main>
		
<form action="modificarP" method="post">	
<table>
	
<?php

session_start();
$varS = $_SESSION["usuario"];
if ($varS == null  || $varS = '') {
	echo "No tiene autorizacion";
	die();
}

	include 'conexion.php';

	$sql1 = mysql_query("SELECT * FROM usuariosCliente WHERE nombreUsuario='".$_SESSION['usuario']."'", $cn);


	while ($eje = mysql_fetch_array($sql1)) { 

		?>

		<tr>
			<td colspan="2" style="background: #E3E6FF; text-align: center; border: 2px solid black;"> Datos de la cuenta como cliente</td>
		</tr>

		<tr>
			<td class="tit1">Nombre</td>
			<td class="text1"> <?php echo $eje[0]; ?></td>
		</tr>

		<tr>
			<td class="tit1">apellidos</td>
			<td class="text2"> <?php  echo $eje[1]; ?></td>
		</tr>

		<tr>
			<td class="tit1">Nombre de usuario </td>
			<td class="text1"> <?php echo $eje[2]; ?></td>
		</tr>

		<tr>
			<td class="tit1">Correo</td>
			<td class="text1"> <?php echo $eje[4]; ?></td>
		</tr>

		<tr>
			<td class="tit1">Telefono</td>
			<td class="text2"> <?php echo $eje[6]; ?></td>
		</tr>

		<tr>
			<td class="tit1">Departamento </td>
			<td class="text1"> <?php echo $eje[7]; ?></td>
		</tr>

		<tr>
			<td class="tit1">Municipio</td>
			<td class="text2"> <?php echo $eje[8]; ?></td>
		</tr>

		<tr>
			<td class="tit1">Fecha de nacimiento</td>
			<td class="text1"> <?php echo $eje[9]; ?></td>
		</tr>

		<tr>
			<td colspan="2" class="mod"> ¿Quieres modificar algo? <a href="modificar.php?nombreUsuario=<?php echo $eje['nombreUsuario']; ?>"> MODIFICAR </a></td>
		</tr>
		<tr>
			<td colspan="2" class="mod">
				¿Tienes alguna habilidad? <a href="formVend.php"> Puedes venderla aqui </a>
			</td>
		</tr>

	 <?php } ?>
</table>
</form>
	</main>
</body>
</html>
