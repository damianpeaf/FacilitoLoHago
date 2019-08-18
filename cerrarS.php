<?php

session_start();

echo "<script> alert('Haz cerrado sesion'); </script> ";

session_destroy();

header("location:index.php");


?>