<?php

// Para que no se de un ERROR (al coexistir un include / require /require_once con un header location
// es necesario que en el fichero con1.php no exista espacios en blanco.
$idpreg = $_POST["idpreg"];
$nombreRec = $_POST["nombreRec"];
$areatexto = $_POST["areatexto"];
$areafeed = $_POST["areafeed"];

require_once ('con1.php');
$mysqli->set_charset("utf8");

$resultadoId = $mysqli->query("select  idtiporespuesta from tiporespuestapropuesta where idpregunta=" . $idpreg . " and denominacion='" . $nombreRec . "' ");
$numeroRegistros = $resultadoId->num_rows;
//si hay registros en la select
if ($numeroRegistros === 0) {
    $mysqli->query("insert into tiporespuestapropuesta (idpregunta,denominacion)values(" . $idpreg . ",'" . $nombreRec . "')");
$resultado = $mysqli->query("select  idtiporespuesta from tiporespuestapropuesta where idpregunta=" . $idpreg . " and denominacion='" . $nombreRec . "' ");
    while ($fila3 = $resultado->fetch_assoc()) {
        $mysqli->query("insert into recursostiporespuestapropuesta(recursovalor, idtiporesppropuesta) values('" . $areatexto . "'," . $fila3['idtiporespuesta'] . ")");
        $mysqli->query("insert into feedbacktiporespuestapropuesta (texto, idtiporespuestapropuesta) values('" . $areafeed . "', " . $fila3['idtiporespuesta'] . ")");
        $mysqli->query("UPDATE recursostiporespuestapropuesta SET idtiporesppropuesta=" . $fila3['idtiporespuesta'] . " where idtiporesppropuesta =" . -1);
    }
    $resultado->free();
} else {

    echo"no";
}
$resultadoId->free();
$mysqli->close();
