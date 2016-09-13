<?php

/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
include './con1.php';

if (!isset($_SESSION)) {
    session_start();
}

if (empty( $_POST['valorChatUsuario'])){
exit();

}else{
  $valorChatUsuario = $_POST['valorChatUsuario'];
}



$resultado = $mysqli->query("SELECT * FROM chat join usuario on usuario.idusuario=chat.idemisor where idreceptor='$valorChatUsuario' and idemisor='".$_SESSION['idusuario']."'or idemisor='$valorChatUsuario' and idreceptor=".$_SESSION['idusuario']);
/* VOLCADO DE LOS DATOS */


while ($fila = $resultado->fetch_assoc()) {

    echo $fila['nombre'] . " Dijo: " . $fila['mensaje'] . "<br><th>";
}

$resultado->free();
/* CIERRE DE LA CONEXION */
$mysqli->close();
?>				
