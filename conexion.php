<?php 

	$cn = mysql_connect("localhost", "root", "");
	mysql_select_db("proyecto");

	if (!$cn) {
	 	echo "Discuple hay en error en la conexion  ". mysql_error();
	 } 

	 mysql_query("SET NAMES 'UTF8'");



	 function formatearFecha($fecha){
	return date('g:i a', strtotime($fecha));
}

 ?>