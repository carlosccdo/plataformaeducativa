<!DOCTYPE html>
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
        <script src= "pl/jquery.fittext.js" ></script>
        <script src="js/jsApp.js" type="text/javascript"></script>
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>

        <title></title>
    </head>
    <body>
        <?php require './seguridadGlobalaadmin.php'; ?>

        <div class="contPagina">
            <!--Cabecera-->
            <?php include 'cabecera.php'; ?>
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->

                <?php include 'menuVerticalAdmin.php'; ?>
                <!--desde aqui va el contenido-->
 <!--titulo tema -->             

                <div id="temaNuevo" class="escondido cajaExamenesAdmin">
                    <form class="css3Form" id="formTemaNuevo">
                        Titulo del Tema:<br>
                        <input id="titTemaNuevo" name="tituloTemaNuevo" type="text"><br>
                        <input id="butTitTemaNuevo" type="button" value="Listo">
                    </form>
                </div>
 <!--opciones para crear examenes-->
 
                <div id="numPreguntas" class="escondido cajaExamenesAdmin">
                    <form class="css3Form" id="formNumeroPreguntas">
                        Titulo del Examen:<br>
                        <input id="titExamNuevo" name="titExamNuevo" type="text"><br>
                        Cuantas preguntas?:<br>
                        <input type="number" id="numPregNuevoExam" name="numPregNuevoExam" min="1" max="10"><br>
                        Cuantos tipos de respuesta tendrá el axamen?:<br>
                        <input type="number" id="numRespNuevoExam" name="numRespNuevoExam" min="1" max="4"><br>
                        <input id="butNumPregYtipoResp" type="button" value="Listo">
                    </form>

                </div>
  <!--examenes de ese tema o crear examen en ese tema -->
  
                <div id="opcionesDeTema" class="escondido cajaExamenesAdmin">
                     

                </div>
                
             
 
 
 <!--opciones de examen elegido visualizar mandar -->                
                <div id="opcionesDeExamenes" class="escondido cajaExamenesAdmin">
                    <form class="css3Form" id="visualizarExamenesEchosAdmin">
                        <input id="butVisualizarExamenesEchosAdmin" type="button" value="visualizar">
                        <input id="butMandarVisualizarExamenesEchosAdmin" type="button" value="mandar">

                    </form>

                </div>
 
                
 
 
                
 <!--pregunta nueva-->               
                <div id="formEleccionExamen" class="escondido cajaExamenesAdmin">
                    <form class="css3Form" id="pregunta">
                        <p id="pEscribePregunta"></p>
                        <input id="preguntaNueva" name="pregunta1" type="text"><br>
                        <input id="butPregNueva" type="button" value="listo">
                    </form>
                </div>
  <!--recurso nuevo-->
                <div id="recursoNuevo" class="escondido cajaExamenesAdmin">
                    <p class="css3Form" id="pregVisible"></p>
                    <p class="css3Form" id="pDenominacionRecursoNuevo"></p>  
                    <p class="css3Form" id="recursoIncompleto"> <input id="nomRecursoNuevo" name="nomRecursoNuevo" type="text"></p><br>
                    <form class="css3Form" id="formFile" action="subirRecursos.php" method="post" enctype="multipart/form-data" target="iframeSubida">
                        Sube recursos:<br>

                        <input type="file" id="file" name="file" /><br>

                        <input type="submit" id="subirRec" value="Upload!" />
                    </form>

                    <iframe id="iframeSubida" name="iframeSubida" src="#" style="width:0; height:0; border:0px"></iframe>
 <!--recurso ecribir o feedback o texto-->
                    <form class="css3Form" id="tiposRespuesta">
                        o escribe:<br>
                        <textarea rows="7" cols="40" id="areatextoPregNueva"></textarea><br>
                        Feedback:<br>
                        <textarea rows="5" cols="40" id="areatextoFeedNuevo"></textarea><br>
                        <input id="butPreguntaYRecursos" type="button" value="listo">
                    </form>
                </div>
                <div class="escondido" id="recursosSubidos"></div>
 <!--visualizar examen una vez terminado-->
                <div id="visualizarExamenNuevo" class="escondido cajaExamenesAdmin">
                    <input type="button" id="butVisualizarexamenNuevo" value="Visualizar Examen">
                </div>
  <!--visualizar examen cuando elige un examen-->
                <div id="visualizarExamenNuevoCompleto" class="escondido cajaExamenesAdmin">


                </div>
 <!--visualizar profes-->

                <div id="visualizarProfes" class="escondido">
                    
                </div>   
            </div>

            <?php include 'pie.php'; ?>
        </div>
    </body>
</html>
