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
        <script src= "pl/jquery.fittext.js" ></script>
        <script src="pl/unslider.min.js"></script>
        <script src="js/jsApp.js" type="text/javascript"></script>
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>
        <title></title>
    </head>
    <body>


        <div class="contPagina">
            <!--Cabecera-->
            <?php include './cabecera.php'; ?>
            <!--slider-->

            <div class="banner">
                <ul>
                    <li> Tell me and I forget, show me and I remember,<br> Involve me and I learn.</li>
                    <li>"The wonderful thing about learning something,<br> is that nobody can take it from us "B. B. King</li>
                    <li>There is no better example<br> than the own mistake</li>
                    <li>Knowledge is power.<br> Arm yourself!</li>

                </ul>

            </div>
            <!--<a href="#" class="unslider-arrow prev">Previous slide</a>-->
            <a href="#" class="unslider-arrow next ">.</a> <!--este menu no se quita porque sino no funciona el slider<img src="img/arrow138.png">-->
            <?php include 'pie.php'; ?>
            <!--PIE DE PAGINA-->

        </div>
    </body>
</html>
