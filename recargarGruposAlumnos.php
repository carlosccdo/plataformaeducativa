<?php

//finciona con las letras pero no con los numeros

/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
if (!isset($_SESSION)) {
    session_start();
}

include './con1.php';


        
        $consulta = $mysqli->query('SELECT distinct grupo.idgrupo,nombregrupo FROM grupo join grupointegrantes on grupo.idgrupo=grupointegrantes.idgrupo where grupointegrantes.idusuario=' . $_SESSION['idusuario']);

                                    while ($fila = $consulta->fetch_assoc()) {

                                        echo" <option id ='" . $fila['idgrupo'] . "' value='" . $fila['nombregrupo'] . "'>" . $fila['nombregrupo'] . "</option>";
                                    }


// Volcado de los datos

$consulta->free();
/* CIERRE DE LA CONEXION */
$mysqli->close();
?>