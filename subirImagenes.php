<?php

$idV = $_GET["idV"];

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Subida imagenes</title>
</head>
<body>
	<div id="contenedor1">	
	<form action="subirImgProceso.php" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>Adjunte imagen</td>
				<td>
					<input type="file" name="imagen">
				</td>
			</tr>
			<tr>
				<td colspan="2">Agregue una pequeña descripcion de la imagen</td>				
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="descripcion" cols="30" rows="10"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="subir">
				</td>
			</tr>
		</table>
		<input type="hidden" value="<?php echo $idV ?>" name="idV">
	</form>
	</div>
</body>
</html>