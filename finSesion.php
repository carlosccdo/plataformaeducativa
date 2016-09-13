<!DOCTYPE html>
<?php
// Inicializamos la variable global $_GET['errorusuario']
// para evitar la adevertencia de que no la estoy usando
if (empty($_GET['error'])) {
    $_GET['error'] = "";
}
if (!isset($_SESSION)) {
    session_start();
}
session_destroy();
?>
<html>
    <head>
        <meta charset="UTF-8">
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>
        <title>Autentificacion Mononivel con BD</title>
    </head>
    <body id="finsecion">

        <h1 id="h1">Closed session</h1>

        <p><a style= 'color: grey; text-decoration: none' href="index.php">Go to home page</a></p>
    </body>
</html>
