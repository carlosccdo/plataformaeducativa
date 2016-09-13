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
        <LINK REL=StyleSheet HREF="css/correo.css" TYPE="text/css" MEDIA=screen>
        <title></title>
    </head>
    <body>


        <div class="contPagina">
            <!--Cabecera-->
            <?php include 'cabecera.php'; ?>
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->


                <div class=" cajaCorreo">
                    <?php
                    $centro = $_POST['centro'];
                    $nombre = $_POST['nombre'];
                    $apellidos = $_POST['apellidos'];
                    $telefono = $_POST['telefono'];
                    $correo = $_POST['correo'];
                    $comentarios = $_POST['comentarios'];

//Mensaje que llegara a nosotros mismos:

                    $mensajeinterno = '<html>

<head>

<title>Mensaje Interno</title>

</head>

<body>

Centro:' . $centro . '<br/>Nombre del Cliente:' . $nombre . '<br/>Apellidos del Cliente:' . $apellidos . '<br/>Telefono del Cliente:' . $telefono . '<br/>Correo del Cliente: ' . $correo . '<br/>Comentario del Cliente:' . $comentarios . '

</body>

</html>';

//Mensaje que llegara al cliente:

                    $mensajecliente = '<html>
    
<head>

<title>Mensaje Cliente</title>

</head>

<body>'
                            . $nombre . ' Gracias por contactar con nosostros .
    
</body>

</html>';

                    $cabecera = 'MIME-Version: 1.0' . "\r\n";
                    $cabecera .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

//Se envía el correo a la empresa y al cliente, y se muestra un mensaje:

                    if (mail("alejandradiaz@autovaloracionformativapersonalizada.com", "Contacto", $mensajeinterno, $cabecera)) {

                        echo "<p><h3><center><br>El mensaje se ha enviado correctamente.</center></h3></p>";

                        if (mail($correo, "Correo a contacto", $mensajecliente, $cabecera)) {
                            echo "<h3><center>En breve recibirá en su correo-e de confirmacion.</center></h3>";
                        } else {

                            echo "<h3><center>Se ha producido un error, por lo que el mensaje no se ha enviado.</center></h3>";
                        }
                    } else {

                        echo "<h3><center>Se ha producido un error, por lo que el mensaje no se ha enviado.</center></h3>";
                    }
                    ?>
                </div>
            </div>

<?php include 'pie.php'; ?>
        </div>
    </body>
</html>
