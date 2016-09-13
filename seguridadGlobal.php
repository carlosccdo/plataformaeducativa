<?php
// Inicio de la sesion si no esta iniciada
if (!isset($_SESSION)) { session_start(); }
// Comprueba que el usuario este autentificado
if (!isset($_SESSION["nivel"] )  ) {
	// Si el usuario no esta autentificado se remite a index.php
	header("Location: index.php");
	// Y se sale de este script
	exit();
}
?>