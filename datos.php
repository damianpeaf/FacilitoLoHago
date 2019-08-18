<?php
include ("conexion.php");
$municipio = $_POST["municipio"];

	$sql="SELECT id,
			 id_municipio,
			 municipio 
		from municipio 
		where id_municipio='$municipio' ";

	$result=mysql_query($sql, $cn);

	$cadena="<label> Municipios                                                   </label> 
			<select id='lista2' name='lista2'>";

	while ($ver=mysql_fetch_row($result)) {
		$cadena=$cadena.'<option value='.$ver[0].'>'.utf8_encode($ver[2]).'</option>';
	}

	echo  $cadena."</select>";
	

?>