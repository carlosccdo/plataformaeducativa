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
        <script src="js/tablon.js" type="text/javascript"></script>
        <LINK REL=StyleSheet HREF="css/tablon.css" TYPE="text/css" MEDIA=screen>
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>

        <title></title>
    </head>
    <body>
        <?php require './seguridadGlobal.php'; ?>
        <div class="contPagina">
            <!--Cabecera-->
            <?php include 'cabecera.php'; ?>
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->


                <div id="cajaTablon">
                    <div id="encabezadoTablon">

                        <h2 id="tituloTablon"> Tell us your experience </h2>



                    </div>

                    <div id="reg">

                        <form method="post" target="fr">
                            title<br>
                            <input name="titulo" type="text" id="titulo" required ><br>
                            name or alias<br>
                            <input name="nombre" type="text" id="nombre" required ><br>

                            <textarea name="mensaje" id="mensaje" placeholder="Write your comment" rows="5%" cols="30%"></textarea><br>


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




            </div>

            <?php include 'pie.php'; ?>
        </div>
    </body>
</html>
