<?php

// Para que no se de un ERROR (al coexistir un include / require /require_once con un header location
// es necesario que en el fichero con1.php no exista espacios en blanco.
$idProfes = array();
$idProfes = $_POST["idProfes"];
$idExamen = $_POST['idExamenEnviado'];


require_once ('con1.php');
$mysqli->set_charset("utf8");


foreach ($idProfes as $value) {

    $mysqli->query("insert into relacionexamenprofesor (idprofesor,idexamen)values(" . $value . "," . $idExamen . ")");
}


//vaciamos resultado y cerramos mysql

$mysqli->close();
