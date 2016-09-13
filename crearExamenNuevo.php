<?php

if (!isset($_SESSION)) {
    session_start();
}
// Para que no se de un ERROR (al coexistir un include / require /require_once con un header location
// es necesario que en el fichero con1.php no exista espacios en blanco.
$titulo = $_POST["examenNuevo"];
$idTemaNuevo = $_POST["idTemaNuevo"];



require_once ('con1.php');
$mysqli->set_charset("utf8");

/* SELECION DE LOS DATOS SIN PROTECCI�N FRENTE A SQL INYECTADO */
// $resultado = $mysqli->query("SELECT usuario, clave FROM usuarios WHERE usuario='$usuario' AND clave='$clave'");	
// PROTECCI�N FRENTE A SQL INYECTADO (FUNCION mysql_real_escape_string)
$titulo = $mysqli->real_escape_string($titulo);
if (($resultado1 = $mysqli->query("select idexamen from examenes where denominacion='" . $titulo . "'"))) {

    // Determina el numero de filas devueltas por la consulta
    $numeroRegistros = $resultado1->num_rows;
//si hay registros en la select
    if ($numeroRegistros) {
        
    } else {

        if (($mysqli->query("insert into examenes (denominacion,idprofe,idtema)values('" . $titulo . "','" . $_SESSION['idusuario'] . "','" . $idTemaNuevo . "')")) == false) {
            printf('error en la Base de datos');
        } else {


            if ($resultado = $mysqli->query("select idexamen from examenes where denominacion='" . $titulo . "'")) {
                while ($fila = $resultado->fetch_assoc()) {
                    echo $fila['idexamen'];
                }
            }
        }
//        if (($mysqli->query("insert into examenes (denominacion,idprofe)values('" . $titulo . "','" . $_SESSION['idusuario'] . "')")) == true) {
//           
//              if ($resultado = $mysqli->query("select idexamen from examenes where denominacion='" . $titulo . "'")) {
//                while ($fila = $resultado->fetch_assoc()) {
//                    echo $fila['idexamen'];
//                }
//            }
//            
//           
//        } else {
//
// printf('error en la Base de datos');
//           
//        }
    }
}
//vaciamos resultado y cerramos mysql
$resultado->free();
$mysqli->close();
