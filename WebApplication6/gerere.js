function verificarPassword() {
    var password1 = document.getElementById("contraseña").value;
    var password2 = document.getElementById("confirmar_contraseña").value;

    if (password1 !== password2) {
        alert("contreseña escrito incorrectamente")
        return false;
    } else {
        alert("Contraseña correcta");
        // Redirigir automáticamente a Pagina_de_juego.aspx
        window.location.href = "Pagina_de_juego.aspx";
        return; // Devuelve false para evitar que el botón realice el postback
    }
}