<?php

include 'conexion.php';
include 'verificacionU.php';


$descripcion = $_POST["descripcion"];
$idV = $_POST["idV"];


if ($_FILES['cv']['name'] == null && $_FILES['avatar']['name'] == null) {

	$sql1 = mysql_query("UPDATE vend set descrip = '$descripcion' where idV = '$idV' ", $cn);

 echo "<script>
                alert('Descripcion Modificada');
                window.location= 'modificarVendedor.php'
    </script>";



} 


?>