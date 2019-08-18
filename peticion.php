<?php

	include 'conexion.php';
	include 'verificacionU.php';

		$idV = $_POST["idV"];


	$sql0 = mysql_query("SELECT dpi from usuariosCliente where nombreUsuario='".$_SESSION['usuario'] ."' ", $cn);	

	$sql3 = mysql_query("SELECT idC from vend where idV='$idV' ", $cn);

	//variables a insertar

	$idCdelVend = mysql_result($sql3, 0, 0);

	$idCliente = mysql_result($sql0, 0); 
	$pedido = $_POST["pedido"];

	if ($pedido == '') {
		echo "<script> alert('NO  HAY MENSAJE'); window.location='paginaBienvenida.php' </script>";
		die();
	}else{


		$sqlAux = mysql_query("SELECT nombres from usuariosCliente where dpi = '$idCliente' ", $cn);

		$nombre = mysql_result($sqlAux, 0,0);

		$sql4 = mysql_query("INSERT into dm values(null, '$idCliente', '$idV', '$idCdelVend') ", $cn);


		$sql5 = mysql_query("SELECT idChat FROM dm where idC='$idCliente' and idV='$idV' ", $cn);


		$idChat = mysql_result($sql5, 0,0);

		$sql6 = mysql_query("INSERT into mensajes(idMensaje, idChat, mensaje, nombre) values (null, '$idChat', '$pedido', '$nombre' ) ", $cn);

		echo mysql_error();

		if (!$sql4) {
			echo "<script> alert('no se pudo realizar la cotizacion');</script>";
			echo mysql_error();
		}else{

			echo "<script>
                alert('Cotizacion enviada, ve al area de notificaciones para seguir en contacto con el vendedor');
                window.location= 'paginaBienvenida.php'
    </script>";


		}
	}

?>