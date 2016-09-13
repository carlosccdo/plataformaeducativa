<?php

/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
include './con1.php';

if (!isset($_SESSION)) {
    session_start();
}
$idusuario = $_POST["idusuario"];
$texto = $_POST["texto"];

$mysqli->query("INSERT INTO  chat(idemisor,idreceptor,mensaje) values('" . $_SESSION['idusuario'] . "','" . $idusuario. "','" . $texto. "') ");

$resultado = $mysqli->query("SELECT * FROM chat join usuario on usuario.idusuario=chat.idemisor where idreceptor='$idusuario' and idemisor='".$_SESSION['idusuario']."'or idemisor='$idusuario' and idreceptor=".$_SESSION['idusuario']);
/* VOLCADO DE LOS DATOS */

while ($fila = $resultado->fetch_assoc()) {

    echo $fila['nombre'] . " Dijo: " . $fila['mensaje'] . "<br><th>";
}

$resultado->free();
/* CIERRE DE LA CONEXION */
$mysqli->close();
?>				



