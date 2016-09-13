<?php
if (!isset($_SESSION)) {
    session_start();
}

/* CAPTURA LOS DATOS ENVIADOS DESDE LOS CAMPOS DE TEXTO */



$pronombre = $_POST['pronombre'];
$propellido1 = $_POST['proapellido1'];
$proapellido2 = $_POST['proapellido2'];
$dni = $_POST['dni'];
$procorreo = $_POST['procorreo'];
$proclave = $_POST['proclave'];
$protelefono = $_POST['protelefono'];
$idgrupo = $_POST['idgrupo'];
$proedad = $_POST['proedad'];


/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
include './con1.php';

/* SELECION DE LOS DATOS */
 $resultadoH = $mysqli->query("select correo from usuario where correo='$procorreo'COLLATE utf8_bin");
    $filasAfectadas = $mysqli->affected_rows;
    $resultadoH->free();
    if ($filasAfectadas > 0) {
         echo "<script>alert('este correo ya pertenece a otro usuario');</script>";
    } else {


if ($mysqli->query("insert into usuario(edad,nombre,apellido1,apellido2,dni,correo,clave,telefono,nivel,idcentro)values('$proedad','$pronombre','$propellido1','$proapellido2','$dni','$procorreo','$proclave','$protelefono','3','". $_SESSION['idcentro']."')") === TRUE) {
    $idregistro=$mysqli->insert_id;
    echo "<script>alert('Los datos han sido insertados');</script>";
} else {
    echo "<script>alert('Los datos no han sido insertados');</script>";
}
    
$mysqli->query("insert into grupointegrantes(idgrupo,idusuario)values('" . $idgrupo . "','".$idregistro."')");
    }

$mysqli->close();
?>
