<?php

//finciona con las letras pero no con los numeros

/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
if (!isset($_SESSION)) {
    session_start();
}

include './con1.php';

$proCrearGrupo = $_POST['proCrearGrupo'];

/* SELECION DE LOS DATOS - REFRESCO CON LOS CAMBIOS */
 $resultado = $mysqli->query("select nombregrupo from grupo where nombregrupo='$proCrearGrupo'");
    $filasAfectadas = $mysqli->affected_rows;
    $resultado->free();
    if ($filasAfectadas > 0) {
        echo "<script>alert('este grupo ya existe');</script>";
    } else {

        if ($mysqli->query("insert into grupo(nombregrupo,idcentro)values('" . $proCrearGrupo . "',". $_SESSION['idcentro'].")")) {
             $idgrupo=$mysqli->insert_id;
            
             echo "<script>alert('el grupo ha sido insertado');</script>";
        }else {echo "<script>alert('error de grupo');</script>";
        
        }
       
        $mysqli->query("insert into grupointegrantes(idgrupo,idusuario)values('" . $idgrupo . "',". $_SESSION['idusuario'].")");
       
        $mysqli->query("insert into forum(idgrupo,idusuario)values('" . $idgrupo . "',". $_SESSION['idusuario'].")");

    }
// Volcado de los datos
/* SELECION DE LOS DATOS - REFRESCO CON LOS CAMBIOS */
	 $consultag = $mysqli->query('SELECT distinct grupo.idgrupo,nombregrupo FROM grupo join grupointegrantes on grupo.idgrupo=grupointegrantes.idgrupo where grupointegrantes.idusuario=' . $_SESSION['idusuario']);

// Volcado de los datos
                                while ($filag = $consultag->fetch_assoc()) {

                                    // Almacenamiento de los datos en variables
                                    $idgrupo = $filag['idgrupo'];
                                    $nombregrupo = $filag['nombregrupo'];



                                    echo "<div class='lisg1'><input type='checkbox' class='checklist'  id='" . $idgrupo . "'></div>
                         <div class='lisg2'><input type='text' class='campos' readonly='readonly'  id='" . $idgrupo . "' name='nombregrupo' value='" . $nombregrupo . "'></div>";
                                }

                                //Vaciado de la variable
                                $consultag->free();

                                //Cierre de la conexion
                                $mysqli->close();
?>
