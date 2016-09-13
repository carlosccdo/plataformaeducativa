/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//panel Admin Viki

var tema = "";
var idTemaNuevo = 0;
var idexamen= 0;

//Cuando elije tema

$(document).ready(function() {
    $('body').on('click', '.butElejirTema', function() {
//        $("#divSliderNegro").css('display', 'none');
        idTemaNuevo = $(this).attr('id');
       $.ajax({
                type: "POST",
                url: "visualizarExamenesDisponibles.php",
                data: {idTemaNuevo: idTemaNuevo}
            }).done(function(msg){
                $("#opcionesDeTema").html(msg);
                 $(".escondido").css('display', 'none');
                 $("#opcionesDeTema").fadeIn();
               
                 
            });

    });
});
//cuando elige un examen

$(document).ready(function() {
    $('body').on('click', '.butElejirExamen', function() {
//        $("#divSliderNegro").css('display', 'none');
        idexamen = $(this).attr('id');
        $(".escondido").css('display', 'none');
//        $("#numPreguntas").fadeIn();
        $("#opcionesDeExamenes").fadeIn();

    });
});

//visualizar examen 

$(document).ready(function() {
    $("#butVisualizarExamenesEchosAdmin").click(function() {
//        alert(idexamen);
//        alert(idTemaNuevo);
        $.ajax({
                type: "POST",
                url: "visualiExamenNuevo.php",
                data: {idTemaNuevo: idTemaNuevo,idexamen:idexamen}
            }).done(function(msg){
                $("#visualizarExamenNuevoCompleto").html(msg);
                 $(".escondido").css('display', 'none');
                 $("#visualizarExamenNuevoCompleto").fadeIn();
            });
            
        
           });
});
//para seleccionar el profe enviar el examen a profesor desde el panel de visualizar o mndar examen esta funcion se comparte con la linea 332
$(document).ready(function() {
    $("#butMandarVisualizarExamenesEchosAdmin").click(function() {
    
        var idExamenEniar = idexamen;
        alert(idexamen);
        $.ajax({
            type: "POST",
            url: "VisualizarProfes.php",
            data: {
                ididExamenEniar: idExamenEniar
            }
        }).done(function(msg) {
            $(".escondido").css('display', 'none');
            $("#visualizarProfes").html(msg).slideDown();
        });
    });
});
    
//Boton crea tema
$(document).ready(function() {
    $("#butCrearTema").click(function() {
        $(".escondido").css('display', 'none');
        $("#divSliderNegro").css('display', 'none');
        $("#temaNuevo").fadeIn(2000);
        
    });
});

//cuando escribe el titulo de un tema nuevo 
$(document).ready(function() {
    $("#butTitTemaNuevo").click(function() {
        var temaNueva = $("#titTemaNuevo").val();
        if (temaNueva != ""){
            $.ajax({
                type: "POST",
                url: "crearTemaNuevo.php",
                data: {temaNuevo: temaNueva}
            }).done(function(msg){
                if (parseInt(msg)===0) {
                    alert("el tema existe");
                    idTemaNuevo = 0;
                } else {
                    idTemaNuevo = msg;
                    $(".escondido").css('display', 'none');
//                    $("#numPreguntas").fadeIn(2000);
                    alert("el tema se ha creado correctamente");
                    idTemaNuevo = 0;
                    alert(idTemaNuevo);
                }
            });
        } else {
            alert("escribe un Tema Nuevo");
            idTemaNuevo = 0;
        }
    });
});
//crear un examen nuevo
$(document).ready(function() {
    $('body').on('click', '#crearExamen', function() {
        $(".escondido").css('display', 'none');
        $("#divSliderNegro").css('display', 'none');
        $("#numPreguntas").fadeIn(2000);
        
        
    });
});



// Cuando  escribe el titulo y numero de preguntas del examen nuevo 
var numPregExamen;
var numTiposResp;
var idExamenNuevo = 0;
var idExamenHecho = 0;
$(document).ready(function() {
    $("#butNumPregYtipoResp").click(function() {
        var titExamNuevo = $("#titExamNuevo").val();
        numPregExamen = $("#numPregNuevoExam").val();
        numTiposResp = $("#numRespNuevoExam").val();
        if (isNaN(numPregExamen) || isNaN(numTiposResp) || titExamNuevo === "") {
            if (titExamNuevo === "") {
                alert("no has puesto titulo del examen");
            } else if (isNaN(numPregExamen)) {
                alert("no has elejido cuantas preguntas habra en el examen");
            } else {
                alert("no has elejido cuantos tipos de respuesta habra en el examen");
            }
            idExamenNuevo = 0;
        } else {
            $.ajax({
                type: "POST",
                url: "crearExamenNuevo.php",
                data: {examenNuevo: titExamNuevo,idTemaNuevo:idTemaNuevo}
            }).done(function(msg) {
                idExamenNuevo = msg;
                if (isNaN(idExamenNuevo) || idExamenNuevo === 0) {
                    alert("el Titulo Existe");
                    idExamenNuevo = 0;
                } else {
                    $(".escondido").css('display', 'none');
                    $("#pEscribePregunta").html("Escribe pregunta 1 :");
                    $("#formEleccionExamen").fadeIn(2000);
                    
                }
            });
        }
    });
});  

//cuando crea una pregunta nueva
var contadorRecursos = 0;
var idPreguntaNueva = 0;
var contadorPreg = 0;
$(document).ready(function() {
    $("#butPregNueva").click(function() {
        if (contadorPreg < numPregExamen) {
            var preguntaNueva = $("#preguntaNueva").val();
            idPreguntaNueva = 0;
            if (preguntaNueva === "" || idTemaNuevo === 0 || idExamenNuevo === 0) {
                alert("pon Pregunta");
            } else {
                $("#preguntaNueva").val("");
                $.ajax({
                    type: "POST",
                    url: "crearPregunta.php",
                    data: {
                        pregunta: preguntaNueva,
                        idTema: idTemaNuevo,
                        idExamen: idExamenNuevo}
                }).done(function(msg) {
                    if (msg === "no") {
                        alert("esa pregunta existe");
                    } else {
                        $("#pregVisible").html(preguntaNueva);
                        $(".escondido").css('display', 'none');
                        $("#pDenominacionRecursoNuevo").html(" denominacion recurso" + parseInt(contadorRecursos + 1) + " :");
                        $("#recursoNuevo").fadeIn(2000);
                        $("#recursosSubidos").slideDown();
                        idPreguntaNueva = msg;
                        contadorPreg++;
                    }
                });
            }
        } else {
            $(".escondido").css('display', 'none');
            $("#visualizarExamenNuevo").fadeIn();
            contadorPreg = 0;
            idExamenHecho = idExamenNuevo;
            idExamenNuevo = 0;
        }
    });
});

//cuando escribe recursos

$(document).ready(function() {
    $("#butPreguntaYRecursos").click(function() {
        // $("#recursosSubidos").html("");
//        var file = $("#file").val();
        var nombreRecurso = $("#nomRecursoNuevo").val();
        var areatextoPregNueva = $("#areatextoPregNueva").val();
        var areatextoFeedNuevo = $("#areatextoFeedNuevo").val();
        //  $("#recursosSubidos").slideDown();
        if (contadorRecursos < numTiposResp) {
            if (nombreRecurso === "" || areatextoFeedNuevo === "" || (areatextoPregNueva === "" && $("#recursosSubidos").html() === "")) {
                alert("rellena los campos");
            } else {

                //    $("#pDenominacionRecursoNuevo").html(" denominacion recurso" + parseInt(contadorRecursos + 1) + " :");
                $.ajax({
                    type: "POST",
                    url: "crearrecursoPreg.php",
                    data: {
                        idpreg: idPreguntaNueva,
                        nombreRec: nombreRecurso,
                        areatexto: areatextoPregNueva,
                        areafeed: areatextoFeedNuevo
                    }
                }).done(function(msg) {
                    contadorRecursos++;
                    if (msg === "no") {
                        alert("el  nombre de recurso ya lo has utilizado");
                        contadorRecursos--;
                    } else if (contadorRecursos < numTiposResp) {
                        $("#pDenominacionRecursoNuevo").html(" denominacion recurso" + parseInt(contadorRecursos + 1) + " :");
                        $("#nomRecursoNuevo").val("");
                        $("#areatextoPregNueva").val("");
                        $("#areatextoFeedNuevo").val("");
                        $("#recursosSubidos").html("");
                        //   $("#recursosSubidos").slideDown();

                    } else if (numPregExamen <= contadorPreg) {
                        alert("examen terminado");
                        $(".escondido").css('display', 'none');
                        $("#visualizarExamenNuevo").fadeIn();
                        idExamenHecho = idExamenNuevo;
                        idExamenNuevo = 0;
                        contadorRecursos = 0;
                    } else if (contadorRecursos >= numTiposResp) {
                        $(".escondido").css('display', 'none');
                        $("#nomRecursoNuevo").val("");
                        $("#areatextoPregNueva").val("");
                        $("#areatextoFeedNuevo").val("");
                        contadorRecursos = 0;
                        $("#pregVisible").html("");
                        $("#pEscribePregunta").html("Escribe pregunta " + parseInt(contadorPreg + 1) + " :");
                        $("#formEleccionExamen").fadeIn();
                        $("#recursosSubidos").html("");
                        $("#preguntaNueva").val("");
                    } else {
                        alert("err");
                        contadorRecursos--;
                    }
                });
            }
        } else {
            alert("error");
        }
    });
});

//cuando sube recursos a las preguntas
$(document).ready(function() {
    $('body').on('click', '#subirRec', function() {
        
        //   $("#formFile").html(" Sube recursos:<br> <input type='file' id='file' name='file' /><input type='submit' id='subirRec' value='Upload!' />   <input type='submit' id='subirRec' value='Upload!' />");
        //  $("#divFile").html("<input type='file' id='file'  />");
        $("#subirRec").fadeOut();
        $.ajax({
            type: "POST",
            url: "recursosSubidos.php"
        }).done(function(msg) {
            if (msg === "") {
                msg = "Archivo NO valido";
            }
            document.getElementById("formFile").reset();
            document.getElementById("file").value = "";
            $("#recursosSubidos").append(msg);   

        });
        $("#subirRec").fadeIn();
         
        
    });
});

//cuando termin el examen y lo visualiza
$(document).ready(function() {
    $("#butVisualizarexamenNuevo").click(function() {
        if (idExamenHecho === 0) {
            alert("error");
        } else {
            $.ajax({
                type: "POST",
                url: "VisualizarExamenNuevo.php",
                data: {idExamen: idExamenHecho,
                    idTema: idTemaNuevo
                }
            }).done(function(msg) {
                $("#visualizarExamenNuevoCompleto").html(msg);
                $(".escondido").css('display', 'none');
                $("#visualizarExamenNuevoCompleto").slideDown();
            });
        }
    });
});

//para seleccionar el profe enviar el examen a profesor
$(document).ready(function() {
    $('body').on('click', '.enviarExamenProfe', function() {
        var idExamenEniar = $(this).attr('id');
        alert(idExamenEniar);
        $.ajax({
            type: "POST",
            url: "VisualizarProfes.php",
            data: {
                ididExamenEniar: idExamenEniar
            }
        }).done(function(msg) {
            $(".escondido").css('display', 'none');
            $("#visualizarProfes").html(msg).slideDown();
        });
    });
});

//para enviar el examen a los profes seleccionados

$(document).ready(function() {
    $('body').on('click', '.enviarAProfe', function() {
        var i = 0;
        var idexamenParaMandar = $(this).attr('id');
        var matrizProfe = new Array();
        $(".checkboxProfe").each(function() {
// Si la casilla actual estÃ¡ marcada
// obtenemos su "id" y la almacenamos 
// en la matriz "matrizCV"   
            if ($(this).prop('checked')) {

// Alacenamos por orden en 
// la matriz cada id marcado
                matrizProfe [i] = $(this).attr('id');
                alert(matrizProfe [i]);
                i++;
            }
        });
        $.ajax({
            type: "POST",
            url: "EnviarExamenProfe.php",
            data: {
                idProfes: matrizProfe,
                idExamenEnviado: idexamenParaMandar
            }
        }).done(function() {
            alert("Examen Enviado");
            $(".escondido").css('display', 'none');
        });

    });

});
//para modificar el examen visualizado
$(document).ready(function() {
 $('body').on('dblclick', '.claseVisualizarTipoPropuesta', function() {
 var idCambio=$(this).attr('id');
 var valor=$(this).html();
 alert(valor);
 $(this).html("<input type='text' id='"+idCambio+"' value='"+valor+"'>"); 

 //$("#visualizarExamenNuevoCompleto").html();
 });
 });
 
 $(document).ready(function() {
 $('body').on('dblclick', '.claseVisualizarPregunta', function() {
 var idCambio=$(this).attr('id');
 var valor=$(this).html();
 alert(valor);
 $(this).html("<input type='text' id='"+idCambio+"' value='"+valor+"'>"); 

 //$("#visualizarExamenNuevoCompleto").html();
 });
 });
 
 /*$(document).ready(function() {
 $('body').on('click', '#modificarExamen', function() {
 alert("ok");
 });
 });
 */
//fin Panel Admin
  
  
  //inicio de slider 
   
 
$(document).ready(function() {
    $('.banner').unslider({
	speed: 500,               //  The speed to animate each slide (in milliseconds)
	delay: 3000,              //  The delay between slide animations (in milliseconds)
	complete: function() {},  //  A function that gets called after every slide animation
	keys: true,               //  Enable keyboard (left, right) arrow shortcuts
	
	fluid: false              //  Support responsive design. May break non-responsive designs
});
    });
    $(document).ready(function() {
     var unslider = $('.banner').unslider();
    
    $('.unslider-arrow').click(function() {
        var fn = this.className.split(' ')[1];
        
        //  Either do unslider.data('unslider').next() or .prev() depending on the className
        unslider.data('unslider')[fn]();
    });
     });
             
      
    //fin de slider
    
    
    
    
    
    
    
    
 








    
    
