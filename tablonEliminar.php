<?php
	
	/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */
	include './con1.php';	

	/* CAPTURA LA MATRIZ ENVIADA DESDE FUNCIONES.JS */
	if (empty( $_POST['id'])){
exit();

}else{
    $id= $_POST['id'];
}
		/* ELIMINACION DE LOS REGISTROS - TODOS LOS VALORES ENTRE COMILLAS SIMPLES AUNQUE SEAN NUMERICOS */
		if ($mysqli->query("DELETE FROM tablon WHERE idtablon='$id'") === TRUE) {
                    
                    
                    
                   //SELECION DE LOS DATOS 
//                $resultado = $mysqli->query("SELECT * FROM tablon ORDER BY fecha DESC");
             $resultado = $mysqli->query("SELECT tablon.titulo,centro.nombre as centro,tablon.nombre,tablon.fecha,tablon.mensaje,idtablon FROM centro join usuario on usuario.idcentro= centro.idcentro join tablon on tablon.idemisor= usuario.idusuario ORDER BY fecha DESC");

                /* VOLCADO DE LOS DATOS */

               while ($fila = $resultado->fetch_assoc()) {
  
//                echo "<div id='tituloPublicar'><h3>" . $fila['titulo'] . "</h3>"./*Colegio: " . $fila['colegio'] .*/"<br></div><div class='clase1'><div id='aut_fch'>  written by: " . $fila['nombre'] . " ," . "Date " . $fila['fecha'] . "</div>" . " <div id='art'>" . nl2br(htmlentities($fila['mensaje'])) . "</div>    <a href='tablon.php#' class='borp' id='".$fila['idtablon']."'>Delete </a>    </div>";
                            echo "<div id='tituloPublicar'><h3>" . $fila['titulo'] . "</h3> Center: " . $fila['centro'] . "<br></div><div class='clase1'><div id='aut_fch'>  written by: " . $fila['nombre'] . " ," . "Date " . $fila['fecha'] . "</div>" . " <div id='art'>" . nl2br(htmlentities($fila['mensaje'])) . "</div>    <a href='tablon.php#' class='borp' id='" . $fila['idtablon'] . "'>delete </a>    </div>";

    
        }
                
		}
   
		else {
			printf("Los datos no han sido eliminados");
		}
             

 $resultado->free();
	/* CIERRE DE LA CONEXION */
	$mysqli->close();

?>
