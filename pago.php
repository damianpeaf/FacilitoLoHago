<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<script src="https://www.paypal.com/sdk/js?client-id=sb"></script>
	<style>

	.article-body form{
	text-align:center;
}
	</style>
<script>paypal.Buttons().render('body');</script>
</head>

	<body>
		<center>		
  <script
    src="https://www.paypal.com/sdk/js?client-id=SB_CLIENT_ID">
  </script>


<div class="contenedor-paypal">
<div id="paypal-button" style="width: 200px"></div>

<script>
paypal.Button.render({
 style: {
 size: 'responsive'
 }
});
</script>
</div>
  

  <script>
    paypal.Buttons().render('#paypal-button-container');
  </script>

  <a href="notificaciones.php">volver a las notificaciones</a>
</center>
</body>
</html>