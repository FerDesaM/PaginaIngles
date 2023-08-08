let preguntas = ["imagen10.jpg", "imagen2.jpg", "imagen3.jpg", "imagen4.jpg", "imagen5.jpg"];

let correcta = [1, 2, 1, 0, 1];

let opciones = [];
opciones.push([" Blue (Azul)1112", " Red (Rojo)", " Green (Verde)"]);
opciones.push([" Two (Dos)", " Four (Cuatro)", " Six (Seis)"]);
opciones.push([" Dog (Perro)", " Cow (Vaca)", " Cat (Gato)"]);
opciones.push([" Moon (Luna)", " Earth (Tierra)", " Mars (Marte)"]);
opciones.push([" Apple (Manzana)", " Banana (Plátano)", " Orange (Naranja)"]);

let posActual = 0;
let cantidadAcertadas = 0;
let puedeResponder = true; // Variable para controlar si el usuario puede responder

function comenzarJuego() {
    posActual = 0;
    cantidadAcertadas = 0;
    document.getElementById("pantalla-inicial").style.display = "none";
    document.getElementById("pantalla-juego").style.display = "block";
    cargarPregunta();
}

let preguntasEspanol = [
    "¿De qué color es el cielo?",
    "¿Cuántas patas tiene un gato?",
    "¿Qué animal dice mu?",
    "¿Cuál es el nombre del planeta en el que vivimos?",
    "¿Qué fruta es amarilla y tiene forma curva?"
];

let preguntasTexto = [
    "What color is sky?",
    "How many legs does a cat have?",
    "Which animal says moo?",
    "What is the name of the planet we live on?",
    "Which fruit is yellow and has a curved shape?",
];

function cargarPregunta() {
    if (preguntas.length <= posActual) {
        terminarJuego();
    } else {
        limpiarOpciones();
        document.getElementById("imagenPregunta").src = "img/" + preguntas[posActual];
        document.getElementById("n0").innerHTML = opciones[posActual][0];
        document.getElementById("n1").innerHTML = opciones[posActual][1];
        document.getElementById("n2").innerHTML = opciones[posActual][2];
        puedeResponder = true; // Habilitar respuestas para la nueva pregunta

        // Mostrar la pregunta actual en inglés
        document.getElementById("numeroPregunta").innerText = "Question " + (posActual + 1) + ":";
        document.getElementById("enunciadoPregunta").innerText = preguntasTexto[posActual];

        // Mostrar la pregunta actual en español
        document.getElementById("preguntaEspanol").innerText = preguntasEspanol[posActual];
    }
}


    function limpiarOpciones() {
        document.getElementById("n0").className = "alternativa";
        document.getElementById("n1").className = "alternativa";
        document.getElementById("n2").className = "alternativa";

        document.getElementById("l0").className = "letra";
        document.getElementById("l1").className = "letra";
        document.getElementById("l2").className = "letra";
    }

    function comprobarRespuesta(opElegida) {
        if (puedeResponder) {
            puedeResponder = false; // Bloquear nuevas respuestas hasta la siguiente pregunta

            if (opElegida == correcta[posActual]) {
                document.getElementById("n" + opElegida).className = "alternativa alternativaAcertada";
                document.getElementById("l" + opElegida).className = "letra letraAcertada";
                cantidadAcertadas++;
                puntajeCorrectas = cantidadAcertadas;
            } else {
                document.getElementById("n" + opElegida).className = "alternativa alternativaNoAcertada";
                document.getElementById("l" + opElegida).className = "letra letraNoAcertada";
                document.getElementById("n" + correcta[posActual]).className = "alternativa alternativaAcertada";
                document.getElementById("l" + correcta[posActual]).className = "letra letraAcertada";
            }
            posActual++;
            setTimeout(cargarPregunta, 1000);
        }
    }

    function terminarJuego() {
        document.getElementById("pantalla-juego").style.display = "none";
        document.getElementById("pantalla-final").style.display = "block";
        document.getElementById("numCorrectas").innerHTML = cantidadAcertadas;
        document.getElementById("numIncorrectas").innerHTML = preguntas.length - cantidadAcertadas;
        document.getElementById("preguntaActual").style.display = "none"; // Ocultar pregunta actual en la pantalla final
        sessionStorage.setItem("puntajeCorrectas", puntajeCorrectas);
        document.getElementById("hdnPuntajeBasico").value = puntajeCorrectas;
        
} 