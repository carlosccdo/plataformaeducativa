<?php

// Para que no se de un ERROR (al coexistir un include / require /require_once con un header location
// es necesario que en el fichero con1.php no exista espacios en blanco.

$idExamen=$_POST["ididExamenEniar"];

require_once ('con1.php');
$mysqli->set_charset("utf8");




$resultado = $mysqli->query("SELECT idusuario, usuario.nombre as nombreUsuario , apellido1,usuario.idcentro,centro.nombre as nombreCentro from usuario join centro on centro.idcentro=usuario.idcentro where nivel = 2");
while ($fila = $resultado->fetch_assoc()) {
    echo"<input class='checkboxProfe' id='" . $fila['idusuario'] . "' type='checkbox' name='profe' >" . $fila['nombreUsuario'] . " " . $fila['apellido1'] ." centro " . $fila['nombreCentro'] . "<br>";
}
echo"<input id=".$idExamen." type='button' class='enviarAProfe' value='Enviar' >";
$resultado->free();
$mysqli->close();
