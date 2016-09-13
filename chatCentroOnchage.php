<?php

/* CAPTURA LOS DATOS ENVIADOS DESDE LOS CAMPOS DE TEXTO */
if (!isset($_SESSION)) {
    session_start();
}
$valorLista = $_POST['valorLista'];





/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
include './con1.php';

/* SELECION DE LOS DATOS */




$consulta = $mysqli->query("select nombre,usuario.idusuario,usuario.nivel from usuario join grupointegrantes on usuario.idusuario=grupointegrantes.idusuario where (grupointegrantes.idusuario!='" . $_SESSION['idusuario'] . "'and grupointegrantes.idgrupo=$valorLista ) or (usuario.nivel=1)group by grupointegrantes.idusuario
");
echo "<option id='sinUsuarioChat'>Elige un usuario</option>";
while ($fila = $consulta->fetch_assoc()) {

    echo" <option id ='" . $fila['idusuario'] . "' value='" . $fila['idusuario'] . "'>" . $fila['nombre'] . "</option>";
}





$mysqli->close();
?>
