  <?php
  
$idTemaNuevo=$_POST["idTemaNuevo"];
require_once ('con1.php');
$mysqli->set_charset("utf8");

                               
                             if (($resultado = $mysqli->query("SELECT * FROM examenes where idtema=".$idTemaNuevo))==true) {
                                 
                                    while ($fila = $resultado->fetch_assoc()) {
                                        echo"<input type='button' class='butElejirExamen desplieg' id=".$fila['idexamen']." value='".$fila['denominacion']."'></br>";
                                         
                                    }
                                    echo "<input id='crearExamen' type='button' value='crear examen'>";

                             }
                              
                             $resultado->free();
                             $mysqli->close();
                             ?>