$(document).ready(function() {
    $('body').on('click', '#subirRecAlumno', function() {

        $("#subirRecAlumno").fadeOut();
        $.ajax({
            type: "POST",
            url: "recursosSubidosAlumno.php"
        }).done(function(msg) {
     
            if (msg === "") {
                msg = "Archivo NO valido";
            }
            document.getElementById("formFileAlumno").reset();
            document.getElementById("fileAlumno").value = "";
            alert(msg);
            $("#subirRecAlumnoDiv").append(msg);
        });
        $("#subirRecAlumno").fadeIn();
    });
});

var j1



//empezar
$(document).ready(function() {


    $("#bv").click(function() {
        $("#instru").css("display", "block");
        $("#bienv").css("display", "none");


    });

});


$(document).ready(function() {


    $("#ins").click(function() {
        $("#instru").css("display", "none");
        $("#alumno1").css("display", "block");


    });

});


$(document).ready(function() {
    $('input:radio[name=respuesta1]').click(function() {
        j1 = $("#t1").val();
        valor1 = $('input:radio[name=respuesta1]:checked').val();
        $("#texto1").text(valor1);
        $("#texto1").css("fontSize", "1.3em");

        $("#empezar").css("display", "none");
        $("#alumno1").css("display", "none");
        $("#alumno2").css("display", "none");
        $("#caja1").css("display", "block");



    });
});
/*$(document).ready(function() {
 $('input:radio[name=respuesta1]').click(function () {
 
 
 
 $("#empezar").css("visibility", "hidden");
 $("#jugador1").css("visibility", "hidden");
 $("#jugador2").css("visibility", "hidden");
 $("#cajatexto1").css("visibility", "block");
 
 
 });
 });*/
$(document).ready(function() {




    $("#b3").click(function() {

        $("#buno").css("display", "block");
        $("#b3").css("display", "none");

        valor1 = $('input:radio[name=respuesta1]:checked').val();

        if (valor1 == "Elementos importantes en una actividad constructiva") {
            alert("¿ Has elaborado una definción completa?\n¿ Se trata de una definición organizada?\n¿ Tiene una terminología correcta?");

        }
        else if (valor1 == "Crea una actividad contructiva, de forma breve") {
            alert("¿ Se trata de una actividad innovadora?\n¿ Se basa en los preceptos del constructivismo?\n¿ Es una actividad lo suficientemente clara?");

        }
        else if (valor1 == "¿ Cómo implementar en el aula una enseñanza constructiva?") {
            alert("¿ Has justificado tu respuesta?\n¿ Has prescindido de juicios de valor?\n¿ Abordas aspectos fundamentales?");

        }


    });
});



$(document).ready(function() {




    $("#buno").click(function() {


        if ($('input[name=respuesta1]').is(':checked')) {

            $("#empezar").css("display", "none");
            $("#alumno1").css("display", "none");
            $("#alumno2").css("display", "block");
            $("#caja1").css("display", "none");
            $("#caja2").css("display", "none");

            alert(" tu prodesor se pondra en contacto contigo");
            window.location = 'http://autovaloracionformativapersonalizada.com/';

            return true;
        }
        else {
            alert('debes elegir una opcion');
            return false;
        }


    });
});
/*
 $(document).ready(function() {
 $('input:radio[name=respuesta2]').click(function() {
 j1 = $("#t1").val();
 valor2 = $('input:radio[name=respuesta2]:checked').val();
 $("#texto2").text(valor2);
 $("#texto2").css("fontSize", "1.3em");
 $("#empezar").css("display", "none");
 $("#alumno1").css("display", "none");
 $("#alumno2").css("display", "none");
 $("#caja1").css("display", "none");
 $("#caja2").css("display", "block");
 
 
 });
 });
 
 $(document).ready(function() {
 
 
 
 
 $("#b4").click(function() {
 
 $("#b2").css("display", "block");
 $("#b4").css("display", "none");
 valor1 = $('input:radio[name=respuesta2]:checked').val();
 
 if(valor1 =="por alli"){
 alert("¿ Se trata de una idea original? ¿ Impactante? ¿ Atiende a los principios generales del cosntructuvismo?")
 }
 else if (valor1 =="por alla"){
 alert("respuesta2")
 }
 else if (valor1 =="o es por alla"){
 alert("respuesta3")
 }
 
 
 
 
 
 
 });
 });
 
 $(document).ready(function() {
 
 $("#b2").click(function() {
 
 
 if ($('input[name=respuesta2]').is(':checked')) {
 
 $("#empezar").css("display", "none");
 $("#alumno1").css("display", "none");
 $("#alumno2").css("display", "none");
 
 alert(" tu prodesor se pondra en contacto contigo");
 window.location = 'http://autovaloracionformativapersonalizada.com/';
 
 
 return true;
 }
 else {
 alert('debes elegir una opcion');
 return false;
 }
 
 
 });
 });*/

$(document).ready(function() {
    $('#buttipoRespElejida').click(function() {
        if ($("input:radio[name=tipoRespPregunta]").is(':checked')) {
            var tipoRespOfrecida = $("input:radio[name=tipoRespPregunta]:checked").attr('id');
            window.location = 'responderTipoResp.php?tipo=' + tipoRespOfrecida;
        } else {
            alert("selecciona tipo de respuesta");
        }
    });
});