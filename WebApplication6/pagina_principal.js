function verificarPassword() {
    var password = document.getElementById('contraseña').value;
    var password2 = document.getElementById('confirmar_contraseña').value;
    if (password === password2) {
        alert('Registro exitoso :D');
    } else {
        alert('Las contraseñas no coinciden, escribe bien >:(');
    }
}