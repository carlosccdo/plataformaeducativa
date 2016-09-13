/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*crear grupo*/

$(document).ready(function() {
    /*INICIO C1.CLICK*/
    $("#botonProGrupo").click(function() {
        var CrearGrupo = $("#proCrearGrupo").val();
        if (CrearGrupo == "") {
            alert("Debes escribir el nombre del grupo")
        }
        else {
            /* INICIO FUNCION AJAX*/
            $.ajax({
                type: "POST",
                url: "profesorCrearGrupo.php",
                data: {proCrearGrupo: $("#proCrearGrupo").val()}
            }).done(function(msg) {
                $("#crearGruposMensaje").html(msg);
            });
            /* FINAL FUNCION AJAX*/

            /* LIMPIEZA DE CONTROLES*/
            $("#proCrearGrupo").val("");
        }
    });
    /* FINAL C1.CLICK*/
});





/*borrar grupo*/

// INICIO DOCUMENT.READY  BORRAR
$(document).ready(function() {

    // INICIO C1.CLICK
    $("#borrarGrupo").click(function(event) {

        // Declaramos una variable contador;
        var i = 0;
        //Deaclaramos una matriz vacia;
        var matrizCV = new Array();
        // Recorremos todas las casillas de 
        // verificacion cuya clase sea "claseCV"
        $(".checklist").each(function() {
            // Si la casilla actual estÃ¡ marcada
            // obtenemos su "id" y la almacenamos 
            // en la matriz "matrizCV"   
            if ($(this).prop('checked')) {
                // Alacenamos por orden en 
                // la matriz cada id marcado
                matrizCV [i] = $(this).attr('id');
                i++;
            }
        });

        // Evitamos que haya una peticion al Servidor si no existen casillas seleccionadas
        if (i == 0) {
            alert("Debe indicar que grupo desea borrar.");
        }
        else {
            // INICIO FUNCION AJAX
            // En data se envia como argumento la matriz
            // con todas las id's de las casillas marcadas
            $.ajax({
                type: "POST",
                url: "profesorBorrarGrupo.php",
                data: {matrizCV: matrizCV}
            }).done(function(msg) {
                $("#crearGruposMensaje").html(msg);
            });
            // FINAL FUNCION AJAX
        }

    });
    // FINAL C1.CLICK

});
// FINAL DOCUMENT.READY  







/*registrar alumno*/

$(document).ready(function() {

    /*INICIO C1.CLICK*/
    $("#proenviar").click(function() {
        var idgrupo = $("#selectgrupo option:selected").attr("id");
//        alert(idgrupo);
//
//        if ($("#pronombre").val() === "") {
////           $('#pronombre').css('border-color','#FF0000');
//            alert("escribe un nombre");
//            $("#pronombre").focus();
//        }
//        else if ($("#proapellido1").val() === "") {
////            $('#proapellido1').css('border-color','#FF0000');
//            alert("escribe un apellido");
//            $("#proapellido1").focus();
//        }
//        else if ($("#proedad").val() === "") {
////            $('#proedad').css('border-color','#FF0000');
//            alert("escribe una edad");
//            $("#proedad").focus();
//        }
//        else if (isNaN($('#proedad').val())) {
////            $('#proedad').css('border-color','#FF0000');
//            alert('el campo edad solo admite numeros');
//            $("#proedad").focus();
//            return false;
//
//        }
//
//        else if ($("#procorreo").val() === "") {
////            $('#procorreo').css('border-color','#FF0000');
//            alert("escribe un correo");
//            $("#procorreo").focus();
//        }
//        else if ($("#procorreo").val().indexOf('@', 0) == -1 || $("#procorreo").val().indexOf('.', 0) == -1) {
//            alert('Inserte un correo valido');
//            $("#procorreo").focus();
//
//        }
//        else if ($("#proclave").val() === "") {
////            $('#proclave').css('border-color','#FF0000');
//            alert("escribe una clave");
//            $("#proclave").focus();
//        }
        if (idgrupo === "Elige_un_grupo") {
//                $("#selectgrupo").css('border-color','#FF0000');
            alert("debes elegir un grupo");
            $("#selectgrupo").focus();
        }
        else {
            /* INICIO FUNCION AJAX*/
            $.ajax({
                type: "POST",
                url: "profesorRegistrarAlumno.php",
                data: {pronombre: $("#pronombre").val(), proapellido1: $("#proapellido1").val(), proapellido2: $("#proapellido2").val(), proedad: $("#proedad").val(), dni: $("#dni").val(), procorreo: $("#procorreo").val(), proclave: $("#proclave").val(), protelefono: $("#protelefono").val(), idgrupo: idgrupo}
            }).done(function(msg) {
                $("#registroUsuario").html(msg);
            });
            /* FINAL FUNCION AJAX*/

            /* LIMPIEZA DE CONTROLES*/
            $("#pronombre").val("");
            $("#proapellido1").val("");
            $("#proapellido2").val("");
            $("#procorreo").val("");
            $("#proclave").val("");
            $("#protelefono").val("");
            $("#dni").val("");
            $("#proedad").val("");

        }
    });
    /* FINAL C1.CLICK*/


});
//cambiar el color de el borde cundo hace click en el formulario

//$(document).ready(function() {
//     $('body').on('click', '.lis', function() {
//   
//       
//        $(".lis").css('border:solid 1px #585858');
//});
//    /* FINAL C1.CLICK*/
//
//
//});

/*lista de alumnos filtrado por grupos grupos*/

$(document).ready(function() {

    /*INICIO C1.CLICK*/
    $("#selectGrupoAlumnos").change(function() {
        valorListaGrupoAlumnos = $("#selectGrupoAlumnos option:selected").attr("id");
//        valorLista = $(this).attr('value');
//               alert(valorListaGrupoAlumnos);
        if (valorListaGrupoAlumnos === "Elige_un_grupo") {
            exit();
        }
        else {
            /* INICIO FUNCION AJAX*/
            $.ajax({
                type: "POST",
                url: "profesorVerAlumnos.php",
                data: {valorListaGrupoAlumnos: valorListaGrupoAlumnos}
            }).done(function(msg) {
                $("#listaAlumnosModificados").html(msg);
            });
        }
    });
    /* FINAL C1.CLICK*/


});
/*borrar usuario*/

//$(document).ready(function() {
//
//    /*INICIO C1.CLICK*/
//    $("#borrarAlumno").click(function() {
//        seleccion = $('#selectmodificar option:selected').val();
//
//
//
//
//        /* INICIO FUNCION AJAX*/
//        $.ajax({
//            type: "POST",
//            url: "profesorBorrarAlumno.php",
//            data: {seleccion: seleccion}
//        }).done(function(msg) {
//            $("#resultadoAlumno").html(msg);
//        });
//        /* FINAL FUNCION AJAX*/
//
//    });
//});
//
//
//borrar alumno
//
// INICIO DOCUMENT.READY  BORRAR
$(document).ready(function() {

    // INICIO C1.CLICK
    $("#borrarAlumno").click(function(event) {

        // Declaramos una variable contador;
        var i = 0;
        //Deaclaramos una matriz vacia;
        var matrizCV = new Array();
        // Recorremos todas las casillas de 
        // verificacion cuya clase sea "claseCV"
        $(".checklist").each(function() {
            // Si la casilla actual estÃ¡ marcada
            // obtenemos su "id" y la almacenamos 
            // en la matriz "matrizCV"   
            if ($(this).prop('checked')) {
                // Alacenamos por orden en 
                // la matriz cada id marcado
                matrizCV [i] = $(this).attr('id');
                i++;
            }
        });

        // Evitamos que haya una peticion al Servidor si no existen casillas seleccionadas
        if (i == 0) {
            alert("Debe indicar que registros quiere borrar.");
        }
        else {
            valorListaGrupoAlumnos = $("#selectGrupoAlumnos option:selected").attr("id");
            if (valorListaGrupoAlumnos === "Elige_un_grupo") {
                alert("debes elegir un grupo al que pertenece");
            }
            else {
                // INICIO FUNCION AJAX
                // En data se envia como argumento la matriz
                // con todas las id's de las casillas marcadas
//            alert(valorListaGrupoAlumnos);
                $.ajax({
                    type: "POST",
                    url: "profesorBorrarAlumno.php",
                    data: {matrizCV: matrizCV, valorListaGrupoAlumnos: valorListaGrupoAlumnos}
                }).done(function(msg) {
                    $("#listaAlumnosModificados").html(msg);
                });
                // FINAL FUNCION AJAX
            }
        }

    });
    // FINAL C1.CLICK

});
// FINAL DOCUMENT.READY   

/*modificar alumno*/

$(document).ready(function() {

    // El metodo change permite actuar solo sobre el campo que va a sufrir la modificacion
    $('#profesor').on('change', '.campos', function(event) {
        event.preventDefault();

        // Captura del id del registro completo de la BD
        // Sintaxis javascript para capturar el valor del atributo 'id'
        var idRegistro = this.getAttribute('id');
        // Sintaxis jQuery para capturar el valor de la caja de texto despues de ser modificado su valor (obtiene el nuevo valor)
        var valRegistro = $(this).val();
        // Sintaxis javascript para capturar el valor del atributo (permite saber que campo se va a modificar)
        var nomRegistro = this.getAttribute('name');

        // Envio de la informacion al fichero "actualizar.php"
        $.ajax({
            url: 'profesorModificarAlumno.php',
            type: 'POST',
            data: {idRegistro: idRegistro,
                valRegistro: valRegistro,
                nomRegistro: nomRegistro
            }
        });
    });
});

/* madar chat*/



/*
 $(function()
 {
 setInterval("cargar()", 3000);
 });
 
 function cargar()
 {
 $("#texto").load("chatCargar.php");
 }
 
 function chatear()
 {
 texto_chat = $("#texto_chat").val();
 
 $("#texto").load("chatInsertar.php", {texto: texto_chat});
 
 $("#texto_chat").val("");
 }*/



//Chat

 

/*Chat mostrar mensajes de los dos usuarios */

 
 
 
 


$(document).ready(function() {
//    setInterval("function()", 2000);

    /*INICIO C1.CLICK*/
    $("#contenedorUsuario").change(function() {
        valorChatUsuario = $(this).attr('value');
//        alert(valorChatUsuario);
        /* INICIO FUNCION AJAX*/
        $.ajax({
            type: "POST",
            url: "chatCargar.php",
            data: {valorChatUsuario: valorChatUsuario}
        }).done(function(msg) {
            $("#texto").html(msg);
            $("#texto").animate({ scrollTop: $('#texto')[0].scrollHeight}, 1000);
        });

    });
    /* FINAL C1.CLICK*/


});
/*chat actualizacion*/
//function updateRow()
//{
//    valorChatUsuario = $("#contenedorUsuario").val(); //hidden field which contains the current chat id. 
//    $.ajax({
//       type: "POST",
//        url: "chatCargar.php", 
//        data: {"valorChatUsuario":valorChatUsuario},
//        success: function (output) {
//            $("#texto").animate({ scrollTop: $('#texto')[0].scrollHeight}, 1000);//hay que arreglar este scroll es una copia de la linea 456
//             $('#texto').html(output); //updates the output to a div
//             $('#texto').sticky({
//			speed: 0 // The scroll animation speed
//		});
//        }
//    });
//}
//setInterval("updateRow()",3000); //call updateRow() function every 3 seconds.


/*chat listadependiente grupos*/

$(document).ready(function() {

    /*INICIO C1.CLICK*/
    $("#selectcentro").change(function() {
        valorLista = $("#selectcentro option:selected").attr("id");
//        valorLista = $(this).attr('value');
//               alert(valorLista);
        /* INICIO FUNCION AJAX*/
        $.ajax({
            type: "POST",
            url: "chatCentroOnchage.php",
            data: {valorLista: valorLista}
        }).done(function(msg) {
            $("#contenedorUsuario").html(msg);
        });

    });
    /* FINAL C1.CLICK*/


});


/*chat ingresar mensaje con usuario seleccionado*/

$(document).ready(function() {

    /*INICIO C1.CLICK*/
    $("#enviar").click(function() {

        texto_chat = $("#texto_chat").val();
        idusuario = $("#contenedorUsuario option:selected").attr("id");
        grupoCh = $("#selectcentro option:selected").attr("id");

        if (grupoCh === "Elige_un_grupo") {
            alert("debes elegir un grupo");
        }
        else if (idusuario === "sinUsuarioChat") {
            alert("debes elegir un usuario");
        }



        else {

            /* INICIO FUNCION AJAX*/
            $.ajax({
                type: "POST",
                url: "chatInsertar.php",
                data: {texto: texto_chat, idusuario: idusuario}
            }).done(function(msg) {
                $("#texto").html(msg);
                $("#texto_chat").val("");
                $("#texto").animate({ scrollTop: $('#texto')[0].scrollHeight}, 1000);
            });
            /* FINAL FUNCION AJAX*/
        }
    });
});



//forum ver grupo 


$(document).ready(function() {

    /*INICIO C1.CLICK*/
    $("#selectcentroBlog").change(function() {
        valorListaBlog = $("#selectcentroBlog option:selected").attr("id");
//                alert(valorListaBlog);
//                 if (valorListaBlog === "Elige_un_grupo") {
//                  valorListaBlog ==="";
//             
//            }
//            else{

        /* INICIO FUNCION AJAX*/
        $.ajax({
            type: "POST",
            url: "blogVerGrupo.php",
            data: {valorListaBlog: valorListaBlog}
        }).done(function(msg) {
            $("#pag").html(msg);
        });
//            }
    });
    /* FINAL C1.CLICK*/


});

//forum boton(lapiz) para  publicar 


$(document).ready(function() {
    /* $("#botreg").click(function() {*/
    $('body').on('click', '#botreg', function() {//esta funcion con on ,permite que no alla problemas con la recarga de la paginay se pueda borrra sin tener que refrescar   
        $("#reg").slideDown("slow");
        $("#botreg").fadeOut(function() {// con esto desaparece el boton suavemente
            $(this).hide();
        });



    });
});

//forum publicar

$(document).ready(function() {
    $("#botcar").click(function() {
        valorListaPublicar = $("#selectcentroBlog option:selected").attr("id");
//         alert(valorListaPublicar);
        

        if ($("#titulo").val() === "") {

            alert("Escribe un titulo");
            $("#titulo").focus();

        }

        else if ($("#mensaje").val() === "") {

            alert("Escribe un comentario");
            $("#mensaje").focus();

        }
        else if (valorListaPublicar === "Elige_un_grupo") {
            alert("Debes elegir un grupo donde publicar");
            $("#selectcentroBlog").focus();
        }



        else {

            $.ajax({
                type: "POST",
                url: "blogPublicar.php",
                data: {rutaimg: $("#rutaimg").val(), titulo: $("#titulo").val(), subtitulo: $("#subtitulo").val(), mensaje: $("#mensaje").val(), valorListaPublicar: valorListaPublicar}

            }).done(function(msg) {
                $("#pag").html(msg);
                $("#reg").slideUp("slow");
                $("#botreg").fadeIn();
                // LIMPIEZA DE CONTROLES
                $("#titulo").val("");
                $("#subtitulo").val("");
                $("#mensaje").val("");
                $("#rutaimg").val("");
            });
        }
    });
});



/*$(document).ready(function() {
 
 $('a').click(function() {
 var id
 id = $(this).attr('id');
 
 // INICIO FUNCION AJAX
 $.ajax({
 type: "POST",
 url: "eliminar.php",
 data: {id:id}
 }).done(function(msg) {
 $("#pag").html(msg);
 });
 // FINAL FUNCION AJAX
 
 });
 });
 */

//forum eliminar  


$(document).ready(function() {

    $('body').on('click', 'a', function() {
        valorListaEliminar = $("#selectcentroBlog option:selected").attr("id");
//        alert(valorListaEliminar);

        var id = $(this).attr('id');

        // INICIO FUNCION AJAX
        $.ajax({
            type: "POST",
            url: "blogEliminar.php",
            data: {id: id, valorListaEliminar: valorListaEliminar}
        }).done(function(msg) {
            $("#pag").html(msg);
        });
        // FINAL FUNCION AJAX

    });
});



//tablon eliminar

$(document).ready(function() {

    $('body').on('click', 'a', function() {
        var id
        id = $(this).attr('id');

        /* INICIO FUNCION AJAX*/
        $.ajax({
            type: "POST",
            url: "tablonEliminar.php",
            data: {id: id}
        }).done(function(msg) {
            $("#pagTablon").html(msg);
        });
        /* FINAL FUNCION AJAX*/

    });
});



//tablon publicar


$(document).ready(function() {
    $("#botcarp").click(function() {

//    ti = $("#mensajeT").attr('value');
//        alert(ti);
        if ($("#tituloT").val() === "") {

            alert("Escribe un titulo");
            $("#tituloT").focus();

        }
        else if ($("#nombreT").val() === "") {

            alert("Escribe un nombre o alias");
            $("#nombreT").focus();
        }
        else if ($("#mensajeT").val() === "") {

            alert("Escribe un comentario");
            $("#mensajeT").focus();

        }
        else {

            $.ajax({
                type: "POST",
                url: "tablonPublicar.php",
                data: {titulo: $("#tituloT").val(), nombre: $("#nombreT").val(), mensaje: $("#mensajeT").val()}

            }).done(function(msg) {
//      mensajeTablon      
                $("#pagTablon").html(window.location.href = "tablon.php");

                /*// similar behavior as an HTTP redirect
                 window.location.replace("http://stackoverflow.com");
                 
                 // similar behavior as clicking on a link
                 window.location.href = "http://stackoverflow.com";
                 */

                /* LIMPIEZA DE CONTROLES*/
                $("#tituloT").val("");
                $("#nombreT").val("");
                $("#mensajeT").val("");

            });
        }
    });
});



/*$(document).ready(function() {
 
 $('a').click(function() {
 var id
 id = $(this).attr('id');
 
 // INICIO FUNCION AJAX
 $.ajax({
 type: "POST",
 url: "eliminar.php",
 data: {id:id}
 }).done(function(msg) {
 $("#pag").html(msg);
 });
 // FINAL FUNCION AJAX
 
 });
 });
 */


/* visualizar opciones index*/

$(document).ready(function() {


    $("#botonCrearGrupo").click(function() {
//       $(location).attr('href','indexProfesor.php');
//       $(".mostrarCrearGrupo").html(window.location.href = "indexProfesor.php");
//    $(".mostrarCrearGrupo").html(window.location.href = "indexProfesor.php");
        $(".mostrarCrearGrupo").css("display", "block");
        $(".mostrarBorrarGrupo").css("display", "none");
        $(".mostrarRegistrarAlumno").css("display", "none");
        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "none");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "none");


    });

});
$(document).ready(function() {


    $("#botonBorrarGrupo").click(function() {
        $(".mostrarCrearGrupo").css("display", "none");
        $(".mostrarBorrarGrupo").css("display", "block");

        $(".mostrarRegistrarAlumno").css("display", "none");
        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "none");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "none");


    });

});

$(document).ready(function() {


    $("#botonRegistrarAlumno").click(function() {
        $("#selectgrupo").load("recargarGrupos.php");
        $(".mostrarCrearGrupo").css("display", "none");
        $(".mostrarBorrarGrupo").css("display", "none");
        $(".mostrarRegistrarAlumno").css("display", "block");
        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "none");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "none");


    });

});
$(document).ready(function() {


    $("#botonModificarAlumno").click(function() {
        $("#selectGrupoAlumnos").load("recargarGrupos.php");

        $(".mostrarCrearGrupo").css("display", "none");
        $(".mostrarBorrarGrupo").css("display", "none");
        $(".mostrarRegistrarAlumno").css("display", "none");
        $(".mostrarModificarAlumno").css("display", "block");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "none");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "none");


    });

});
$(document).ready(function() {


    $("#botonChat").click(function() {

        $("#selectcentro").load("recargarGrupos.php");
        $(".mostrarCrearGrupo").css("display", "none");
        $(".mostrarBorrarGrupo").css("display", "none");
        $(".mostrarRegistrarAlumno").css("display", "none");
        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "block");
        $(".mostrarForum").css("display", "none");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "none");



    });

});
$(document).ready(function() {


    $("#botonForum").click(function() {
        
      $("#selectcentroBlog").load("recargarGrupos.php");
//        $("#Elige_un_grupo").append(tr);
// $("#selectcentroBlog").load('recargarGrupos.php', function(data) {
//        $('#Elige_un_grupo').append(data);
//        });
        
        
        $(".mostrarCrearGrupo").css("display", "none");
        $(".mostrarBorrarGrupo").css("display", "none");
        $(".mostrarRegistrarAlumno").css("display", "none");
        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "block");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "none");


    });

});
$(document).ready(function() {


    $(".botonForumAlumno").click(function() {
        
      $("#selectcentroBlog").load("recargarGruposAlumnos.php");
//        $("#Elige_un_grupo").append(tr);
// $("#selectcentroBlog").load('recargarGrupos.php', function(data) {
//        $('#Elige_un_grupo').append(data);
//        });
        
        
//        $(".mostrarCrearGrupo").css("display", "none");
//        $(".mostrarBorrarGrupo").css("display", "none");
//        $(".mostrarRegistrarAlumno").css("display", "none");
//        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "block");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "none");


    });

});

$(document).ready(function() {


    $("#botonTablon").click(function() {
        $(".mostrarCrearGrupo").css("display", "none");
        $(".mostrarBorrarGrupo").css("display", "none");
        $(".mostrarRegistrarAlumno").css("display", "none");
        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "none");
        $(".mostrarTablon").css("display", "block");
        $(".mostrarCuestionario").css("display", "none");



    });

});


$(document).ready(function() {


    $("#botonCuestionario").click(function() {
        $(".mostrarCrearGrupo").css("display", "none");
        $(".mostrarBorrarGrupo").css("display", "none");
        $(".mostrarRegistrarAlumno").css("display", "none");
        $(".mostrarModificarAlumno").css("display", "none");
        $(".mostrarChat").css("display", "none");
        $(".mostrarForum").css("display", "none");
        $(".mostrarTablon").css("display", "none");
        $(".mostrarCuestionario").css("display", "block");



    });

});



