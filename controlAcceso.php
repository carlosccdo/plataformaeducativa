<?php

// Para que no se de un ERROR (al coexistir un include / require /require_once con un header location
// es necesario que en el fichero con1.php no exista espacios en blanco.
$usuario=$_POST["usuario"];
$clave=$_POST["clave"];


require_once ('con1.php');
$mysqli->set_charset("utf8");

/* SELECION DE LOS DATOS SIN PROTECCI�N FRENTE A SQL INYECTADO */
// $resultado = $mysqli->query("SELECT usuario, clave FROM usuarios WHERE usuario='$usuario' AND clave='$clave'");	
// PROTECCI�N FRENTE A SQL INYECTADO (FUNCION mysql_real_escape_string)
$usuario = $mysqli->real_escape_string($usuario);
$clave = $mysqli->real_escape_string($clave);

if (($resultado = $mysqli->query("SELECT nombre, correo, nivel, clave,idcentro,usuario.idusuario,idgrupo FROM usuario join grupointegrantes on usuario.idusuario=grupointegrantes.idusuario
 WHERE correo='$usuario' and clave='$clave'"))==true) {

    // Determina el numero de filas devueltas por la consulta
    $numeroRegistros = $resultado->num_rows;
//si hay registros en la select
    if ($numeroRegistros) {
        //abrimos sesion
        session_start();

        while ($fila = $resultado->fetch_assoc()) {
//declaramos variables sesion nos valen para toda la app
            $_SESSION['nombre'] = $fila['nombre'];
            $_SESSION['idusuario'] = $fila['idusuario'];
            $_SESSION['nivel'] = $fila['nivel'];
            $_SESSION["autentificado"]="si";
             $_SESSION['idcentro'] = $fila['idcentro'];
              $_SESSION['idgrupo'] = $fila['idgrupo'];
        }
        //vaciamos resultado y cerramos mysql
        $resultado->free();
        $mysqli->close();
        //para vel el nivel de usuario y dirigirle a su panel
        switch ($_SESSION['nivel']){
            case 1:
                //si es administrador
                 header("Location: indexAdministrador.php");
                 break;
            case 2:
                //si es profe
                 header("Location: indexProfesor.php");
                 break;
            case 3:
                //si es alumno
                 header("Location: indexAlumno.php");
                 break;
             default :
                 //si el usuario existe pero no tiene nivel
                 header("Location: index.php?errorusuario=sinnivel");
        }

      }
     else {
         //si el usuario no existe
   header("Location: index.php?errorusuario=si");
    }
}