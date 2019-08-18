<?php

	include 'verificacionU.php';
	include 'conexion.php';

	$id = $_GET['nombreUsuario'];
	
	$sql1 = mysql_query("SELECT * FROM usuariosCliente WHERE nombreUsuario = '$id'", $cn);

	if (!$sql1) {
	echo  "<br><br>Hubo un error en el registro de datos". mysql_error();
}

	$row = mysql_fetch_array($sql1);

?>

<html lang="es">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/estilo3.css">
		<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
	</head>
	
	<body>
		<header>
			<?php include 'Encabezado2.php'; ?>
		</header>
		<h3>MODIFICAR REGISTROS</h3>
			
			<form method="POST" action="update.php" autocomplete="off">
				<table>
					
					<tr>
						<td class="tit1">Nombre</td>
						<td class="text1">
							<input type="text" name="nombre" placeholder="Nombre" value="<?php echo $row['nombres']; ?>" required>
						</td>
					</tr>

					<tr>
						<td class="tit1">Apellidos</td>
						<td class="text2">
							<input type="text" name="apellidos" placeholder="apellidos" value="<?php echo $row[1]; ?>" required>
						</td>
					</tr>

					<tr>
						<td class="tit1">Contraseña</td>
						<td class="text1">
							<input type="text" name="password" placeholder="password" value="<?php echo $row[3]; ?>" required>
						</td>
					</tr>

					<tr>
						<td class="tit1">Correo</td>
						<td class="text2">
							<input type="text" name="correo" placeholder="correo" value="<?php echo $row[4]; ?>" required>
						</td>
					</tr>

					<tr>
						<td class="tit1">Telefono</td>
						<td class="text1">
							<input type="text" name="telefono" placeholder="telefono" value="<?php echo $row[6]; ?>" required>
						</td>
					</tr>

					<tr>
						<td class="text3" colspan="2">Departamento
							<select name="lista1" id="lista1">
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
						</td>
					</tr>

					<tr>
						<td colspan="2" class="text3">
							<div id="select2lista" class="selectG"></div>
						</td>

					</tr>

					<tr>
						<td class="tit1">Fecha de Nacimiento</td>
						<td class="text1" >
							<input type="date" name="fecha" required value="<?php echo $row[9]; ?>">
						</td>
					</tr>

					<tr>
						<td colspan="2" class="mod">
							<input type="submit" value="Modificar" class="btnE">
						</td>
					</tr>

				</table>
				
				<input type="hidden" name="id" value="<?php echo $row['nombreUsuario']; ?>" />
			
			</form>
		</div>
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