<?php
include "conexion.php";
include 'verificacionU.php';

$idDelCotizante = $_GET["idDelCotizante"];
$idV  =$_GET["idV"];


$sqlidC = mysql_query("SELECT * from usuariosCliente where nombreUsuario = '".$_SESSION['usuario'] ."' ", $cn);

$idClienteComentario = mysql_result($sqlidC, 0, "dpi");

// echo $idDelCotizante;
// echo $idV;

if ($idDelCotizante == null) { //te dan idV (CLIENTE)

	$consulta = mysql_query("SELECT idChat FROM dm where idV = '$idV' and idC = '$idClienteComentario' ", $cn);

	$sqlNombre = mysql_query("SELECT idC from dm where idV = '$idV' ", $cn);
	$id = mysql_result($sqlNombre, 0,0);
	$sqlNombre2 = mysql_query("SELECT nombres from usuariosCliente where dpi = '$id' ", $cn);

	$idChat = mysql_result($consulta, 0,0);
	$_SESSION["idChat"] = $idChat;
	// echo $idChat;

 }else{ // te dan iddelcotizante (VENDEDOR)

 	$consulta = mysql_query("SELECT idChat FROM dm where idC = '$idDelCotizante' ", $cn);
	$idChat = mysql_result($consulta, 0,0);
	$_SESSION["idChat"] = $idChat;
	// echo $idChat;

	$sqlNombre = mysql_query("SELECT idCVendedor from dm where idC = '$idDelCotizante' ", $cn);
	$id = mysql_result($sqlNombre, 0,0);
	$sqlNombre2 = mysql_query("SELECT nombres from usuariosCliente where dpi = '$id' ", $cn);


 }

 // echo "<script> alert('".$idChat."'); </script> ";

 $nombre = mysql_result($sqlNombre2, 0,0);

 //echo $nombre;



?>

<!DOCTYPE html>
<html>
<head>
	<title>CHAT CON PHP, MYSQL Y AJAX</title>
	<link rel="stylesheet" type="text/css" href="css/estilosChat.css">
	<link href="https://fonts.googleapis.com/css?family=Mukta+Vaani" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<script type="text/javascript">
		function ajax(){
		 	var req = new XMLHttpRequest();

		 	req.onreadystatechange = function(){
		 		if (req.readyState == 4 && req.status == 200) {
		 			document.getElementById('chat').innerHTML = req.responseText;
		 		}
		 	}

		 	req.open('GET', 'chatAux.php', true);
		 	req.send();
		 }
 //linea que hace que se refreseque la pagina cada segundo
		 setInterval(function(){ajax();}, 1000);
	</script>
</head>
<body onload="ajax();">
	<header>
		<?Php include 'Encabezado2.php'; ?>
	</header>
	<div id="contenedorC">
		<div id="caja-chat">
			<div id="chat"></div>
		</div>

		<form method="POST" action="">
			<!-- <input type="text" name="nombre" placeholder="Ingresa tu nombre">			 -->
			<textarea name="mensaje" placeholder="Ingresa tu mensaje"></textarea>
			<input type="submit" name="enviar" value="Enviar">
		</form>

		<?php
			if (isset($_POST['enviar'])) {


				$mensaje = $_POST["mensaje"];



			
				$sql6 = mysql_query("INSERT into mensajes(idMensaje, idChat, mensaje, nombre) values (null, '$idChat', '$mensaje', '$nombre' ) ", $cn);


				if ($sql6) {
				echo "<embed loop='false' src='beep.mp3' hidden='true' autoplay='true'>";
				}
			}

		?>
	</div>


	<div id="contenedorC2">
		<p style=" text-align: center; z-index: -1;">ACCIONES</p>
		<div id="paypal-button-container"></div>

    <!-- Include the PayPal JavaScript SDK -->
    <script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD"></script>

    <script>
        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({

            style: {
                color:  'blue',
                shape:  'pill',
                label:  'pay',
                height: 40
            }

        }).render('#paypal-button-container');
    </script>

    <form action="acciones.php">
    	
		<div>Empezar Trabajo</div>
		<div>Puntuar ★</div>
		<div>Finalizar trabajo</div>
		<div>Recomendar</div>
	</div>
    </form>

</body>
</html>