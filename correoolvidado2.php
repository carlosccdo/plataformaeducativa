<?php

$cor = $_POST["cor"];


include './con1.php';

// PROTECCION FRENTE A SQL INYECTADO (FUNCION mysql_real_escape_string)
$cor = $mysqli->real_escape_string($cor);

$resultado = $mysqli->query("select clave from usuario where correo='$cor'");
$filasAfectadas = $mysqli->affected_rows;

if ($filasAfectadas == 0) {
    header("Location: correoolvidado.php?error=1");
} else {

    while ($fila = $resultado->fetch_assoc()) {
        mail($cor, "Recordatorio de clave", "Your password is:" . $fila['clave']);
    }
     header("Location: correoolvidado.php?error=2");
}
    $resultado->free();
    $mysqli->close();

