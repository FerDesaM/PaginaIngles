let preguntas = ["imagen10.jpg", "imagen2.jpg", "imagen3.jpg", "imagen4.jpg", "imagen5.jpg"];

let correcta = [0, 1, 1, 0, 2];

let opciones = [];
opciones.push(["  like ( gusta)", "  play (juego)", "  read (leo)"]);
opciones.push(["  eats (come)", "  sings (canta)", "  dances (baila)"]);
opciones.push(["  runs (corre)", "  plays (juega)", "  sleeps (duerme)"]);
opciones.push(["  shines (brilla)", "  swims (nada)", "  jumps (salta)"]);
opciones.push(["  like (les gusta)", "  draw (dibujan)", "  eat (comen)"]);


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
    "Me ___ helado.",
    "Ella ___ canciones.",
    "Él ___ con sus juguetes.",
    "El sol ___ en el cielo.",
    "Ellos ___ manzanas."
];

let preguntasTexto = [
    "I ___ ice cream.",
    "She ___ songs.",
    "He ___ with his toys.",
    "The sun ___ in the sky.",
    "They ___ apples.",
];

function cargarPregunta() {
    if (preguntas.length <= posActual) {
        terminarJuego();
    } else {
        limpiarOpciones();
        document.getElementById("imagenPregunta").src = "imag_avanzado/" + preguntas[posActual];
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
    document.getElementById("hdnPuntajeBasico").value = puntajeCorrectas;
}
