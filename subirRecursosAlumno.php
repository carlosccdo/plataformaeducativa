<?php
//if (!isset($_SESSION)) {
//    session_start();
//} 

$ruta = "recursosSubidos/";
$rutabase = basename($_FILES['fileAlumno']['name']);
$ruta = $ruta . basename($_FILES['fileAlumno']['name']);
require_once ('con1.php');


if (pathinfo($rutabase, PATHINFO_EXTENSION) === "exe" || filesize($ruta) > 2000000) {

    $mysqli->query("insert into recursostiporespuestaofrecida(recursovalor,idtiporesppropuesta) values('Archivo no valido',-2)");
} else {

    if (move_uploaded_file($_FILES['fileAlumno']['tmp_name'], $ruta)) {

        $mysqli->query("insert into recursostiporespuestaofrecida(recursovalor,idtiporesppropuesta) values('" . $ruta . "',-1)");
    }
}
$mysqli->close();
?>
