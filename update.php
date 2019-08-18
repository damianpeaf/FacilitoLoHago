<?php
	
	include 'conexion.php';
	
	$nombre = $_POST["nombre"];
	$apellidos = $_POST["apellidos"];
	$password = $_POST["password"];
	$correo = $_POST["correo"];
	$telefono = $_POST["telefono"];
	$IDdepartamento = $_POST["lista1"];
	$IDmunicipio = $_POST["lista2"];
	$fecha = $_POST["fecha"];
	$id = $_POST["id"];
	

	$sql1 = mysql_query("SELECT departamento from departamento where id = '$IDdepartamento'", $cn);
	$sql2 = mysql_query("SELECT municipio from municipio where id = '$IDmunicipio'", $cn);

	$departamento =  mysql_result($sql1, 0);
	$municipio = mysql_result($sql2, 0);

	$sql3 = mysql_query("UPDATE usuariosCliente set nombres='$nombre', apellidos='$apellidos', contra='$password', correo='$correo', telefono='$telefono', municipio='$municipio', fechaNac='$fecha' where nombreUsuario='$id' ", $cn);

	if (!$sql3) {
	echo  "<br><br>Hubo un error en el registro de datos". mysql_error();
}else{

	echo "<script> alert('Se han modificado correctamente los datos'); </script>";
	header('location:modificarP.php');
}


?>

