<?php
// Inicio de la sesion si no esta iniciada
if (!isset($_SESSION)) { session_start(); }
// Comprueba que el usuario este autentificado
if ($_SESSION["nivel"] != 3 ) {
	// Si el usuario no esta autentificado se remite a index.php
	header("Location:finSesion.php");
	// Y se sale de este script
	exit();
}
?>