<?php

error_reporting(0);

session_start();

$nombres = "";
$apellidos = "";
$usuario = "";
$contraseña ="";
$correo ="";
$dpi = "";
$telefono = "";
$fechaN = "";
$conf = "";

if (isset($_SESSION["nombres"])) {
	

$nombres = $_SESSION["nombres"];
$apellidos = $_SESSION["apellidos"];
$usuario = $_SESSION["usuario"];
//$contraseña = $_SESSION["contraseña"];
$correo =$_SESSION["correo"];
$dpi = $_SESSION["dpi"];
$telefono = $_SESSION["telefono"];
$fechaN = $_SESSION["fechaN"];

session_destroy();

//echo "hola";
}




?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

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
		?>
	</header>

	<br><br><br><br><br>
	
	<form action="loginCliente.php" method="post" class="formR">
		<h2 class="tit">Registrate como cliente</h2>
		<div class="contenedor-input">
			<input type="text" name="nombres" placeholder="Nombres"  class="inputP" required="" value="<?php echo $nombres; ?>">
			<input type="text" name="apellidos" placeholder="Apellidos" class="inputP" required="" value="<?php echo $apellidos; ?>">
			<input type="text" name="usuario" placeholder="Nombre de Usuario" class="inputP" required="" value="<?php echo $usuario; ?>">
			<input type="email" placeholder="Correo" name="correo"  class="inputP" required="" value="<?php echo $correo; ?>">
			<input type="password" name="password" placeholder="contraseña"  class="inputP" required="" value="<?php echo $contraseña; ?>">
			<input type="password" name="conf" placeholder="confirmar contraseña"  class="inputP" required="" value="<?php echo $conf; ?>"> 
			<input type="text" placeholder="CUI" name="dpi"  class="inputP" required="" value="<?php echo $dpi; ?>">
			<input type="text" name="telefono" placeholder="Telefono"  class="inputP" required="" value="<?php echo $telefono ; ?>"> <!-- verificar numero de digitos -->
			<div class="selectG" required="">
		<label >Departamento</label>	
			<select name="lista1" id="lista1" >
				<option value="1">Alta Verapaz</option>
				<option value="2">Baja Verapaz</option>
				<option value="3">Chimaltenango</option>
				<option value="4">Chiquimula</option>
				<option value="5">Peten</option>
				<option value="6">El Progreso</option>
				<option value="7">Quiché</option>
				<option value="8">Escuintla</option>
				<option value="9">Guatemala</option>
				<option value="10">Huehuetenango</option>
				<option value="11">Izabal</option>
				<option value="12">Jalapa</option>
				<option value="13">Jutiapa</option>
				<option value="14">Quetzaltenango</option>
				<option value="15">Retalhuleu</option>
				<option value="16">Sacatepéquez</option>
				<option value="17">San Marcos</option>
				<option value="18">Santa Rosa</option>
				<option value="19">Sololá</option>
				<option value="20">Suchitepéquez</option>
				<option value="21">Totonicapán</option>
				<option value="22">Zacapa</option>
			</select>
			</div>
			<div id="select2lista" class="selectG"></div>
			<p>¿Cuado Naciste?</p>
			<input type="date" name="fechaN" class="inputG" required="" value="<?php echo $fechaN; ?>">
			<input type="submit" value="REGISTRARSE" name="btn1" class="btnE">
			<p class="yaTiene">¿Ya tienes una cuenta? <a href="ingresar.php">Ingresa aqui</a> </p>
		</div>
	</form>
	<br><br>
</body>
</html>


<script type="text/javascript">
	$(document).ready(function(){
		$('#lista1').val(1);
		recargarLista();

		$('#lista1').change(function(){
			recargarLista();
		});
	})
</script>
<script type="text/javascript">
	function recargarLista(){
		$.ajax({
			type:"POST",
			url:"datos.php",
			data:"municipio=" + $('#lista1').val(),
			success:function(r){
				$('#select2lista').html(r);
			}
		});
	}
</script>

<?php
include ("conexion.php");
include ("validarPassword.php");
include 'validarCUI.php';
if (isset($_POST["btn1"])) {

//falta hacer una verificacion de uso de nombre de usuario

$nombres = $_POST["nombres"];
$apellidos = $_POST["apellidos"];
$usuario = $_POST["usuario"];
$contraseña = $_POST["password"];
$correo = $_POST["correo"];
$dpi = $_POST["dpi"];
$telefono = $_POST["telefono"];
$IDdepartamento = $_POST["lista1"];
$IDmunicipio = $_POST["lista2"];
$fechaN = $_POST["fechaN"];
$conf = $_POST["conf"];





//variables de sesion 
session_destroy();
session_start();


$_SESSION["nombres"] = $nombres;
$_SESSION["apellidos"] = $apellidos;
$_SESSION["usuario"] = $usuario;
//$_SESSION["contraseña"] = $contraseña;
$_SESSION["correo"] = $correo;
$_SESSION["dpi"] = $dpi;
$_SESSION["telefono"] = $telefono;
$_SESSION["fechaN"] = $fechaN;



//if


	if (strlen($nombres) > 50) {
				echo "<script>
                alert('El nombre debe tener como maximo 50 caracteres');
                window.location= 'loginCliente.php'
    </script>";
		exit();
	}elseif (strlen($apellidos) > 50) {
		echo "<script>
                alert('El apellido debe tener como maximo 50 caracteres');
                window.location= 'loginCliente.php'
    </script>";
		exit();
	}elseif (strlen($usuario) > 10) {
		echo "<script>
                alert('El nombre de usuario debe tener como maximo 10 caracteres');
                window.location= 'loginCliente.php'
    </script>";
		exit();
	}elseif (!validar_clave($contraseña, $error_encontrado)){
      echo "<script> alert('La contraseña tiene el siguiente error: " . $error_encontrado . " '); window.location = 'loginCliente.php' </script>";
      exit();
   }elseif (strlen($correo) > 75) {
		echo "<script> alert('El correo solo debe tener 75 caracteres'); window.location = 'loginCliente.php'</script>";
		exit();
	}elseif (!validarCUI($dpi, $error_encontrado)) {
		 echo "<script> alert('El CUI tiene el siguiente error: " . $error_encontrado . " '); window.location = 'loginCliente.php'</script>";
		exit();
	}elseif (strlen($telefono) > 8) {
		echo "<script> alert('El Telefono debe tener como maximo 8 Numeros'); window.location = 'loginCliente.php'</script>";
		exit();
	}

	$aux = mysql_query("SELECT * FROM usuariosCliente where nombreUsuario = '$usuario' ", $cn);
	$numAux = mysql_num_rows($aux);

	if ($numAux>0) {
		echo "<script> alert('El nombre de usuario ya esta en uso, por favor utiliza otro'); window.location = 'loginCliente.php'</script>";
		exit();
	}

	$aux2 = mysql_query("SELECT * FROM usuariosCliente where dpi = '$dpi' ", $cn);
	$numAux2 = mysql_num_rows($aux2);

	if ($numAux>0) {
		echo "<script> alert('El CUI ya esta en uso'); window.location = 'loginCliente.php'</script>";
		exit();
	}

	if ($contraseña != $conf) {
		echo "<script> alert('Las contraseñas no coinciden'); window.location = 'loginCliente.php'</script>";
		exit();

	}


$sql1 = mysql_query("SELECT departamento from departamento where id = '$IDdepartamento'", $cn);
$sql2 = mysql_query("SELECT municipio from municipio where id = '$IDmunicipio'", $cn);

$departamento =  mysql_result($sql1, 0);
$municipio = mysql_result($sql2, 0);

$encrip = md5($contraseña);

//echo $encrip;
 
$sql3 = mysql_query("INSERT INTO usuariosCliente values
					('$nombres', '$apellidos', '$usuario', '$encrip', '$correo', '$dpi', '$telefono', '$departamento', '$municipio', '$fechaN')");

session_destroy();

if (!$sql3) {
	echo  "<br><br>Hubo un error en el registro de datos". mysql_error();
}else{

	echo "<script> alert('Te haz registrado correctamente'); window.location = 'ingresar.php' </script>";
}

}

?>


