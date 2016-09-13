<?php

// Para que no se de un ERROR (al coexistir un include / require /require_once con un header location
// es necesario que en el fichero con1.php no exista espacios en blanco.
$pregunta = $_POST["pregunta"];
$idTema = $_POST["idTema"];
$idExamen = $_POST["idExamen"];

require_once ('con1.php');
$mysqli->set_charset("utf8");

/* SELECION DE LOS DATOS SIN PROTECCI�N FRENTE A SQL INYECTADO */
// $resultado = $mysqli->query("SELECT usuario, clave FROM usuarios WHERE usuario='$usuario' AND clave='$clave'");	
// PROTECCI�N FRENTE A SQL INYECTADO (FUNCION mysql_real_escape_string)
$resultado1 = $mysqli->query("select idpregunta from preguntas where pregunta='" . $pregunta . "' and idexamen=" . $idExamen);

// Determina el numero de filas devueltas por la consulta
$numeroRegistros = $resultado1->num_rows;
//si hay registros en la select
if ($numeroRegistros) {
    echo 'no';
} else {



    if (($mysqli->query("insert into preguntas (pregunta,idtema,idexamen)values('" . $pregunta . "','" . $idTema . "','" . $idExamen . "')")) == false) {
        printf('error en la Base de datos');
    } else {
        if (($resultado = $mysqli->query("select idpregunta from preguntas where pregunta='" . $pregunta . "' order by idpregunta desc limit 1"))) {
            while ($fila = $resultado->fetch_assoc()) {
                echo $fila['idpregunta'];
            }
            $resultado->free();
        }
    }
}

$resultado1->free();
$mysqli->close();
