<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Facilito lo hago GT</title>

	<link rel="stylesheet" href="css/fontello.css">

	<link rel="stylesheet" href="css/estilo1.css">

	<link rel="stylesheet" href="css/menu.css">

	<link rel="stylesheet" href="css/slider.css">

	
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<?php
			include 'Encabezado.php';
      session_start();
      session_destroy();
		?>
	</header>

<!-- <br><br><br><br> -->
<section class="f1">
	
		<div class="slider">
	<ul>
		<li><img src="imgs/slider1.png" alt=""></li>
		<li><img src="imgs/slider2.png" alt=""></li>
		<li><img src="imgs/slider3.png" alt=""></li>
		<!-- <li><img src="imgs/slider4.png" alt=""></li> -->		<li><img src="imgs/slider5.png" alt=""></li>
	</ul>
</div>
</section>
<section class="f2">

<section id="feature" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="header-section text-center">
          <h2>¿Quienes somos? </h2>
          <p>Somos una pagina donde podrás encontrar a la persona indicada para lo que necesitas</p>
          <hr class="bottom-line" style=" margin: auto;">
        </div>
        <div class="feature-info">
          <div class="fea">
            <div class="col-md-4">
              <div class="heading pull-right">
                <h4>Primer paso:</h4>
                <p>Registrate <a href="loginCliente.php" style=" color: #232096;">aqui</a>. Recuerda que debes ser mayor de edad y contar con DPI</p>
            </div>
          </div>
          <div class="fea">
            <div class="col-md-4">
              <div class="heading pull-right">
                <h4>Segundo paso</h4>
                <p>Ingresa <a href="ingresar.php" style=" color: #232096;">aqui</a>. Y ya estas listo para empezar a buscar el servicio que necesitas</p>
              </div>
                    </div>
          </div>
          <div class="fea">
            <div class="col-md-4">
              <div class="heading pull-right">
                <h4>Tercer paso</h4>
                <p>Tienes támbien la oportunidad de vender servicios o habilidades, dentro del menu puedes encontrar la opcion de crear una cuenta de 'vendedor'</p>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

 <?php

 	include 'pie.php';

 ?>
</body>
</html>

