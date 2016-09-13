 <?php
                     include './con1.php';

	/* SELECION DE LOS DATOS */


        
        if($mysqli->query("insert into email(nombre,apellido1,apellido2,dni,correo,clave,telefono,nivel,idcentro)values('$pronombre','$propellido1','$proapellido2','$dni','$procorreo','$proclave','$protelefono','3','$idcentro')")===TRUE){
            echo "<script>alert('Los datos han sido insertados');</script>";
           
        }
        else{echo "<script>alert('Los datos no han sido insertados');</script>";}
        
        
	
       
	$mysqli->close();

                    ?>
                    