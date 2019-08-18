

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

	<meta http-equiv="Expires" content="0">
  <meta http-equiv="Last-Modified" content="0">
  <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
  <meta http-equiv="Pragma" content="no-cache">

	<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>

	<link rel="stylesheet" href="css/estilo2.css">
</head>
<body>

	<header>
		<?php
			include 'Encabezado.php';
			session_destroy();
		?>
	</header>

	<br><br><br><br><br>
	
	<form action="ingresar.php" method="post" class="formR">
		<h2 class="tit">Ingresar</h2>
		<div class="contenedor-input">
			<input type="text" name="usuario" placeholder="Nombre de Usuario" class="inputG" >
			<input type="password" name="password" placeholder="contraseña"  class="inputG">
			<input type="submit" value="INGRESAR" name="btn1" class="btnE">
			<p class="yaTiene">¿No tienes una cuenta todavia? <a href="loginCliente.php">Registrate aqui</a> </p>
		</div>
	</form>
	<br><br>
</body>
</html>


<?php
include ("conexion.php");

session_start();

if (isset($_POST["btn1"])) {



$usuario = $_POST["usuario"];
$contraseña = $_POST["password"];


$encrip = md5($contraseña);


$sql1 = mysql_query("SELECT * from usuariosCliente where nombreUsuario = '$usuario' and contra='$encrip' ", $cn);

//echo $encrip;

$n = mysql_num_rows($sql1);

if ($n >0) {
	header("location:paginaBienvenida.php");
	$_SESSION["usuario"] = $usuario;
}else
	echo "<script> alert('no haz introducido correctamente tus datos'); </script>";
	echo mysql_error();
}
?>


