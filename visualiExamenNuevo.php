<?php


$idTemaNuevo = $_POST['idTemaNuevo'];
$idexamen = $_POST['idexamen'];

require_once ('con1.php');
$resultadoTema = $mysqli->query("select temas from temas where idtema=" . $idTemaNuevo);
while ($fila = $resultadoTema->fetch_assoc()) {
    echo"<div class='claseVisualizarExamen'> <h2 class='claseVisualizarExamen'  id=" . $idTemaNuevo . " > Tema :" . $fila['temas'] . "</h2></div>";
}
$resultadoExamen = $mysqli->query("select idexamen, denominacion from examenes where idexamen=" . $idexamen);
while ($fila10 = $resultadoExamen->fetch_assoc()) {
    echo"<div class='claseVisualizarExamen'> <h1 style='margin-left:30%' class='claseVisualizarExamen'  id=" . $fila10['idexamen'] . " > Actividad : " . $fila10['denominacion'] . "</h1></div>";


$resultadoPregunta = $mysqli->query("select idpregunta, pregunta from preguntas where idexamen=" . $fila10['idexamen']);
$contPregunta = 0;

while ($fila11 = $resultadoPregunta->fetch_assoc()) {
    $contPregunta++;
    $contTipoResp = 0;
    echo"<div class='claseVisualizarPregunta'  id=" . $fila11['idpregunta'] . " ><h3> Pregunta " . $contPregunta . "  : " . $fila11['pregunta'] . "</h3></div>";
    $resultadoTipoRespuestaPropuesta = $mysqli->query("select idtiporespuesta, denominacion from tiporespuestapropuesta where idpregunta=" . $fila11['idpregunta']);
    while ($fila1 = $resultadoTipoRespuestaPropuesta->fetch_assoc()) {
        $contTipoResp++;

        echo"<div class='claseVisualizarTipoPropuesta'  id=" . $fila1['idtiporespuesta'] . " >Nombre de respuesta  " . $contTipoResp . " : " . $fila1['denominacion'] . "</div>";
        $SiImagen = $mysqli->query("SELECT * FROM recursostiporespuestapropuesta WHERE idtiporesppropuesta=" . $fila1['idtiporespuesta'] . "   and recursovalor like 'recursosSubidos%' and (recursovalor like '%.jpg' or recursovalor like '%.gif' or recursovalor like '%.png' or recursovalor like '%.JPG' or recursovalor like '%.GIF' or recursovalor like '%.PNG')");
        $numeroRegistros = $SiImagen->num_rows;
        if ($numeroRegistros) {
            while ($filaImg = $SiImagen->fetch_assoc()) {

                echo"<p id=" . $filaImg['idrecursostiporespuestapropuesta'] . " class='claseVisualizarRecursoPropuesta' >Imagen de respuesta  " . $contTipoResp . " : </p><img style='width:80%;border-radius:15px' class='claseVisualizarRecursoPropuesta tamImagen' id=" . $filaImg['idrecursostiporespuestapropuesta'] . " src='" . $filaImg['recursovalor'] . "'> ";
            }
        }

        $resultadoRecursoPropuesta = $mysqli->query("select idrecursostiporespuestapropuesta , recursovalor  from recursostiporespuestapropuesta where idtiporesppropuesta=" . $fila1['idtiporespuesta']." and recursovalor not like 'recursosSubidos%'" );
        $numeroRegistro = $resultadoRecursoPropuesta->num_rows;
        if ($numeroRegistro) {

            while ($fila2 = $resultadoRecursoPropuesta->fetch_assoc()) {

                echo"<div class='claseVisualizarRecursoPropuesta' id=" . $fila2['idrecursostiporespuestapropuesta'] . " > Texto de respuesta  " . $contTipoResp . "  : </br>" . $fila2['recursovalor'] . "</div>";
            }
        }
        $resultadoFeed = $mysqli->query("select idfeedbacktiporespuestapropuesta, texto from feedbacktiporespuestapropuesta where idtiporespuestapropuesta=" . $fila1['idtiporespuesta']);
        while ($fila3 = $resultadoFeed->fetch_assoc()) {
            echo"<div class='claseVisualizarFedbackTipoResp' id=" . $fila3['idfeedbacktiporespuestapropuesta'] . " > Feedback de respuesta " . $contTipoResp . " :</br> " . $fila3['texto'] . "</div>";
        }
        $SiImagen->free();
        $resultadoRecursoPropuesta->free();
        $resultadoFeed->free();
    }
    $resultadoTipoRespuestaPropuesta->free();
}
}
echo "   <input id='modificarExamen' type='button' value='Modificar' >";
$resultadoPregunta->free();
$resultadoTema->free();
$resultadoExamen->free();
$mysqli->close();
