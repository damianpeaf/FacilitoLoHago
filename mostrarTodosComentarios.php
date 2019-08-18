<?php

include 'conexion.php';
include 'verificacionU.php';

$idV = $_GET["idV"];
	

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Comentarios</title>
	<link rel="stylesheet" href="css/estilo9.css">
</head>
<body>
	<header>
		<?php include 'Encabezado2.php'; ?> 	
	</header>
	<main>
		<div id="mostrandoComentarios">
					<h4 id="titulo10">Comentarios </h4>
					<?php 

				$sqlComentarios = mysql_query("SELECT * from comentario where idV='$idV' ", $cn);

					$numComentarios = mysql_num_rows($sqlComentarios);

					echo "<p> mostrando todos lo comentarios</p>";

					if ($numComentarios <= 0) {
						echo "<h6> no hay comentarios </h6>";
					}else{


						$sqlAux1 = mysql_query("SELECT * FROM comentario where idV = '$idV' order by idComentario", $cn);

						$numAux = mysql_num_rows($sqlAux1);

						for ($k=0; $k < $numAux; $k++) { 

						$idAuxCliente = mysql_result($sqlAux1, $k, "idC");

						// echo $idAuxCliente;

						$sqlAux2 = mysql_query("SELECT * from usuariosCliente where dpi = '$idAuxCliente' ", $cn);

						$nombreAux = mysql_result($sqlAux2, 0, "nombreUsuario");

						$comentarioAux = mysql_result($sqlAux1, $k, "comentario");

						echo "<br>";

						?>

						<p class="comentarioP" id="nombreComentario"> <?php echo $nombreAux; ?></p>
						<p class="comentarioP" id="comentarioComentario"><?php echo "   " .$comentarioAux; ?></p>

					<?php }} ?>
					<a href="perfil.php?idV=<?php echo $idV ?>">
						volver al perfil
					</a>
				</div>
	</main>
</body>
</html>