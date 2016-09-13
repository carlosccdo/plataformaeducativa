<?php

require_once ('con1.php');
sleep(2);
$resultado1 = $mysqli->query("select recursovalor, idrecursostiporespuestapropuesta from recursostiporespuestapropuesta 
where  idtiporesppropuesta = -2
order by idrecursostiporespuestapropuesta desc
limit 1");
$numeroRegistros = $resultado1->num_rows;
//si hay registros en la select
if ($numeroRegistros > 0) {

    while ($fila = $resultado1->fetch_assoc()) {
        echo "<p  class='recSubidos'> Archivo  NO valido</p>";
        $mysqli->query("update  recursostiporespuestapropuesta set  idtiporesppropuesta=-3
where  idtiporesppropuesta = -2");
    }
} else {
    $resultado = $mysqli->query("select * from recursostiporespuestapropuesta 
where idtiporesppropuesta = -1 
order by idrecursostiporespuestapropuesta desc
limit 1");
    while ($fila = $resultado->fetch_assoc()) {
        $archivo = pathinfo($fila['recursovalor'], PATHINFO_EXTENSION);
        if ($archivo === "jpg" || $archivo === "png" || $archivo === "gif" || $archivo === "JPG" || $archivo === "PNG" || $archivo === "GIF") {
            echo " <img src='" . $fila['recursovalor'] . "' class='recSubidos'>";
        } else if ($archivo === "pdf") {
            echo "<iframe  class='recSubidos' src='" . $fila['recursovalor'] . "' ></iframe>";
        } else {
            echo "<p  class='recSubidos'> Archivo " . $fila['recursovalor'] . " Subido Correctamente</p>";
        }
    }
    $resultado->free();
}
$resultado1->free();
$mysqli->close();
