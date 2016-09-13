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
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>

        <title></title>
    </head>
    <body>
               <?php require './seguridadSin.php'; ?>


        <div class="contPagina">
            <!--Cabecera-->
            <?php include './cabecera.php'; ?>
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->


                <div id="cajaTablon">
                    <div id="encabezadoTablon">

                        <h1 id="tituloTablon"> Blackboard </h1>

                        <span id="subtituloTablon">Comments from users who tested our application</span>

                    </div>



                    <div id="pagTablon">


                        <?php
                        /* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
                        include './con1.php';


                        $resultado = $mysqli->query("SELECT tablon.titulo,centro.nombre as centro,tablon.nombre,tablon.fecha,tablon.mensaje,idtablon FROM centro join usuario on usuario.idcentro= centro.idcentro join tablon on tablon.idemisor= usuario.idusuario ORDER BY fecha DESC
");
                        /* VOLCADO DE LOS DATOS */

                        while ($fila = $resultado->fetch_assoc()) {

                            echo "<div id='tituloPublicar'><h3>" . $fila['titulo'] . "</h3> Center: " . $fila['centro'] . "<br></div><div class='clase1'><div id='aut_fch'>  written by: " . $fila['nombre'] . " ," . "Date " . $fila['fecha'] . "</div>" . " <div id='art'>" . nl2br(htmlentities($fila['mensaje'])) . "</div>    <a href='tablon.php#' class='borp' id='" . $fila['idtablon'] . "'>delete </a>    </div>";
                        }

                       
                        $resultado->free();

                        /* CIERRE DE LA CONEXION */
                        $mysqli->close();
                        ?>

                    </div>

                </div>




            </div>

<?php include 'pie.php'; ?>
        </div>
    </body>
</html>
