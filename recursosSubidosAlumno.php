<?php

//if (!isset($_SESSION)) {
//    session_start();
//}
require_once ('con1.php');
sleep(2);

$resultado1 = $mysqli->query("select * from recursostiporespuestaofrecida
where  idtiporesppropuesta = -2 
order by idrecursostiporespuestaofrecida desc
limit 1");
$numeroRegistros = $resultado1->num_rows;
//si hay registros en la select
if ($numeroRegistros>0) {
 while ($fila = $resultado1->fetch_assoc()) {
        echo "<p  class='recSubidos'> Archivo  NO valido</p>";
        $mysqli->query("update  recursostiporespuestaofrecida set  idtiporesppropuesta=-3
 where  idtiporesppropuesta = -2");}
    /*//echo "<p  class='recSubidos'> Archivo  NO valido</p>";
    $mysqli->query("update  recursostiporespuestaofrecida set  idtiporesppropuesta=-3
where  idtiporesppropuesta = -2");*/
} else {
    $resultado = $mysqli->query("select recursovalor from recursostiporespuestaofrecida
where idtiporesppropuesta = -1 order by idrecursostiporespuestaofrecida asc ");
    $numeroRegistro = $resultado->num_rows;
    $cont = 1;
    while ($fila = $resultado->fetch_assoc()) {
        if ($numeroRegistro === $cont) {
            echo "<p  class='recSubidos'> Archivo " . $fila['recursovalor'] . " Subido Correctamente</p>";
       
            
            
            
        }$cont++;
    }
    $resultado->free();
}
$resultado1->free();
$mysqli->close();
