        <?php

$ubicacion = 'img/blogImg/';

$archivo = $ubicacion . basename($_FILES['rutaimg']['name']);

move_uploaded_file($_FILES['rutaimg']['tmp_name'], $archivo)

?>
