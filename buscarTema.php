<?php

// Para que no se de un ERROR (al coexistir un include / require /require_once con un header location
// es necesario que en el fichero con1.php no exista espacios en blanco.
$tema=$_POST["tema"];



require_once ('con1.php');
$mysqli->set_charset("utf8");

/* SELECION DE LOS DATOS SIN PROTECCI�N FRENTE A SQL INYECTADO */
// $resultado = $mysqli->query("SELECT usuario, clave FROM usuarios WHERE usuario='$usuario' AND clave='$clave'");	
// PROTECCI�N FRENTE A SQL INYECTADO (FUNCION mysql_real_escape_string)

if ($resultado=$mysqli->query("select idtema from temas where temas='".$tema."'")){
     while ($fila = $resultado->fetch_assoc()) {
         echo $fila['idtema'];
     }
}

        //vaciamos resultado y cerramos mysql
        $resultado->free();
        $mysqli->close();
