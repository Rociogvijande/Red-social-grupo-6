// comprobacion de login
// Inicializamos las variables del tipo global
var nombreUsuario;
var contrasenaUsuario;
//pido por pantalla el usuario
nombreUsuario = prompt('Introduzca el usuario: '); 
// compruebo que el nombre del usuario es correcto o no
if (nombreUsuario === '' || nombreUsuario===null) {
    alert('Cancelado');
} else if (nombreUsuario==='Admin'){
    // si el nmbre de usuario es Admin pedimos contraseña
    contrasenaUsuario = prompt('Introduzca contraseña: ');
    if (contrasenaUsuario==='' || contrasenaUsuario===null){
        // si pulsamos enter o escape sacamos mensaje de Cancelado
        alert('"Cancelado"');
    } else if (contrasenaUsuario==='TheMaster') {
        // si la contraseña es TheMaster sacamos mensaje de Bienvenido
        alert('"Bienvenido"');
    } else {
        // la contraseña no es TheMaster sacamos mensaje de contraseña incorrecta 
        alert('"Contraseña Incorrecta"');
    }
// si el usuario no es Admin sale alerta de No te conozco
} else {
    alert('No te conozco');
}
