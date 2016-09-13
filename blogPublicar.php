<?php
if (!isset($_SESSION)) {
    session_start();
}
$rutaimg = $_POST['rutaimg'];
$titulo = $_POST['titulo'];
$subtitulo = $_POST['subtitulo'];

$mensaje = $_POST['mensaje'];
$carpeta= 'img/blogImg/';
$url= $carpeta.basename($rutaimg);
$valorListaPublicar=$_POST['valorListaPublicar'];
        
/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
include './con1.php';


/* INSERCCION DE LOS DATOS - TODOS LOS VALORES ENTRE COMILLAS SIMPLES AUNQUE SEAN NUMERICOS */
 $consulta1 = $mysqli->query('SELECT  idforumpropietario FROM forum  where idgrupo ='.$valorListaPublicar);
                            while ($fila1 = $consulta1->fetch_assoc()) {


if ($mysqli->query("INSERT INTO forummensaje (idforum,idusuario,titulo,subtitulo,mensaje,rutaimg) VALUES (".$fila1['idforumpropietario'].",".$_SESSION['idusuario'].",'$titulo','$subtitulo','$mensaje','$url')") === TRUE) {
    echo "<script>alert('The data have been inserted correctly');</script>";
    
}
                                                 
else {
     echo "<script>alert('The data has not been inserted properly');</script>";
                            }
                            
}
//es es el codigo para mostrar el forum del alumno
//$resultado = $mysqli->query("SELECT * FROM forummensaje join usuario on usuario.idusuario=forummensaje.idusuario join forum on forum.idusuario=forummensaje.idusuario where idgrupo=".$_SESSION['idgrupo']);

$resultado = $mysqli->query("SELECT * FROM forummensaje join forum on forummensaje.idforum=forum.idforumpropietario join usuario on usuario.idusuario=forummensaje.idusuario where forum.idgrupo='$valorListaPublicar 'ORDER BY fecha DESC");
/* VOLCADO DE LOS DATOS */

  while ($fila = $resultado->fetch_assoc()) {
  //en la base de datos aparece por defecto img/ por eso compara con img
    if ($fila['rutaimg'] == 'img/blogImg/') {
        /*echo "<div class='clase1' <h1>" . $fila['TITULO'] . "</h1>" . "<h2>" . $fila['SUBTITULO'] . "</h2> " . "<div id='aut_fch'>" . "Escrito por: " . $fila['AUTOR'] . " " . "Fecha " . $fila['FECHA'] . "</div> " . "<div id='art'>" . nl2br(htmlentities($fila['ARTICULO'])) . "</div></div>";*/
                echo "<div id='titulo'><h1>" . $fila['titulo'] . "</h1></div><div class='clase1'>" . "<h2>" . $fila['subtitulo'] . "</h2> " . "<div id='aut_fch'>" . "Written by: " . $fila['nombre']  . " Date: " . $fila['fecha'] . "</div>" . " <div id='art'>" . nl2br(htmlentities($fila['mensaje'])) . "</div>    <a href='#' class='bor' id='".$fila['idforummensaje']."'>Delete </a>    </div>";

    } else {

        echo "<div id='titulo'><h1>" . $fila['titulo'] . "</h1></div><div class='clase1'>" . "<h2>" . $fila['subtitulo'] . "</h2> " . "<div id='aut_fch'>" . "Written by: " . $fila['nombre']  . " Date: " . $fila['fecha'] . "</div> " . "<div class='img'><img class='imgFinal' style='width:90%;border-radius:15px' src='" . $fila['rutaimg'] . "'></div> " . "<div id='art'>" . nl2br(htmlentities($fila['mensaje'])) . "</div>    <a href='#' class='bor' id='".$fila['idforummensaje']."'>Delete </a>    </div>";
    } 
        }

$resultado->free();
/* CIERRE DE LA CONEXION */
$mysqli->close();
?>