<?php

include 'conexion.php';
include 'verificacionU.php';

$idV = $_GET["idV"];


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
		
	 <form action="update2.php" method="post" enctype="multipart/form-data">
	 		
	 	<h2 class="tit">Modifica los datos</h2>
	 	<div class="contenedorI">
	 	<table>

	 		<tr>
	 			<td colspan="2" class="centro">		
	 				<span>Describe lo que haces</span>
	 			</td>
	 		</tr>
	 		<tr>
	 			<td colspan="2" id="bajo">		
					<textarea class="area" name="descripcion"></textarea>
	 			</td>
	 		</tr>
	 		<tr>
	 			<td colspan="2" class="centro">
	 				<input class="btn" type="submit" value="modificar" name="btn"> 
	 			</td>
	 		</tr>
	 	</table>
	 	<input type="hidden" value="<?php echo $idV; ?>" name="idV" >
	 	</div>
	 </form>
	</main>
</body>
</html>

