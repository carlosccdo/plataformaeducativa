<?php
//finciona con las letras pero no con los numeros
	
	/* DEFINICION DE LAS VARIABLES CON LOS DATOS DE CONEXION */

        include './con1.php';
        if (!isset($_SESSION)) {
                                    session_start();
                                }
            // Captura las variables que identifican al registro de la BD a modificar
    $idRegistro = $_POST['idRegistro']; // Variable que identifica el registro a modificar
    $valRegistro = $_POST['valRegistro']; // Variable que contiene el nuevo valor a modificar
    $nomRegistro = $_POST['nomRegistro']; //Variable que identifica el campo a modificar

        	
	
		
		/* modificasion DE LOS REGISTROS - TODOS LOS VALORES ENTRE COMILLAS SIMPLES AUNQUE SEAN NUMERICOS */
		if ( $mysqli->query("UPDATE usuario SET $nomRegistro='$valRegistro' WHERE idusuario='$idRegistro'") === TRUE) {
                    
                               $consulta1 = $mysqli->query("select grupointegrantes.idusuario,usuario.nombre,usuario.apellido1,usuario.apellido2,usuario.correo,usuario.clave,usuario.telefono,usuario.dni  from grupointegrantes join usuario on grupointegrantes.idusuario = usuario.idusuario join grupointegrantes as grupo on grupointegrantes.idgrupo=grupo.idgrupo where usuario.nivel=3 and grupo.idusuario=". $_SESSION['idusuario']." group by grupointegrantes.idusuario
"); //falta filtrar por grupo
// Volcado de los datos
                            while ($fila = $consulta1->fetch_assoc()) {

                                // Almacenamiento de los datos en variables
                                $idusuario = $fila['idusuario'];
                                $nombre = $fila['nombre'];
                                $apellido1 = $fila['apellido1'];
                                $apellido2 = $fila['apellido2'];
                                $correo = $fila['correo'];
                                $clave = $fila['clave'];
                                $telefono = $fila['telefono'];
                                $dni = $fila['dni'];


                                echo "<div class='lis1'><input type='checkbox' class='checklist'  id='" . $idusuario . "'></div>
                        
                         <div class='lis2'> <input type='text' class='campos' id='" . $idusuario . "' name='nombre' value='" . $nombre . "'></div>
                         <div class='lis2'>  <input type='text' class='campos' id='" . $idusuario . "' name='apellido1' value='" . $apellido1 . "'></div>
                         <div class='lis2'> <input type='text' class='campos' id='" . $idusuario . "' name='apellido2' value='" . $apellido2 . "'></div>
                         <div class='lis2'>  <input type='text' class='campos' id='" . $idusuario . "' name='correo' value='" . $correo . "'></div>
                         <div class='lis2'><input type='text' class='campos' id='" . $idusuario . "' name='clave' value='" . $clave . "'></div>
                         <div class='lis2'><input type='text' class='campos' id='" . $idusuario . "' name='dni' value='" . $dni . "'></div>
                         <div class='lis2'><input type='text' class='campos' id='" . $idusuario . "' name='telefono' value='" . $telefono . "'></div>
                         
                        
                      
                            
                       ";
                            }

//Vaciado de la variable
                            $consulta1->free();

//Cierre de la conexion
                            $mysqli->close();
		}	
		else {
			printf("Los datos no han sido modificados");
                       echo"<a href='modificar2.php'>volver</a>";
		}			
	
	
	
        

	
	
?>
