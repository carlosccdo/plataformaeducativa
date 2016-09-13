<!--cabecera-->

<div id="cabecera">
    <div id="nombreCabecera">
        <h1> EDUCATION APP</h1>
    </div>
    <div id="loginCabecera">
        <?php
        
        
        
   
            // Inicializamos la variable global $_GET['errorusuario']
            // para evitar la adevertencia de que no la estoy usando
            if (empty($_GET['errorusuario'])) {
                $_GET["errorusuario"] = "";
                if (isset($_SESSION['nombre'])) {
                    echo "<span id='welcome' >welcome ".$_SESSION['nombre']."<a style= 'color: grey; text-decoration: none' href='finSesion.php' > <br>logout </a></span>";
                } else {
                    echo"<div id='login'>
            <form action='controlAcceso.php' method='POST' id='f1'>
                <p>
                    User&nbsp&nbsp&nbsp&nbsp
                    <input type='Text' name='usuario' id='usuario' placeholder='profesor'>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPassword&nbsp&nbsp&nbsp&nbsp
                    <input type='password' name='clave' id='clave' placeholder='123'>&nbsp&nbsp&nbsp<input type='Submit' value='Loging' id='b11'>
                </p>
               
            </form>
        </div>";
                }
            }

          if ($_GET["errorusuario"] == "si") {
           
                       echo"<div id='login'>
            <form action='controlAcceso.php' method='POST' id='f1'>
                <p>
                   User
                    <input type='Text' name='usuario' id='usuario'>
                    Password
                    <input type='password' name='clave' id='clave'><input type='Submit' value='Loging' id='b11'><br>
                    
                </p>
                <apan STYLE='color:red'>Authentication error </span>
                 <a href='correoolvidado.php' id='contraseñaolvidada'>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                 ¿did you forget your password?</a>
               
            </form>
        </div>";
            }
            if ($_GET["errorusuario"] == "sinnivel") {
              
                       echo"<div id='login'>
            <form action='controlAcceso.php' method='POST' id='f1'>
                <p>
                   <input type='Text' name='usuario' id='usuario'>
                    Clave
                    <input type='password' name='clave' id='clave'><input type='Submit' value='Entrar' id='b11'>
                </p>
                There has been an error, contact your teacher
               
              
            </form>
        </div>";
            }
        
        
        ?>
        <!--<a href="finSesion.php" > cerrar session </a>-->


    </div>
</div>
<!--menu horizontal-->
<div class="contmenu"> 

    <ul class="menu">
        
        <?php
//              switch ($se=isset($_SESSION['nivel'])) {
////    case $se == 1:
////         echo"  <li><a href='indexAdministrador.php'>HOME</a></li>";
////        break;
////    case $se == 2:
////         echo"  <li><a href='indexProfesor.php'>HOME</a></li>";
////        break;
////    case $se == 3:
////         echo"  <li><a href='indexAlumno.php'>HOME</a></li>";
////        break;
////    default:
////       echo"<li><a href='index.php'>HOME</a></li>";
        if (isset($_SESSION['nivel'])) {

            if ($_SESSION['nivel'] == 1) {
                echo"  <li><a href='indexAdministrador.php'>HOME</a></li>";
            }
            if ($_SESSION['nivel'] == 2) {
                echo"  <li><a href='indexProfesor.php'>HOME</a></li>";
            }
            if ($_SESSION['nivel'] == 3) {
                echo"  <li><a href='indexAlumno.php'>HOME</a></li>";
            }
        } else {
            echo"  <li><a href='index.php'>HOME</a></li>";
        }
        ?>
        <li><a href="#">ABOUT US</a></li>
        <li><a href="#">INSTRUCTIONS</a></li>
        <li><a href="tablon.php">EXPIRIENCE</a></li>
        <li><a href="correoIndex.php" style="border-right: none">CONTACT</a></li>

    </ul>


</div>

