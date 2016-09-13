

<?php
 include './con1.php';
 
if (!isset($_SESSION)) {
  session_start();
}


	/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
	include './con1.php';

	/* CAPTURA LA MATRIZ ENVIADA DESDE FUNCIONES.JS */
	$matrizCV=$_POST['matrizCV'];
        	
	/* RECORRIDO DE TODOS LOS ELEMENTOS DE LA MATRIZ */
        $con=0;
	foreach ($matrizCV as $elementoMatriz){
            
            
            $alumnos=$mysqli->query("SELECT idusuario,idgrupo FROM grupointegrantes WHERE idusuario !='".$_SESSION['idusuario']."' and idgrupo='$elementoMatriz'");
            $filasAfectadas = $mysqli->affected_rows;
            $alumnos->free();
    if ($filasAfectadas > 0) {
        
        
      if($con===0){echo  "<script>alert('Debes borrar los alumnos antes de borra un grupo');</script>";
      $con++;
      }
      
 
        
    } 
    else {
		
		/* ELIMINACION DE LOS REGISTROS - TODOS LOS VALORES ENTRE COMILLAS SIMPLES AUNQUE SEAN NUMERICOS */
		if ($mysqli->query("DELETE FROM grupo WHERE idgrupo='$elementoMatriz'") === TRUE) {
                    $mysqli->query("DELETE FROM grupointegrantes WHERE idgrupo='$elementoMatriz'");
                    $mysqli->query("DELETE FROM forum WHERE idgrupo='$elementoMatriz'");
                    
		}	
		else {
			printf("Los datos no han sido eliminados");
		}			
    }
	}
	/* VACIADO DE LA REFERENCIA */
	unset($elementoMatriz);


 	/* SELECION DE LOS DATOS - REFRESCO CON LOS CAMBIOS */
	 $consultag = $mysqli->query('SELECT distinct grupo.idgrupo,nombregrupo FROM grupo join grupointegrantes on grupo.idgrupo=grupointegrantes.idgrupo where grupointegrantes.idusuario=' . $_SESSION['idusuario']);

// Volcado de los datos
                                while ($filag = $consultag->fetch_assoc()) {

                                    // Almacenamiento de los datos en variables
                                    $idgrupo = $filag['idgrupo'];
                                    $nombregrupo = $filag['nombregrupo'];



                                    echo "<div class='lisg1'><input type='checkbox' class='checklist'  id='" . $idgrupo . "'></div>
                         <div class='lisg2'><input type='text' class='campos' readonly='readonly' id='" . $idgrupo . "' name='nombregrupo' value='" . $nombregrupo . "'></div>";
                                }

                                //Vaciado de la variable
                                $consultag->free();

                                //Cierre de la conexion
                                $mysqli->close();
?>
