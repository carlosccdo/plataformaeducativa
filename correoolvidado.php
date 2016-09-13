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
        <script language="javascript" type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
      
        <link rel="stylesheet" type="text/css" href="css/cssApp.css">
        <meta charset="UTF-8">
        <title>inicio</title>
    </head>
    <body id="correoolvidado">
        <div id="recordarcorreo">
            <form id="formReg" method="POST" action="correoolvidado2.php">              
                <input type="text" name="cor" id="cor" placeholder="enter your email">
                <input type="submit" id="b1" value="Submit">
            </form>
        </div>
 
        <?php
        // Inicializamos la variable global $_GET['errorusuario']
        // para evitar la adevertencia de que no la estoy usando
        if ($_GET['error'] == "1") {
            echo "Sorry ,this mail does not exist, contact your tutor";
        }
        else if ($_GET['error'] == "2") {
            echo "Thank you,the password has been sent to your mail";
        }        
        ?> 
         <p><a style= 'color: grey; text-decoration: none' href="index.php">Go to home page</a></p>
    </body>
</html>
