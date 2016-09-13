<?php

$idExamen = $_POST['idExamen'];
$idTema = $_POST['idTema'];

require_once ('con1.php');
$resultadoTema = $mysqli->query("select temas from temas where idtema=" . $idTema);
while ($fila = $resultadoTema->fetch_assoc()) {
    echo"<div class='claseVisualizarExamen'> <h2 class='claseVisualizarExamen'  id=" . $idTema . " > Tema :" . $fila['temas'] . "</h2></div>";
}
$resultadoExamen = $mysqli->query("select idexamen, denominacion from examenes where idexamen=" . $idExamen);
while ($fila = $resultadoExamen->fetch_assoc()) {
    echo"<div class='claseVisualizarExamen'> <h1 style='margin-left:30%' class='claseVisualizarExamen'  id=" . $fila['idexamen'] . " > Actividad : " . $fila['denominacion'] . "</h1></div>";
}
$resultadoExamen->free();
$resultadoPregunta = $mysqli->query("select idpregunta, pregunta from preguntas where idexamen=" . $idExamen);
$contPregunta = 0;

while ($fila = $resultadoPregunta->fetch_assoc()) {
    $contPregunta++;
    $contTipoResp = 0;
    echo"<div class='claseVisualizarPregunta'  id=" . $fila['idpregunta'] . " > Pregunta " . $contPregunta . "  : " . $fila['pregunta'] . "</div>";
    $resultadoTipoRespuestaPropuesta = $mysqli->query("select idtiporespuesta, denominacion from tiporespuestapropuesta where idpregunta=" . $fila['idpregunta']);
    while ($fila1 = $resultadoTipoRespuestaPropuesta->fetch_assoc()) {
        $contTipoResp++;

        echo"<div class='divTipoVisualizada' > Nombre del recurso  " . $contTipoResp . " : <span class='claseVisualizarTipoPropuesta'  id='" . $fila1['idtiporespuesta'] . "' >" . $fila1['denominacion'] . "</span></div>";
        $SiImagen = $mysqli->query("SELECT * FROM recursostiporespuestapropuesta WHERE idtiporesppropuesta=" . $fila1['idtiporespuesta'] . "   and recursovalor like 'recursosSubidos%' and (recursovalor like '%.jpg' or recursovalor like '%.gif' or recursovalor like '%.png' or recursovalor like '%.JPG' or recursovalor like '%.GIF' or recursovalor like '%.PNG')");
        $numeroRegistros = $SiImagen->num_rows;
        if ($numeroRegistros) {
            while ($filaImg = $SiImagen->fetch_assoc()) {

                echo"<p  class='claseVisualizarRecursoPropuesta' >Imagen de respuesta  " . $contTipoResp . " : </p><img style='width:80%;border-radius:15px' class='claseVisualizarRecursoPropuesta' id=" . $filaImg['idrecursostiporespuestapropuesta'] . " src='" . $filaImg['recursovalor'] . "'> ";
            }
        }

        $resultadoRecursoPropuesta = $mysqli->query("select idrecursostiporespuestapropuesta , recursovalor  from recursostiporespuestapropuesta where idtiporesppropuesta=" . $fila1['idtiporespuesta'] . " and recursovalor not like 'recursosSubidos%'");
        $numeroRegistro = $resultadoRecursoPropuesta->num_rows;
        if ($numeroRegistro) {
            while ($fila2 = $resultadoRecursoPropuesta->fetch_assoc()) {
                echo"<div class='claseVisualizarRecursoPropuesta' id=" . $fila2['idrecursostiporespuestapropuesta'] . " >Texto de respuesta  " . $contTipoResp . ":</br> " . $fila2['recursovalor'] . "</div>";
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
echo "   <input id='" . $idExamen . "' type='button' value='Modificar' class='modificarExamen' > <br> <input id='" . $idExamen . "' type='button' value='Enviar' class='enviarExamenProfe' >";

$resultadoPregunta->free();
$resultadoTema->free();
$mysqli->close();
