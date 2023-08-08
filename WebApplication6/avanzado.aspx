<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="avanzado.aspx.cs" Inherits="WebApplication6.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="avanzado2.css" rel="stylesheet" />
    <script>
        let preguntas = ["like.png", "sing.png", "play.png", "shine.png", "draw.png"];

        let correcta = [0, 1, 1, 0, 1];

        let opciones = [];
        opciones.push(["  eat", "  play", "  read"]);
        opciones.push(["  eats", "  sings", "  dances"]);
        opciones.push(["  run", "  play", "  sleeps"]);
        opciones.push(["  shine", "  swims", "  jumps "]);
        opciones.push(["  like", "  draw", "  eat"]);


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
            "Yo como helado.",
            "Ella canta canciones.",
            "Él juega con sus juguetes.",
            "El sol brilla en el cielo.",
            "Ellos dibujan bonito."
        ];

        let preguntasTexto = [
            "I ___ ice cream.",
            "She ___ songs.",
            "He ___ with his toys.",
            "The sun ___ in the sky.",
            "They ___ beautifull.",
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
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>ESCOGE LA RESPUESTA CORRECTA</h1>
        <div id ="pantalla-inicial">
            <p>DIVIERTE EN EL NIVEL DE AVANZADO</p>
            <asp:Button ID="comenzar_basico" runat="server" Text="COMIENZA A JUGAR" CssClass="btn" OnClientClick="comenzarJuego(); return false;" UseSubmitBehavior="false" />


        </div>
        <div class="pantalla-juego" id="pantalla-juego">
            <div id="preguntaActual">
                <span id="numeroPregunta">Question 1:</span>
                 <span id="enunciadoPregunta"></span>
                 <p id="preguntaEspanol"></p> <!-- Agrega la pregunta en español aquí -->
           </div>


            <img src="" id="imagenPregunta" />
                 <div class="opcion" id="0p0" onclick="comprobarRespuesta(0)">
                    <div class="letra " id="l0">A</div>
                        <div class="alternativa " id="n0">OPCION A</div>
                </div>
                <div class="opcion" id="0p1" onclick="comprobarRespuesta(1)">
                    <div class="letra" id="l1">B</div>
                    <div class="alternativa" id="n1">OPCION B</div>
                </div>
                <div class="opcion" id="0p2" onclick="comprobarRespuesta(2)">
                    <div class="letra" id="l2">C</div>
                    <div class="alternativa" id="n2">OPCION C</div>
                </div>
        </div>
        <div id="pantalla-final">
            <h2>CORRECTAS:<span id="numCorrectas"></span></h2>
            <h2>INCORRECTAS:<span id="numIncorrectas"></span></h2>
              <asp:Button ID="Button2" runat="server" Text="VOLVER AL INICIO" Cssclass="btn"  OnClientClick="volverAlInicio()" />
        </div>
        <footer>Desarrollado por los estudiantes de la EPCC</footer>
        <asp:HiddenField ID="hdnPuntajeBasico" runat="server" />
    </form>
</body>
</html>
