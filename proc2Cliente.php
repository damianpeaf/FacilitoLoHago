<?php

include 'conexion.php';
include 'verificacionU.php';

$idConsulta = $_POST["idConsulta"];

$sql0 = mysql_query("SELECT * FROM consulta where idConsulta = '$idConsulta' ", $cn);

$N = mysql_num_rows($sql0);

$idV = mysql_result($sql0, 0, "idV");

$sql1 = mysql_query("SELECT * FROM vend where idV = '$idV' ", $cn);

$ratingAnterior = mysql_result($sql1, 0, "rating");
$trabajosAnteriores = mysql_result($sql1, 0, "trabajosRealizados");


$valoracion = $_POST["valoracion"];

if ($valoracion > 5 || $valoracion < 0) {
		
		echo "<script>
                alert('debes ingresar una valoracion entre 0 y 5');
                window.location= 'notificaciones.php'
    </script>";
}else{

	$ratingNuevo = ceil(($ratingAnterior + $valoracion)/2);
	$trabajosNuevo = $trabajosAnteriores + 1;


	mysql_query("UPDATE consulta set estado = 5, rating = $ratingNuevo where idConsulta='$idConsulta' ", $cn);

	mysql_query("UPDATE vend set rating=$ratingNuevo, trabajosRealizados = $trabajosNuevo where idV = '$idV' ", $cn); 

	echo "<script>
                alert('Gracias');
                window.location= 'notificaciones.php'
    </script>";

}

?>