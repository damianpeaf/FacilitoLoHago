<?php
	include "conexion.php";


	session_start();

	$idChat = $_SESSION["idChat"];
	// echo $idChat;

	///consultamos a la base
	$consulta2 = "SELECT * FROM mensajes WHERE idChat = '$idChat' ORDER BY idMensaje DeSC limit 0,9";
	$ejecutar = mysql_query($consulta2);

	echo mysql_error();


	while($fila = mysql_fetch_array($ejecutar)) : 
?>
	<div id="datos-chat">
		<span style="color: #1C62C4;"><?php echo $fila['nombre']; ?></span>
		<span style="color: #848484;"><?php echo $fila['mensaje']; ?></span>
		<span style="float: right;"><?php echo formatearFecha($fila['fecha']); ?></span>
	</div>
	
	<?php endwhile; ?>
