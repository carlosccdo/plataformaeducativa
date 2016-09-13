<?php
if (!isset($_SESSION)) { session_start(); }

$titulo= $_POST['titulo'];
$nombre=$_POST['nombre'];
$mensaje= $_POST['mensaje'];

        
/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */

include './con1.php';


   

/* INSERCCION DE LOS DATOS - TODOS LOS VALORES ENTRE COMILLAS SIMPLES AUNQUE SEAN NUMERICOS */

if ($mysqli->query("INSERT INTO tablon (titulo,nombre,mensaje,idemisor) VALUES ('$titulo','$nombre','$mensaje',".$_SESSION['idusuario'].")") === TRUE) {
     
    echo "<script>alert('Thanks for your comment');</script>";
    
    
} else {
     echo "<script>alert('The data has not been inserted properly');</script>";
}




/* CIERRE DE LA CONEXION */
$mysqli->close();
?>