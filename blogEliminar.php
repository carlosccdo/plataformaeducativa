<?php

/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
include './con1.php';

/* CAPTURA LA MATRIZ ENVIADA DESDE FUNCIONES.JS */
$valorListaEliminar=$_POST['valorListaEliminar'];

if (empty( $_POST['id'])){
exit();

}else{
    $id= $_POST['id'];
}


    /* ELIMINACION DE LOS REGISTROS - TODOS LOS VALORES ENTRE COMILLAS SIMPLES AUNQUE SEAN NUMERICOS */
    if ($mysqli->query("DELETE FROM forummensaje WHERE idforummensaje='$id'") === TRUE) {



        //SELECION DE LOS DATOS 
$resultado = $mysqli->query("SELECT * FROM forummensaje join forum on forummensaje.idforum=forum.idforumpropietario join usuario on usuario.idusuario=forummensaje.idusuario where forum.idgrupo='$valorListaEliminar 'ORDER BY fecha DESC");



        /* VOLCADO DE LOS DATOS */

        while ($fila = $resultado->fetch_assoc()) {
            //en la base de datos aparece por defecto img/ por eso compara con img
            if ($fila['rutaimg'] == 'img/blogImg/') {
                /* echo "<div class='clase1' <h1>" . $fila['TITULO'] . "</h1>" . "<h2>" . $fila['SUBTITULO'] . "</h2> " . "<div id='aut_fch'>" . "Escrito por: " . $fila['AUTOR'] . " " . "Fecha " . $fila['FECHA'] . "</div> " . "<div id='art'>" . nl2br(htmlentities($fila['ARTICULO'])) . "</div></div>"; */
                echo "<div id='titulo'><h1>" . $fila['titulo'] . "</h1></div><div class='clase1'>" . "<h2>" . $fila['subtitulo'] . "</h2> " . "<div id='aut_fch'>" . "Written by: "  . $fila['nombre']  . " Date: " . $fila['fecha'] . "</div>" . " <div id='art'>" . nl2br(htmlentities($fila['mensaje'])) . "</div>    <a href='#' class='bor' id='" . $fila['idforummensaje'] . "'>Delete </a>    </div>";
            } else {

                echo "<div id='titulo'><h1>" . $fila['titulo'] . "</h1></div><div class='clase1'>" . "<h2>" . $fila['subtitulo'] . "</h2> " . "<div id='aut_fch'>" . "Written by: " . $fila['nombre']  . " Date: " . $fila['fecha'] . "</div> " . "<div class='img'><img class='imgFinal' style='width:90%;border-radius:15px' src='" . $fila['rutaimg'] . "'></div> " . "<div id='art'>" . nl2br(htmlentities($fila['mensaje'])) . "</div>    <a href='#' class='bor' id='" . $fila['idforummensaje'] . "'>Delete </a>    </div>";
            }
        }
    } else {
        printf("Los datos no han sido eliminados");
    }


$resultado->free();
/* CIERRE DE LA CONEXION */
$mysqli->close();
?>
