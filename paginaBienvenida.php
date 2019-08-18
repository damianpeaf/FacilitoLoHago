
<?php

include 'verificacionU.php';
include 'conexion.php';

error_reporting(0);

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

	<link rel="stylesheet" href="css/estilo1.css">
	<link rel="stylesheet" href="css/estilo5.css">
	<link rel="icon" href="favicon.ico" type="image/ico">
</head>
<body>

	<header>
		<?php include 'Encabezado2.php'; ?>
	</header>
	
	<main>

		<h3 id="pregunta" class="titulo" "> Hola <?php echo " ". $_SESSION["usuario"]. " "; ?> ¿Qué estás buscado hoy?</h3>

		<form action="paginaBienvenida.php" method="post">
			<table id="tbl1">
				<tr>
					<td>
						<input type="text" placeholder="¿Que servicio estas buscando?" name="busqueda" class="input">
					</td>
					<td>
						<input type="submit" name="btn1" value="Buscar">
					</td>
				</tr>
				<tr>
					<td id="centro"> Filtro:</td>
					<td>
						<select name="filtro">
							<option value="0">Ninguno</option>							
							<option value="1">Rating</option>
							<option value="2">Numero de trabajos realizados</option>
							<option value="3">Mismo Departamento</option>
						</select>
					</td>
				</tr>
			</table>
		</form>
		<section id="resultados">
			
			<?php


			if (isset($_POST["btn1"])) {

				$busqueda = $_POST["busqueda"];
				$filtro = $_POST["filtro"];


			}	

//////////////////////////////////////////////////////////// no busca nada /////////////////////////////////////////////

			if ($busqueda == '') {
				$sql = mysql_query("SELECT oficio, descrip, rating, trabajosRealizados, idV, idC from vend ORDER BY rand()  ", $cn);


						// if (!$sql) {
						// 	echo mysql_error();
						// }

			}else{


				///////////////////////////////////// ALGUN FILTRO ///////////////////////////////////////////////////////////

						// $sqlExtra = mysql_query("SELECT V.oficio, V.descrip, V.rating, V.trabajosRealizados, V.idV, V.idC, U.departamento, U.municipio from vend V inner join usuariosCliente U on V.idC = U.dpi ", $cn);

				$sqlExtra2 = mysql_query("SELECT departamento from usuariosCliente WHERE nombreUsuario='".$_SESSION['usuario']."' ", $cn);

				$departamentoUsuario = mysql_result($sqlExtra2, 0);


				if ($filtro == 0){
					$sql = mysql_query("SELECT oficio, descrip, rating, trabajosRealizados, idV, idC from vend where oficio='$busqueda'", $cn); 

				}elseif ($filtro == 1) {
					$sql = mysql_query("SELECT oficio, descrip, rating, trabajosRealizados, idV, idC from vend where oficio='$busqueda' order by rating desc", $cn); 
				}elseif ($filtro == 3) {
					$sql = mysql_query("SELECT V.oficio, V.descrip, V.rating, V.trabajosRealizados, V.idV, V.idC, U.departamento, U.municipio from vend V inner join usuariosCliente U on V.idC = U.dpi where U.departamento = '$departamentoUsuario' and V.oficio = '$busqueda' ", $cn); 
				}elseif ($filtro == 2) {
					$sql = mysql_query("SELECT oficio, descrip, rating, trabajosRealizados, idV, idC from vend where oficio='$busqueda' order by trabajosRealizados desc", $cn); 
				}

				if (!$sql) {
					echo mysql_error();
				}



			}



//////////////////////////////////////////////////////////////////////MOSTRAR//////////////////////////////////////////////////////////////////////


			$numR = mysql_num_rows($sql);


			


			if ($numR > 0) {
$h = 0;
				for ($i=0; $i < $numR; $i++) { 
					
					$h++;

					$idV = mysql_result($sql, $i, 4);
					$idC =  mysql_result($sql, $i, 5);
					$sql2 = mysql_query("SELECT departamento, municipio from usuariosCliente where dpi='$idC'  ", $cn);
					$sqlauxaux = mysql_query("SELECT avatar from vend where idV = '$idV' ", $cn);

					echo "<div class='resul'>";
					echo "<a href='perfil.php?idV=$idV'><img src='files/img/". mysql_result($sqlauxaux, 0) . "' >";
					echo " <p id='profesion'>Profesion:  " . mysql_result($sql, $i, 0). "</p></a>";

					echo "<p id='lugar'>Ubicacion: ". mysql_result($sql2, 0, 0). ": " .  mysql_result($sql2, 0, 1) . "</p>";
					echo "<p id='descripcion'>Descripcion: ". mysql_result($sql, $i, 1). "</p>";
					echo "<p id='rating'><span>Rating: </span>". mysql_result($sql, $i, 2). "</p>";
					echo "<p id='trabajos'>Trabajos completados: ". mysql_result($sql, $i, 3). "</p>";
					echo "</div>";
					
				}

				echo "<div class='encontrados'><p>  ". $numR . " resultados </p></div>";


///////////////////////////////////// si no hay registros con tal oficio //////////////////////////////////////////////////////////////////////

			}else{

				$sqlAux = mysql_query("SELECT descrip from vend ", $cn); ///////////////////////////////////por descripcion///////////////////////////

				$registros = 0;
				$num2 = mysql_num_rows($sqlAux);




///////////////////////////////////con cada descrip de la BD

				for ($j=0; $j < $num2; $j++) { 


///minuculas

					$descripcion2 =  strtolower(mysql_result($sqlAux, $j, 0));


					$busqueda2 = strtolower($busqueda);

//SI ENCUENTRA

					if (strpos($descripcion2, $busqueda2) !== false) {

						// $o = $registros - 1;

						
//IMPORTANTE //////////////////////////////////////////////////////////////////////////////////////////

						// $sqlAux2 = mysql_query("SELECT oficio, descrip, rating, trabajosRealizados, idV, idC from vend where descrip='$descripcion2' order by trabajosRealizados desc limit $registros, 1", $cn);

						$sqlAux2 = mysql_query("SELECT oficio, descrip, rating, trabajosRealizados, idV, idC from vend where descrip='$descripcion2' order by trabajosRealizados desc ", $cn);
						$resultados = true;
						$registros++;
						


					}else{

						$resultados = false;
					}


					if ($resultados) {


						if ($sqlAux2) {
						$num3 = mysql_num_rows($sqlAux2);
						}else{
							$num3 = 0;
						}


					}else{
						$num3 = 0;
					}
					


				// SI ENUECNTRA UNO LO MUESTRA

				if ($num3>0) {

					for ($k=0; $k < $num3; $k++) { 

					$idV2 = mysql_result($sqlAux2, $k, 4);
					$idC2 =  mysql_result($sqlAux2, $k, 5);
					$sql9 = mysql_query("SELECT departamento, municipio from usuariosCliente where dpi='$idC2'  ", $cn);
					$sqlauxaux2 = mysql_query("SELECT avatar from vend where idV = '$idV2' ", $cn);

					echo "<div class='resul'>";
					echo "<a href='perfil.php?idV=$idV2'><img src='files/img/". mysql_result($sqlauxaux2, 0) . "' >";
					echo " <p id='profesion'>Profesion:  " . mysql_result($sqlAux2, $k, 0). "</p></a>";

					echo "<p id='lugar'>Ubicacion: ". mysql_result($sql9, 0, 0). ": " .  mysql_result($sql9, 0, 1) . "</p>";
					echo "<p id='descripcion'>Descripcion: ". mysql_result($sqlAux2, $k, 1). "</p>";
					echo "<p id='rating'><span>Rating: </span>". mysql_result($sqlAux2, $k, 2). "</p>";
					echo "<p id='trabajos'>Trabajos completados: ". mysql_result($sqlAux2, $k, 3). "</p>";
					echo "</div>";
					
				}


			}

			//NO IMPORT



		}




		if (isset($registros)) {

			if ($registros== 0) {
				echo "<div class='encontrados'><p>  ". $registros . " resultados </p></div>";	

				echo "<p> No se han encontrado registros </p>";
			}else{

				echo "<div class='encontrados'><p>  ". $registros . " resultados </p></div>";	
			}
								

								}

				
			}



			?>

			
		</section>

	</main>
<?php include 'pie.php'; ?>
</body>
</html>
