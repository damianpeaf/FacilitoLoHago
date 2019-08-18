<?php 

include 'conexion.php'; 
include 'verificacionU.php';

$sql1 = mysql_query("SELECT * from ofi");
$n = mysql_num_rows($sql1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/estilo4.css">
	<title>Document</title>
</head>
<body>
	<header>
		<?php include 'Encabezado2.php'; ?>
	</header>
	<main>
		
	 <form action="formVend.php" method="post" enctype="multipart/form-data">
	 		
	 	<h2 class="tit">Rellena los datos para poder vender Servicios</h2>
	 	<div class="contenedorI">
	 	<table>

	 		<tr>
	 			<td>		
	 				<p>A grandes rasgos ¿Que profesion te describe mejor?</p>
	 			</td>
	 			<td >
	 				<select name="profesion1" class="center">	
	 					<?php 

	 					for ($i=0; $i < $n; $i++) { 

	 						$p2 = mysql_result($sql1, $i, 1);

	 						echo "<option value='$p2'>" .$p2 . "</option>";

	 					}
	 					?>
	 				</select>
	 			</td>	
	 		</tr>
	 		<tr id="bajo">
	 			<td class="der" id="bajo">		
	 				<span class="center">Otra:</span>
	 			</td>
	 			<td id="bajo">		
	 				<input type="text" name="profesion2" placeholder="profesion" >
	 			</td>
	 		</tr>
	 		<tr>
	 			<td colspan="2" class="centro">		
	 				<span>Describe lo que haces</span>
	 			</td>
	 		</tr>
	 		<tr>
	 			<td colspan="2" id="bajo">		
					<textarea class="area" name="descripcion" id=""></textarea>
	 			</td>
	 		</tr>
	 		<tr>
	 			<td id="bajo">		
			<span> Adjunta tu CV</span>
	 			</td>
	 			<td id="bajo">
					<input type="file" name="cv"> 	
	 			</td>
	 		</tr>
	 		<tr>
	 			<td id="bajo">
					<span > Adjunta una imagen como Avatar </span>	
	 			</td>
	 			<td id="bajo">	
					<input type="file" name="avatar">
	 			</td>
	 		</tr>
	 		<tr>
	 			<td colspan="2" class="centro">
	 				<input class="btn" type="submit" value="Registrarse" name="btn"> 
	 			</td>
	 		</tr>
	 	</table>
	 	</div>
	 </form>
	</main>
</body>
</html>

<?php

	if (isset($_POST["btn"])) {


		$sql0 = mysql_query("SELECT dpi FROM usuariosCliente where nombreUsuario='".$_SESSION['usuario']."' ", $cn);

		$idC = mysql_result($sql0, 0);
		
		$prof1 = $_POST["profesion1"];
		$prof2 = $_POST["profesion2"];
		$descripcion = $_POST["descripcion"];


		$tipoIMG = $_FILES['avatar']['type'];
		$tipoDoc = $_FILES['cv']['type'];

		if ($tipoIMG == "image/jpg" || $tipoIMG == "image/jpeg" || $tipoIMG == "image/png") {
			
		$carpeta2 = "files/img/";
		opendir($carpeta2);
		$destino2 = $carpeta2.$_FILES['avatar']['name'];
		copy($_FILES['avatar']['tmp_name'], $destino2);
		rename('files/img/'.$_FILES['avatar']['name'], 'files/img/'. $idC . $_FILES['avatar']['name']);

		}else{

			echo "<script> alert('La imagen debe ser de tipo .jpg o .jpeg o .png'); </script>";
			die();
		}

		if ($tipoDoc == "application/vnd.openxmlformats-officedocument.wordprocessingml.document") {
		
			$carpeta1 = "files/other/";
			opendir($carpeta1);
			$destino1 = $carpeta1.$_FILES['cv']['name'];
			copy($_FILES['cv']['tmp_name'], $destino1);
			rename('files/other/'.$_FILES['cv']['name'], 'files/other/'. $idC . $_FILES['cv']['name']);

		}else{

			echo "<script> alert('El archivo debe ser de tipo .docx (WORD)'); </script>";
			die();
		}


		if ($prof2 == '') {
			$profesion = $prof1;
		}else{
			$profesion = $prof2;
		}


	  $sql1 = mysql_query("INSERT into vend values (null, '$idC', '$profesion', '$descripcion', '".$idC . $_FILES['cv']['name']."', 0, 0, '".$idC . $_FILES['avatar']['name']."')", $cn);


	  if (!$sql1) {
	  	echo mysql_error();
	  }else{

	  		echo "<script> alert('Registrado Correctamente !'); </script>";
	  }

	}
?>