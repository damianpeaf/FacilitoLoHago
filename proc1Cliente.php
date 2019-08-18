<?php 

include 'conexion.php';
	include 'verificacionU.php';

$idConsulta = $_POST["idConsulta"];
$desicion = $_POST["desicion"];


if ( $desicion == 0) {

$sql1 = mysql_query("UPDATE consulta set estado=2 where idConsulta = '$idConsulta' ", $cn);

}elseif ( $desicion == 1){

$sql2 = mysql_query("UPDATE consulta set respuesta = 'Cancelado por el cliente', estado=4, rating=0 where idConsulta = '$idConsulta' ", $cn);

}else{

	$sql2 = mysql_query("UPDATE consulta set respuesta = 'Cancelado por el cliente', estado=4, rating=0 where idConsulta = '$idConsulta' ", $cn);


}



if ($sql1) {
		echo "<script>
                alert('Puedes proceder con el pago');
                window.location= 'pago.php'
    </script>";
 
}else{
	echo mysql_error();
}

if ($sql2) {
	echo "<script>
                alert('Esperamos que encuentres a alguien que te ayude');
                window.location= 'notificaciones.php'
    </script>";
}



?>