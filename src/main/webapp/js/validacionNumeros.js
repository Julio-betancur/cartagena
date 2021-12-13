let cedula = document.getElementById("cedula");
let celular = document.getElementById("celular");

cedula.addEventListener("keyup",validarCedula);
celular.addEventListener("keyup",validarCelular);

function validarCedula(evento) {
    let keyCode = evento.keyCode;
    let texto = cedula.value;
    console.log(keyCode);
    //console.log(texto);
    if((keyCode < 96 || keyCode > 105) && keyCode !== 8){
        texto = texto.substring(0,texto.length-1);
    }
    cedula.value = texto;
}


function validarCelular(evento) {
    let keyCode = evento.keyCode;
    let texto = celular.value;
    console.log(keyCode);
    //console.log(texto);
    if((keyCode < 96 || keyCode > 105) && keyCode !== 8){
        texto = texto.substring(0,texto.length-1);
    }
    celular.value = texto;
}