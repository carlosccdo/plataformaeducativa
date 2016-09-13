<!DOCTYPE html>
<?php
if (!isset($_SESSION)) {
    session_start();
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
<?php include 'menuVertical.php'; ?>
            <!--desde aqui va el contenido-->
         <div class="contPagina2"><!-- las paginas de alumno y profesor no cogian el fondo de pantalla-->

                <div id="ExamenesAlumnoSinTerminar" class="cajaExamenesAdmin"> 
                    <?php
                    require_once ('con1.php');

                    $resultadoExamen = $mysqli->query("select examenes.idexamen, denominacion from examenes
join relacionexamenalumno 
on examenes.idexamen=relacionexamenalumno.idexamen
where relacionexamenalumno.idusuario=" . $_SESSION['idusuario']);
                    while ($fila = $resultadoExamen->fetch_assoc()) {
                        echo"<div class='claseVisualizarExamen' style='margin-left:10%'> <a class='butExamenAlumno'  href='preguntaExamenAlumno.php?exam=" . $fila['idexamen'] . "&cont=0' >" . $fila['denominacion'] . "</a></div>";
                    }
                    ?>
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
