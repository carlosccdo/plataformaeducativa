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
        <script src="js/jsApp2.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="css/chatCss.css">
        <script src= "pl/jquery.fittext.js" ></script>
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>

        <title></title>
    </head>
    <body>
         <?php require './seguridadGlobalalumno.php'; ?>
        
        <div class="contPagina">
            <!--Cabecera-->
         <?php include './cabecera.php'; ?>
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->

                <?php include 'menuVertical.php'; ?>
                
                 <!--desde aqui va el contenido-->
                 
          <!--chat-->
                    <div class="ocultarDiv mostrarChat" id="chatAlumnos">
                        <div id='resultado'>
                            <h1 id="tituloChat">Chat Web APP</h1>
                            <div id='texto'></div>
                        </div>
                        <div id='botones'>
                        <input type='text'   id='texto_chat'   name='texto_chat' ><br>
                            
                            <select id="contenedorUsuario" name="contenedorUsuario">
                              
                                <?php

/* CAPTURA LOS DATOS ENVIADOS DESDE LOS CAMPOS DE TEXTO */
if (!isset($_SESSION)) {
    session_start();
}
/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
include './con1.php';

/* SELECION DE LOS DATOS */




        $consulta = $mysqli->query("select nombre,nivel,usuario.idusuario from usuario join grupointegrantes on usuario.idusuario=grupointegrantes.idusuario where (usuario.nivel =2 and grupointegrantes.idusuario!='" . $_SESSION['idusuario'] . "'and grupointegrantes.idgrupo='" . $_SESSION['idgrupo'] . "'  ) or (usuario.nivel=1)group by grupointegrantes.idusuario
        ");
            echo "<option id='sinUsuarioChat'>Elige un usuario</option>";
            while ($fila = $consulta->fetch_assoc()) {

             echo" <option id ='" . $fila['idusuario'] . "' value='" . $fila['idusuario'] . "'>" . $fila['nombre'] . "</option>";
         }





$mysqli->close();
?>
                            </select>
                             <input type='button' id='enviar'  name='enviar' value='Enviar' onclick="chatear()" >
                        </div>

                    </div>


           

<!-- forum-->
                <div id="cajaBlog" class="ocultarDiv mostrarForum">
                    <div id="encabezadoBlog">
                        <h1 id="portada"> Welcome to your blog</h1>
                        <span id="portada2">This is a place to share your ideas </span><br><br><br><br>  
<!--forums de grupos-->

                        <select id="selectcentroBlog" name="selectcentroBlog" hidden="" >
<!--                            <option id="Elige_un_grupo">Elige un grupo</option>-->
                            <?php
                            include './con1.php';
                            if (!isset($_SESSION)) {
                            session_start();
                            }
                            $consulta5 = $mysqli->query('SELECT distinct grupo.idgrupo,nombregrupo FROM grupo join grupointegrantes on grupo.idgrupo=grupointegrantes.idgrupo where grupointegrantes.idusuario=' . $_SESSION['idusuario']);
                            while ($fila3 = $consulta5->fetch_assoc()) {
                            echo" <option id ='" . $fila3['idgrupo'] . "' value='" . $fila3['idgrupo'] . "'>" . $fila3['nombregrupo'] . "</option>";
                            }
                            //Vaciado de la variable
                            $consulta5->free();
                            //Cierre de la conexion
                            $mysqli->close();
                            ?>
                        </select>

                    </div>

                    <div id="reg">

                        <form method="post" action="blogImg.php" enctype="multipart/form-data" target="fr">
                            title<br>
                            <input name="titulo" type="text" id="titulo"  ><br>
                            subtitle<br>
                            <input name="subtitulo" type="text" id="subtitulo" ><br>
                            <textarea name="mensaje" id="mensaje" placeholder="Write your comment" rows="5%" cols="30%"></textarea><br>
                            <input type="file" name="rutaimg" id="rutaimg"  ><br>
                            <input type="submit" name="enviar" id="botcar" value="Submit" class="bo">
                        </form>
                        <iframe id="fr" name="fr" src="#" hidden=""></iframe>
                    </div>
                    
                    <div id="cajapublicar">
                            <a href="#"> <img src="img/blogImg/publicar.png" id="botreg" alt="Publish article"></a>
                    </div>
                    <!-- <input type="button" id="botreg"value="publicar"><br>-->
                    <div id="pag"></div>
                </div>
<!--tablon-->

                <div id="cajaTablon" class="ocultarDiv mostrarTablon">
                    <div id="encabezadoTablon">
                        <h2 id="tituloTablon"> Tell us your experience </h2>
                    </div>

                    <div id="regTablon">

                        <form method="post" target="fr">
                            title<br>
                            <input name="titulo" type="text" id="tituloT"  ><br>
                            name or alias<br>
                            <input name="nombre" type="text" id="nombreT"  ><br>
                            <textarea name="mensaje" id="mensajeT" placeholder="Write your comment" rows="5%" cols="30%"></textarea><br>
                            <input type="submit" name="botcarp" id="botcarp" value="Submint" class="bop">
                        </form>
                        <iframe id="fr" name="fr" src="tablon.php" hidden=""></iframe>
                        
                    </div>
                    <div id="mensajeTablon"></div>
                    <!-- <div id="cajapublicar">
                         
                          <a href="#"> <img src="img/blogImg/publicar.png" id="botreg" alt="publicar articulo"></a>
                     </div>
                    <input type="button" id="botreg"value="publicar"><br>-->



                </div>
<!--cuestionario-->
                <div id="cajaExamen" class="ocultarDiv mostrarCuestionario">
                    <div id="encabezadoExamen">
                        <h1 id="tituloExamen"> Questionnaire </h1>
                        <span id="subtituloExamen">write or choose the following questions</span>
                    </div>

                    <form id="cuestionario" name="examen" action="#" method="post">
                        <p>Task 1</p>
                        <input type="radio" value="1" name="respuesta_1" /> completely disagree <br />
                        <input type="radio" value="2" name="respuesta_1" /> disagree<br />
                        <input type="radio" value="3" name="respuesta_1" /> quite agree<br />
                        <input type="radio" value="4" name="respuesta_1" />agree<br />
                        <input type="radio" value="5" name="respuesta_1" />completely disagree<br />
                        <p>Task 2</p>
                        <input type="radio" value="1" name="respuesta_1" /> completely disagree <br />
                        <input type="radio" value="2" name="respuesta_1" /> disagree<br />
                        <input type="radio" value="3" name="respuesta_1" /> quite agree<br />
                        <input type="radio" value="4" name="respuesta_1" />agree<br />
                        <input type="radio" value="5" name="respuesta_1" />completely disagree<br />
                        <p>Task 3</p>
                        <input type="radio" value="1" name="respuesta_1" /> completely disagree <br />
                        <input type="radio" value="2" name="respuesta_1" /> disagree<br />
                        <input type="radio" value="3" name="respuesta_1" /> quite agree<br />
                        <input type="radio" value="4" name="respuesta_1" />agree<br />
                        <input type="radio" value="5" name="respuesta_1" />completely disagree<br />
                        <p>Task 4</p>
                        <textarea name="pregunta4" id="articulo" placeholder="write your answer" rows="5%" cols="30%"></textarea><br>
                        <p>Task 5</p>
                        <textarea name="pregunta5" id="articulo" placeholder="write your answer" rows="5%" cols="30%"></textarea><br>
                        <p><input type="submit" name="evaluar" value="Submint" /></p>
                    </form>
                </div>

            </div>
 </div>
            <?php include 'pie.php'; ?>
        </div>
    </body>
</html>
