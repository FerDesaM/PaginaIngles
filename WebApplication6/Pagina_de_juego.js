function esconderBoton() {
    document.getElementById("Escoger_nivel").style.display = "none"; // Ocultar la sección de registro
    document.getElementById("botones").style.display = "block"; // Ocultar la sección de registro
    return false;

}
function volver() {
    document.getElementById("Escoger_nivel").style.display = "block"; // Ocultar la sección de registro
    document.getElementById("botones").style.display = "none"; // Ocultar la sección de registro
    return false;

}

function basico() {
       window.location.href = "basico1.aspx";
       return false; // Devuelve false para evitar que el botón realice el postback
}
function intermedio() {
    window.location.href = "intermedio.aspx";
    return false; // Devuelve false para evitar que el botón realice el postback
}
function avanzado() {
    window.location.href = "avanzado.aspx";
    return false; // Devuelve false para evitar que el botón realice el postback
}