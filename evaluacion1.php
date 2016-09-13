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
        <script type="text/javascript" src="js/evaluacion.js"></script>
        <LINK REL=StyleSheet HREF="css/evaluacion.css" TYPE="text/css" MEDIA=screen>
        <LINK REL=StyleSheet HREF="css/cssApp.css" TYPE="text/css" MEDIA=screen>

        <title></title>
    </head>
    <body>


        <div class="contPagina">
            <!--Cabecera-->
            <?php include 'cabecera.php'; ?>
             <?php include 'menuVertical.php'; ?>
            <!--desde aqui va el contenido-->
            <div class="contPagina2"><!--las paginas de alumno y profesor no cogian el fondo de pantalla-->

               
                
                <div id="cajatotal">

                    <div id="bienv">
                        <h1>Autovaloracion formativa personalizada </h1><br>
                        <input type="button" id="bv"  value="empezar" >
                    </div>

                    <div id="instru">
                        <h2> INSTRUCCIONES </h2>
                        <div id="i"> 
                            1 Encontras varias actividades en relación a un contenido<br>
                            2 Elige una de las opciones <br>
                            3 Analiza tus respuestas con ayuda del feedback</div><br>

                        <input type="button" id="ins"  value="continuar" ><br>
                    </div>


                    





                    <div id="alumno1">



                        <div class="jj1"></div><br>
                        <h2>CONSTRUCTIVISMO EDUCATIVO</h2><br>
                        <div id="tiporespuesta">
                        <input type="radio" id="r1" name="respuesta1" value="Elementos importantes en una actividad constructiva"><label id="uno"></label><span>Elementos importantes en una actividad constructiva</span><br>

                        <input type="radio" id="r2" name="respuesta1" value="Crea una actividad contructiva, de forma breve" ><label id="dos"></label><span>Crea una actividad contructiva, de forma breve</span><br>

                        <input type="radio" id="r3" name="respuesta1" value="¿ Cómo implementar en el aula una enseñanza constructiva?"><label id="tres"></label><span>¿ Cómo implementar en el aula una enseñanza constructiva?</span><br>


                        </div>

                    </div>

                    <div id="caja1">
                        <div id="texto1"></div><br>
                        <textarea id="tex1" rows="12" cols="70" placeholder="escriba aquí su respuesta..." name="txtsugerencias"></textarea><BR>
               <input type="button" id="buno" value="enviar" >
               <input type="button" id="b3" value="siguiente" >
           </div>
            
           
            
        <!-- <div id="alumno2">
            
            
            
             <div class="jj1"></div><br>
             <h2>donde queda el paseo maritimo</h2><br>
            
             <input type="radio" id="r1" name="respuesta2" value="por alli" ><label id="cuatro"></label> <span>por alli</span><br>
            
             <input type="radio" id="r2" name="respuesta2" value="por alla" ><label id="cinco"></label><span>por alla</span><br>

             <input type="radio" id="r3" name="respuesta2" value="o es por alla"><label id="seis"></label><span>o es por alla?</span><br>
             
           
            
        </div>
        <div id="caja2">
               <div id="texto2"></div>
               <TEXTAREA  id="tex2" rows="12" cols="70" name="txtsugerencias"  >escriba aquí su respuesta...</TEXTAREA><BR>
               <input type="button" id="b2" value="finalizar" >
               <input type="button" id="b4" value="finalizar" >   
           </div>-->
        </div>
        
            </div>
            
     <?php include 'pie.php'; ?>
    </body>
</html>
<!--<FORM name="sugerencias" action="http://www.tecnun.es/cgi-bin/ii/CGI0.exe" method="POST" target="resultado">
      <P>Por favor, introduzca sus sugerencias:<BR>
      
      <INPUT type="hidden" name="identificador" value="Z87X09RF"><BR>
      <INPUT type="submit" value="Enviar">   <INPUT type="reset" value="Borrar">
      </P>
    </FORM>
