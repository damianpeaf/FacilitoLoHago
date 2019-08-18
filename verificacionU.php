<?php

session_start();
$varS = $_SESSION["usuario"];
if ($varS == null  || $varS = '') {
	echo "No tiene autorizacion";
	die();
}

?>