<?php 

include 'conexion.php';
	include 'verificacionU.php';

$idConsulta = $_POST["idConsulta"];
$respuesta = $_POST["respuesta"];
$precio = $_POST["precio"];

$mensaje = $respuesta . " el vendedor sugiere un precio de ". $precio;

$sql1 = mysql_query("UPDATE consulta set respuesta='$mensaje', estado = 1 where idConsulta = '$idConsulta' ", $cn);

if ($sql1) {
		echo "<script>
                alert('La respuesta ha sido enviada al cliente, chequea tus notificaciones para saber si continuar con el trabajo');
                window.location= 'notificaciones.php'
    </script>";
}else{

	echo mysql_error();
}

?>