
// Inicialiciamos variables de tipo global.
var usuario;
var apellido;
var fechaNacimiento;
var cursosRealizados;
var anoNacimiento;

// introduccion de datos usuario

usuario = prompt('Introduzca su Nombre: ');
apellido = prompt('Introduzca su Apellido: ');
fechaNacimiento = prompt('Introduzca su Fecha Nacimineto: ');
cursosRealizados = prompt('Introduzca el numeoro de cursos realizadoso: ');

// Pasamos el formato estring de fechaNacimiento a formato tipo fecha con dd-mm-yyyy

fechaNacimiento = new.Date(fechaNacimiento);

//comprobamos si el año de fechaNacimiento es menor del año 2000

if getFullYear(fechaNacimiento) < 2000 {
    alert('Estas seguro que eres un programador Junior?');
}