<!DOCTYPE html>
<?php
if (!isset($_SESSION)) {
    session_start();
}
if (!isset($_GET['tipo'])) {
    $_GET['tipo'] = 0;
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
<!--            <div class="contPagina2">las paginas de alumno y profesor no cogian el fondo de pantalla-->

                <div id="ExamenesAlumnoSinTerminar" class="cajaExamenesAdmin" >
                    <div style='margin-left: 10%'>
                    <?php
                    require_once ('con1.php');
                    $tipo = $_GET['tipo'];
                    if ($resultadoTipo = $mysqli->query("select tipo.idpregunta, tipo.denominacion, p.pregunta, p.idexamen, ex.denominacion from tiporespuestapropuesta as tipo 
join preguntas as p on tipo.idpregunta=p.idpregunta join examenes as ex on p.idexamen= ex.idexamen  where idtiporespuesta=" . $tipo)) {

                        while ($fila = $resultadoTipo->fetch_assoc()) {
                            echo $fila['idexamen']. "<br>" . $fila['pregunta'] . "<br>" . $fila['denominacion'] . "<br>";
                        }

                        $SiImagen = $mysqli->query("SELECT * FROM recursostiporespuestapropuesta WHERE idtiporesppropuesta=" . $tipo . "   and recursovalor like 'recursosSubidos%' and (recursovalor like '%.jpg' or recursovalor like '%.gif' or recursovalor like '%.png' or recursovalor like '%.JPG' or recursovalor like '%.GIF' or recursovalor like '%.PNG')");
                        $numeroRegistros = $SiImagen->num_rows;
                        if ($numeroRegistros) {
                            while ($filaImg = $SiImagen->fetch_assoc()) {

                                echo"<p  class='claseVisualizarRecursoPropuesta' >Recurso : </p><img style='width:90%;border-radius:15px' class='claseVisualizarRecursoPropuesta' id=" . $filaImg['idrecursostiporespuestapropuesta'] . " src='" . $filaImg['recursovalor'] . "'> ";
                            }
                        }

                        $resultadoRecursoPropuesta = $mysqli->query("select idrecursostiporespuestapropuesta , recursovalor  from recursostiporespuestapropuesta where idtiporesppropuesta=" . $tipo . " and (recursovalor not like '%.jpg'  and recursovalor not like '%.gif' and recursovalor not like '%.png' and recursovalor not like '%.JPG' and recursovalor not like '%.GIF' and recursovalor not like '%.PNG')");
                        $numeroRegistro = $resultadoRecursoPropuesta->num_rows;
                        if ($numeroRegistro) {
                            while ($fila2 = $resultadoRecursoPropuesta->fetch_assoc()) {
                                echo"<div class='claseVisualizarRecursoPropuesta' id=" . $fila2['idrecursostiporespuestapropuesta'] . " > Recurso : " . $fila2['recursovalor'] . "</div>";
                            }
                        }

                        $SiImagen->free();
                        $resultadoRecursoPropuesta->free();
                        $resultadoTipo->free();
                    } else {
                        echo"Ese no es tu examen ";
                    }
                    $mysqli->close();
                    ?>
                    <form class="css3Form" id="formFileAlumno" action="subirRecursosAlumno.php" method="post" enctype="multipart/form-data" target="iframeSubida">
                        Sube recursos:<br>

                        <input type="file" id="fileAlumno" name="fileAlumno" /><br>

                        <input type="submit" id="subirRecAlumno" value="Upload!" />
                    </form>
                    <iframe id="iframeSubida" name="iframeSubida" src="#" hidden="" style="width:0; height:0; border:0px"></iframe>
                    <textarea rows="5" cols="40" id="areatextoFeedNuevo"></textarea><br>
             
                <div id="subirRecAlumnoDiv"></div>
                    </div>
<!--   </div>-->
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
