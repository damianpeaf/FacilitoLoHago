<?php

include 'conexion.php';
include 'verificacionU.php';

$idV = $_GET["idV"];

$sql1 = mysql_query("SELECT cv from vend where idV ='$idV' ", $cn);

$nombre_del_archivo = mysql_result($sql1, 0, 0);


header("Content-disposition: attachment; filename=$nombre_del_archivo");
header("Content-type: MIME");
readfile("$nombre_del_archivo");

?>