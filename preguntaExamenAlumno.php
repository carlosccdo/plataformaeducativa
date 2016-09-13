<!DOCTYPE html>
<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_GET['exam'])) {
    $_GET['exam'] = 0;
}
if (!isset($_GET['cont'])) {
    $_GET['cont'] = -1;
}
?>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/evaluacion.js"></script>
        <LINK REL=StyleSheet HREF="css/evaluacion.css" TYPE="text/css" MEDIA=screen>
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>

        <title></title>
    </head>
    <body>
        <?php require './seguridadGlobalalumno.php'; ?>

        <div class="contPagina">
            <!--Cabecera-->
            <?php include 'cabecera.php'; ?>
            <?php  include 'menuVertical.php'; ?>
            <!--desde aqui va el contenido-->
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->

                <div id="ExamenesAlumnoSinTerminar" class="cajaExamenesAdmin" >
                    <div style='margin-left:10%'>
                    <?php
                    require_once ('con1.php');
                    $idExamen = $_GET['exam'];
                    $cont = $_GET['cont'];
                    if ($idExamen != 0 && $cont != -1) {
                        $cont++;
                        $resultadoExamen = $mysqli->query("select denominacion from examenes where idexamen=" . $idExamen);
                        $resultadoPregunta = $mysqli->query("select idpregunta, pregunta from preguntas where idexamen=" . $idExamen . " order by idpregunta limit " . $cont);
                        $numeroRegistros = $resultadoPregunta->num_rows;
                        $i = 1;
                        while ($fila = $resultadoPregunta->fetch_assoc()) {
                            while ($filaExamen = $resultadoExamen->fetch_assoc()) {
                                if ($i === $numeroRegistros) {
                                    echo $filaExamen['denominacion'];
                                    echo $fila['pregunta'];

                                    $resultadoTipoRespuestaPropuesta = $mysqli->query("select idtiporespuesta, denominacion from tiporespuestapropuesta where idpregunta=" . $fila['idpregunta']);
                                    $contTipoResp = 0;
                                    while ($fila1 = $resultadoTipoRespuestaPropuesta->fetch_assoc()) {
                                        $contTipoResp++;

                                        echo"<div class='divTipoVisualizada'  > Tipo respuesta  " . $contTipoResp . " : <input type='radio'  class='claseVisualizarTipoPropuesta' name='tipoRespPregunta' id='" . $fila1['idtiporespuesta'] . "' >" . $fila1['denominacion'] . "</div>";
                                    }
                                    $resultadoTipoRespuestaPropuesta->free();
                                }
                                $i++;
                            }
                        }
                      
                       // $radio=input:radio[name=respuesta1]:checked').val();

                        $resultadoExamen->free();
                        $resultadoPregunta->free();
                        $mysqli->close();
                    }
                    ?>
                    
                    <input type="button" id="buttipoRespElejida" value="Next">
                    </div>
                </div>


            </div>

        </div>

        <?php include 'pie.php'; ?>
    </body>
</html>
<!--<FORM name="sugerencias" action="http://www.tecnun.es/cgi-bin/ii/CGI0.exe" method="POST" target="resultado">
      <P>Por favor, introduzca sus sugerencias:<BR>
      
      <INPUT type="hidden" name="identificador" value="Z87X09RF"><BR>
      <INPUT type="submit" value="Enviar">   <INPUT type="reset" value="Borrar">
      </P>
    </FORM>
