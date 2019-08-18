<?php

	include 'conexion.php';
	include 'verificacionU.php';

	$descripcion = $_POST["descripcion"];
	$idV = $_POST["idV"];
	$tipoIMG = $_FILES['imagen']['type'];


	if ($tipoIMG == "image/jpg" || $tipoIMG == "image/jpeg" || $tipoIMG == "image/png") {
			
		$carpeta2 = "files/img/trabajos/";
		opendir($carpeta2);
		$destino2 = $carpeta2.$_FILES['imagen']['name'];
		copy($_FILES['imagen']['tmp_name'], $destino2);
		rename('files/img//trabajos/'.$_FILES['imagen']['name'], 'files/img/trabajos/'. $idV . $_FILES['imagen']['name']);

		$sql1 = mysql_query("INSERT into trabajosRealizados values(null, '$idV', '".$idV . $_FILES['imagen']['name']. "', '$descripcion') ", $cn);

		echo "INSERT into trabajosRealizados values(null, '$idV', '".$idV . $_FILES['imagen']['name']. "', '$descripcion') ";

		if ($sql1) {
			 echo "<script>
                alert('Imagen subida ! ');
                window.location= 'modificarVendedor.php'
    </script>";
		}

		}else{

 echo "<script>
                alert('La imagen debe ser de tipo .jpg o .jpeg o .png');
                window.location= 'modificarVendedor.php'
    </script>";
		}
	

?>