<?php

$ruta = "recursosSubidos/";
$rutabase = basename($_FILES['file']['name']);
$ruta = $ruta . basename($_FILES['file']['name']);
require_once ('con1.php');


if (pathinfo($rutabase, PATHINFO_EXTENSION) === "exe" || filesize($ruta) > 2000000) {

    $mysqli->query("insert into recursostiporespuestapropuesta(recursovalor,idtiporesppropuesta) values('Archivo no valido',-2)");
} else {

    if (move_uploaded_file($_FILES['file']['tmp_name'], $ruta)) {

        $mysqli->query("insert into recursostiporespuestapropuesta(recursovalor,idtiporesppropuesta) values('" . $ruta . "',-1)");
    }
}
$mysqli->close();
?>
