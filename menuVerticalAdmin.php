  <!--menu vertical-->
              
            <div id="menuDesplegable">
               
                <div id="slider">
                    
                    <ul>
                        <li >
                            <a href="" class="menudesplieg">CREATE ACTIVE</a>
                            <div id="divSliderNegro">
                                <h5>Choose a theme</h5>
                               
                               <?php 
                                
                              include 'con1.php';
                               
                             if (($resultado = $mysqli->query("SELECT * FROM temas "))==true) {
                                 
                                    while ($fila = $resultado->fetch_assoc()) {
                                        echo"<input type='button' class='butElejirTema desplieg' id=".$fila['idtema']." value='".$fila['temas']."'></br>";
                                    }
                               
                             }
                             $resultado->free();
                             $mysqli->close();
                               ?>
                                
                                <p class="desplieg">
                                    <input id="butCrearTema" type="button" value="Crea tema..."><br>
                                 
                                </p>
                            </div>
                        </li>
                        <li>
                            <a href="" class="menudesplieg">MY TASK</a>
                            <div>
                                <h5>MY TASK</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
                                </p>
                                <p class="desplieg">
                                    <a href="evaluacion1.php">TASK 1...</a><br>
                                    <a href="#">TASK 2...</a><br>
                                    <a href="#">TASK 3...</a><br>
                                </p>
                            </div>
                        </li>
                        <li>
                            <a href="" class="menudesplieg">RESOURCES</a>
                            <div>
                                <h5>RESOURCES</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad                    para el desarrollo web de contenido dinámico.
                                </p>
                                <p class="desplieg">
                                    <a href="#">GO TO...</a>
                                </p>
                            </div>
                        </li>
                        <li>
                            <a href="" class="menudesplieg">TEACHER'S FEEDBACK</a>
                            <div>
                                <h5>TEACHER'S FEEDBACK</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
                                </p>
                                <p class="desplieg">
                                    <a href="#">GO TO...</a>
                                </p>
                            </div>
                        </li>
                       <li>
                            <a href="" class="menudesplieg">CHAT</a>
                            <div>
                                <h5>CHAT</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
                                </p>
                                <p class="desplieg">
                                     <a href="#">>CHAT ...</a><BR>
                                </p>
                            </div>
                        </li>
                         <li>
                            <a href="" class="menudesplieg">FORUM</a>
                            <div>
                                <h5>FORUM</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
                                </p>
                                <p class="desplieg">
                                    <a href="blogIndex.php">FORUM ...</a><BR>
                                </p>
                            </div>
                        </li>
                         <li>
                            <a href="" class="menudesplieg">SHARING EXPERIENCES</a>
                            <div>
                                <h5>SHARING EXPERIENCES</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
                                </p>
                                <p class="desplieg">
                                 <a href="tablonUsuarioPublicar.php">SHARING EXPERIENCES</a><BR>

                                </p>
                            </div>
                        </li>
                         <li>
                            <a href="" class="menudesplieg">SELF-ASSESSMENT SPACE</a>
                            <div>
                                <h5>SELF-ASSESSMENT SPACE</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
                                </p>
                                <p class="desplieg">
                                     <a href="#">SELF-ASSESSMENT SPACE</a><BR>
                                </p>
                            </div>
                        </li>
                        
                        <li>
                            <a href="" class="menudesplieg">PLATFORM ASSESSMENT</a>
                            <div>
                                <h5>PLATFORM ASSESSMENT</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad 
                                </p>
                                <p class="desplieg">
                                    
                                    <a href="cuestionarioProfesor.php">PLATFORM ASSESSMENT</a><BR>
                                </p>
                            </div>
                        </li>
                         
                         
                    </ul>
                </div>
            </div>