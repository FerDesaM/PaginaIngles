<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basico1.aspx.cs" Inherits="WebApplication6.basico1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="basico1a.css" rel="stylesheet" />
    <script>
        let preguntas = ["sky.png", "cat.png", "cow.png", "earth.png", "monkey.png"];

        let correcta = [1, 2, 1, 0, 1];

        let opciones = [];
        opciones.push([" Two (Doswewewewe)", " Four (Cuatro)", " Six (Seis)"]);
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
            "Ella es LOLA; ¿Qúe animal es Lola?",
            "¿Cuál es el nombre del planeta en el que vivimos?",
            "¿Qué fruta esta comiendo el mono Jorge?"
        ];

        let preguntasTexto = [
            "What color is sky?",
            "How many legs does a cat have?",
            "Ella es Lola; What animal is Lola?",
            "What is the name of the planet we live on?",
            "What fruit is eat the money George?",
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
            document.getElementById("hdnPuntajeBasico").value = puntajeCorrectas;
        }



        function volverAlInicio() {
           
            window.location.href = "PAGINA_PRINCIPAL.aspx";
            return false;
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
     <form id="form1" runat="server">
        <h1>ESCOGE LA RESPUESTA CORRECTA</h1>
        <div id ="pantalla-inicial">
            <p>DIVIERTE EN EL NIVEL DE BASICO 1</p>
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
            <h2>CORRECTAS:<span id="numCorrectas">3</span></h2>
            <h2>INCORRECTAS:<span id="numIncorrectas">2</span></h2>
              <asp:Button ID="Button2" runat="server" Text="VOLVER AL INICIO" Cssclass="btn" OnClick="GuardarPuntaje_Click" OnClientClick="volverAlInicio()" />
        </div>
        <footer>Desarrollado por los estudiantes de la EPCC</footer>
         <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
         <asp:HiddenField ID="hdnPuntajeBasico" runat="server" />
    </form>
</body>
</html>
