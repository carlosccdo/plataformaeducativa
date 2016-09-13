<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>
        <title></title>
    </head>
    <body>

               <?php require './seguridadSin.php'; ?>

        <div class="contPagina">
            <!--Cabecera-->
            <?php include './cabecera.php'; ?>
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->
         
                <div class="cajaCorreo">
                
                
                
                <form class="form1" name="form1" method="post" action="correoEnviar.php">



                    <h1>CONTACT</h1>

                    <table>


                        <tr>
                            <td>Center</td>
                            <td> <input type="text" name="centro" /></td>

                        </tr>

                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="nombre" required="" /></td>

                        </tr>

                        <tr>
                            <td>Surname</td>
                            <td><input type="text" name="apellidos" /></td>

                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td><input type="text" name="telefono" /></td>

                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" name="correo" required="" /></td>

                        </tr>
                        <tr>
                            <td>Comments</td>
                            <td><textarea name="comentarios"  placeholder="Write your comment" rows="5%" cols="30%"></textarea></td>

                        </tr>
                    </table>

                    <input style="border-radius: 8px 8px 8px 8px;"type="submit" name="Submit" value="Submit" />

                </form>
            </div>
            </div>

            <?php include 'pie.php'; ?>
        </div>
    </body>
</html>
